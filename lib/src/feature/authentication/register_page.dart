import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:dealermaster/src/common/constant/constants.dart';
import 'package:dealermaster/src/common/constant/enums.dart';
import 'package:dealermaster/src/common/utils/app_size_utils.dart';
import 'package:dealermaster/src/common/utils/helpers/validators.dart';
import 'package:dealermaster/src/common/widget/buttons/custom_elevated_button.dart';
import 'package:dealermaster/src/common/widget/buttons/custom_text_button.dart';
import 'package:dealermaster/src/common/widget/core/custom_scaffold.dart';
import 'package:dealermaster/src/common/widget/custom_widgets/border_with_title_container.dart';
import 'package:dealermaster/src/common/widget/custom_widgets/toast_message.dart';
import 'package:dealermaster/src/common/widget/indicator/laoding_indicator.dart';
import 'package:dealermaster/src/common/widget/input_fields/input_field.dart';
import 'package:dealermaster/src/common/widget/responsive/responsive_layout.dart';
import 'package:dealermaster/src/common/widget/size/custom_size_widget.dart';
import 'package:dealermaster/src/common/widget/texts/header_text_widget.dart';
import 'package:dealermaster/src/feature/authentication/bloc/auth_provider.dart';
import 'package:dealermaster/src/feature/splash/splash_page.dart';
import 'package:dealermaster/src/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  TextEditingController repasswordController = TextEditingController();

  GlobalKey<FormState> regfromKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return CustomScaffold(
        body: Form(
      key: regfromKey,
      child: ResponsiveLayout(
        mobile: Container(),
        desktopAndWeb: desktopRegisterPage(),
      ),
    ));
  }

  //=================desktop Register Page ========================
  Widget desktopRegisterPage() {
    return SizedBox(
      height: SizeConfig.screenHeight,
      width: SizeConfig.screenWidth,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const HeightWidget(100),
            Container(
              width: width(150),
              padding: const EdgeInsets.symmetric(horizontal: kDefaultmargin),
              alignment: Alignment.center,
              child: BorderWthTitleContainer(
                  istitle: false,
                  bordercolor: kPrimaryColor,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPadding,
                        vertical: kDefaultPadding * 2),
                    child: Column(
                      children: [
                        const AppLogo(
                          h: 120,
                          w: 55,
                        ),
                        const HeaderTextWidget(
                            text: "authentication.reg_title"),
                        const HeightWidget(5),
                        InputField(
                          textInputType: TextInputType.text,
                          icon: FontAwesomeIcons.user,
                          controller: nameController,
                          hintText: "authentication.fullname",
                          validator: (value) =>
                              Validators.isEmpty(string: value),
                        ),
                        InputField(
                          textInputType: TextInputType.emailAddress,
                          icon: FontAwesomeIcons.envelope,
                          controller: emailController,
                          hintText: "authentication.email",
                          validator: (value) =>
                              Validators.isEmail(string: value),
                        ),
                        InputField(
                          controller: passwordController,
                          obscureText: true,
                          icon: FontAwesomeIcons.lock,
                          hintText: "authentication.password",
                          validator: (value) =>
                              Validators.validatePassword(string: value!),
                        ),
                        InputField(
                          controller: repasswordController,
                          obscureText: true,
                          icon: FontAwesomeIcons.lock,
                          hintText: "authentication.repassword",
                          validator: (value) => Validators.confirmPassword(
                              cPassword: value!,
                              password: passwordController.text),
                        ),
                        const HeightWidget(15),
                        Consumer(
                          builder: (BuildContext context, WidgetRef ref,
                              Widget? child) {
                            final auth = ref.watch(authProvider);
                            return auth.isloginSubmissionProgress
                                ? Column(
                                    children: const [
                                      LoadingIndicator(
                                        text: "authentication.reg_loading",
                                      ),
                                      HeightWidget(10),
                                    ],
                                  )
                                : CustomElevatedButton(
                                    backgroundColor: kRedColor,
                                    label: "authentication.register",
                                    onPressed: () async {
                                      if (regfromKey.currentState!.validate()) {
                                        final val = await auth.registerFarmer(
                                            emailController.text,
                                            passwordController.text,
                                            repasswordController.text,
                                            nameController.text);
                                        if (val == null) {
                                          context.router.replace(
                                              CompanyDetailRegisterPageRoute(
                                                  userType: UserType.admin));
                                        } else {
                                          toastMessage(context, message: val);
                                        }
                                      }
                                    });
                          },
                        ),
                        CustomTextButton(
                          label: "authentication.alreadyaccount",
                          onPressed: () {
                            context.router.replace(const LoginPageRoute());
                          },
                          textColor: kPrimaryColor,
                        )
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
