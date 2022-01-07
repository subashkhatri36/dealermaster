import 'package:dealermaster/src/common/constant/constants.dart';
import 'package:dealermaster/src/common/utils/app_size_utils.dart';
import 'package:dealermaster/src/common/utils/helpers/validators.dart';
import 'package:dealermaster/src/common/widget/buttons/custom_elevated_button.dart';
import 'package:dealermaster/src/common/widget/core/custom_scaffold.dart';
import 'package:dealermaster/src/common/widget/custom_widgets/border_with_title_container.dart';
import 'package:dealermaster/src/common/widget/custom_widgets/toast_message.dart';
import 'package:dealermaster/src/common/widget/indicator/laoding_indicator.dart';
import 'package:dealermaster/src/common/widget/input_fields/input_field.dart';
import 'package:dealermaster/src/common/widget/responsive/responsive_layout.dart';
import 'package:dealermaster/src/common/widget/size/custom_size_widget.dart';
import 'package:dealermaster/src/common/widget/texts/header_text_widget.dart';
import 'package:dealermaster/src/common/widget/texts/normal_text.dart';
import 'package:dealermaster/src/feature/authentication/bloc/auth_provider.dart';
import 'package:dealermaster/src/feature/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> logfromKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        body: Form(
      key: logfromKey,
      child: ResponsiveLayout(
        mobile: Container(),
        desktopAndWeb: desktopWidget(),
      ),
    ));
  }

  //==============mobile widget==========================
  Widget mobileWidget() {
    return SafeArea(
      child: SizedBox(
        width: SizeConfig.screenWidth,
        height: SizeConfig.screenHeight,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const HeightWidget(30),
              const AppLogo(w: 200, h: 250),
              const CustomTextWidget(
                text: "authentication.login_title",
                isbold: true,
              ),

              Padding(
                padding: const EdgeInsets.all(kDefaultPadding),
                child: Column(
                  children: [
                    InputField(
                      textInputType: TextInputType.emailAddress,
                      icon: FontAwesomeIcons.envelope,
                      controller: emailController,
                      hintText: "authentication.email",
                      validator: (value) => Validators.isEmail(string: value),
                    ),
                    InputField(
                      controller: passwordController,
                      obscureText: true,
                      icon: FontAwesomeIcons.lock,
                      hintText: "authentication.password",
                      validator: (value) =>
                          Validators.validatePassword(string: value!),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.only(right: kDefaultPadding),
                child: const InkWell(
                  child: CustomTextWidget(
                    text: "authentication.forgetpassword",
                    isFirstcaptial: false,
                    textColor: kBlue,
                  ),
                ),
              ),
              const HeightWidget(30),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  children: [
                    Consumer(
                      builder:
                          (BuildContext context, WidgetRef ref, Widget? child) {
                        final auth = ref.watch(authProvider);
                        return auth.isloginSubmissionProgress
                            ? Column(
                                children: const [
                                  LoadingIndicator(
                                    text: "authentication.log_loading",
                                  ),
                                  HeightWidget(10),
                                ],
                              )
                            : CustomElevatedButton(
                                backgroundColor: kGreenColor,
                                label: "authentication.login",
                                onPressed: () async {
                                  if (logfromKey.currentState!.validate()) {
                                    final val = await auth.loginFarmer(
                                        emailController.text,
                                        passwordController.text);
                                    if (val.contains("ok")) {
                                      // context.router
                                      //     .replace(NavBarPageRoute());
                                    } else if (val == "assign") {
                                      // context.router.replace(
                                      //     const CompanyPageRoute());
                                    } else {
                                      toastMessage(context, message: val);
                                    }
                                  }
                                });
                      },
                    ),
                    CustomElevatedButton(
                      label: "authentication.createnewuser",
                      onPressed: () {
                        // context.router.replace(const RegisterPageRoute());
                      },
                      backgroundColor: kRedColor,
                    ),
                  ],
                ),
              )

              // const HeightWidget(15),
            ],
          ),
        ),
      ),
    );
  }

  //==========desktop widget==================
  // TODO:lanugae
  Widget desktopWidget() {
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
              // height: height(650),
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
                        const HeaderTextWidget(text: "authentication.login"),
                        const HeightWidget(5),
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
                          ispadding: false,
                        ),
                        const HeightWidget(10),
                        Container(
                          alignment: Alignment.centerRight,
                          // padding: const EdgeInsets.only(right: kDefaultPadding),
                          child: const InkWell(
                            child: CustomTextWidget(
                              text: "authentication.forgetpassword",
                              isFirstcaptial: false,
                              textColor: kBlue,
                            ),
                          ),
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
                                        text: "authentication.log_loading",
                                      ),
                                      HeightWidget(5),
                                    ],
                                  )
                                : CustomElevatedButton(
                                    backgroundColor: kGreenColor,
                                    label: "authentication.login",
                                    onPressed: () async {
                                      if (logfromKey.currentState!.validate()) {
                                        final val = await auth.loginFarmer(
                                            emailController.text,
                                            passwordController.text);
                                        if (val.contains("ok")) {
                                          // context.router
                                          //     .replace(NavBarPageRoute());
                                        } else if (val == "assign") {
                                          // context.router.replace(
                                          //     const CompanyPageRoute());
                                        } else {
                                          toastMessage(context, message: val);
                                        }
                                      }
                                    });
                          },
                        ),
                        CustomElevatedButton(
                          ismargin: false,
                          label: "authentication.createnewuser",
                          onPressed: () {
                            // context.router.replace(const RegisterPageRoute());
                          },
                          backgroundColor: kRedColor,
                        ),
                      ],
                    ),
                  )),
              // child: Card(child: Container()
              // Column(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   crossAxisAlignment: CrossAxisAlignment.center,
              //   children: [

              //     Padding(
              //       padding: const EdgeInsets.all(kDefaultPadding),
              //       child: Column(
              //         children: [
              //
              //         ],
              //       ),
              //     ),
              //     Container(
              //       alignment: Alignment.centerRight,
              //       padding: const EdgeInsets.only(right: kDefaultPadding),
              //       child: const InkWell(
              //         child: CustomTextWidget(
              //           text: "authentication.forgetpassword",
              //           isFirstcaptial: false,
              //           textColor: kBlue,
              //         ),
              //       ),
              //     ),
              //     const HeightWidget(30),
              //     Padding(
              //       padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              //       child: Column(
              //         children: [
              //           Consumer(
              //             builder:
              //                 (BuildContext context, WidgetRef ref, Widget? child) {
              //               final auth = ref.watch(authProvider);
              //               return auth.isloginSubmissionProgress
              //                   ? Column(
              //                       children: const [
              //                         LoadingIndicator(
              //                           text: "authentication.log_loading",
              //                         ),
              //                         HeightWidget(10),
              //                       ],
              //                     )
              //                   : CustomElevatedButton(
              //                       backgroundColor: kGreenColor,
              //                       label: "authentication.login",
              //                       onPressed: () async {
              //                         if (logfromKey.currentState!.validate()) {
              //                           final val = await auth.loginFarmer(
              //                               emailController.text,
              //                               passwordController.text);
              //                           if (val.contains("ok")) {
              //                             // context.router
              //                             //     .replace(NavBarPageRoute());
              //                           } else if (val == "assign") {
              //                             // context.router.replace(
              //                             //     const CompanyPageRoute());
              //                           } else {
              //                             toastMessage(context, message: val);
              //                           }
              //                         }
              //                       });
              //             },
              //           ),
              //           CustomElevatedButton(
              //             label: "authentication.createnewuser",
              //             onPressed: () {
              //               // context.router.replace(const RegisterPageRoute());
              //             },
              //             backgroundColor: kRedColor,
              //           ),
              //         ],
              //       ),
              //     )

              //     // const HeightWidget(15),
              //   ],
              // ),
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
