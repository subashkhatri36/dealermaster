import 'package:dealermaster/src/common/constant/asset_image_link.dart';
import 'package:dealermaster/src/common/constant/constants.dart';
import 'package:dealermaster/src/common/constant/db_field.dart';
import 'package:dealermaster/src/common/utils/app_size_utils.dart';
import 'package:dealermaster/src/common/widget/buttons/custom_elevated_button.dart';
import 'package:dealermaster/src/common/widget/size/custom_size_widget.dart';
import 'package:dealermaster/src/common/widget/texts/normal_text.dart';
import 'package:dealermaster/src/core/service/shared_pref_provider.dart';
import 'package:dealermaster/src/feature/authentication/bloc/auth_session.dart';
import 'package:dealermaster/src/feature/authentication/login_page.dart';
import 'package:dealermaster/src/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class AuthenticatedWidget extends StatefulWidget {
  const AuthenticatedWidget({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  State<AuthenticatedWidget> createState() => _AuthenticatedWidgetState();
}

class _AuthenticatedWidgetState extends State<AuthenticatedWidget> {
  String rtoken = "";
  AuthSession? authSession;
  @override
  void initState() {
    rtoken = SharedPrefProvider.instance.getString(token) ?? "";
    authSession = AuthSession.fromStorage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //TODO: check whether it work with
    return rtoken.isEmpty || authSession == null
        ? Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  IconAsset.error,
                  width: width(50),
                  height: height(50),
                ),
                const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
                  child: CustomTextWidget(
                    text: "Go To Login Page",
                    isbold: true,
                    isCenter: true,
                  ),
                ),
                const HeightWidget(10),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: kDefaultPadding * 3),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: CustomElevatedButton(
                        //  backgroundColor: kRedColor,
                        label: "common.tryagain",
                        onPressed: () {
                          context.router.replace(const LoginPageRoute());
                        }),
                  ),
                ),
                const HeightWidget(10),
              ],
            ),
          )
        : widget.child;
  }
}
