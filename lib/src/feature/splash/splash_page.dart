import 'package:dealermaster/src/common/constant/asset_image_link.dart';
import 'package:dealermaster/src/common/utils/app_size_utils.dart';
import 'package:dealermaster/src/common/widget/core/custom_scaffold.dart';
import 'package:dealermaster/src/common/widget/indicator/laoding_indicator.dart';
import 'package:dealermaster/src/common/widget/responsive/responsive_layout.dart';
import 'package:dealermaster/src/common/widget/size/custom_size_widget.dart';
import 'package:dealermaster/src/common/widget/texts/normal_text.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const CustomScaffold(
        body: ResponsiveLayout(
      mobile: MobSplash(),
      desktopAndWeb: SplashDesktopPage(),
    ));
  }
}

///for web and desktop development
class SplashDesktopPage extends StatelessWidget {
  const SplashDesktopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
            width: SizeConfig.screenWidth,
            height: SizeConfig.screenHeight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: Container()),
                //============App Logo=============
                const AppLogo(
                  w: 50,
                  h: 200,
                ),
                //==============introduction Text =================
                const CustomTextWidget(
                  text: "splashpage.introduction",
                  isbold: true,
                ),
                //==================Loader===================
                Expanded(child: Container()),
                const LoadingIndicator(),
                const HeightWidget(15),
              ],
            )));
  }
}

///for mobile development
class MobSplash extends StatelessWidget {
  const MobSplash({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: SizeConfig.screenWidth,
        height: SizeConfig.screenHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Container()),
            //============App Logo=============
            const AppLogo(
              w: 250,
              h: 260,
            ),
            //==============introduction Text =================
            const CustomTextWidget(
              text: "splashpage.introduction",
              isbold: true,
            ),
            //==================Loader===================
            Expanded(child: Container()),
            const LoadingIndicator(),
            const HeightWidget(15),
          ],
        ),
      ),
    );
  }
}

class AppLogo extends StatefulWidget {
  const AppLogo({
    Key? key,
    required this.h,
    required this.w,
  }) : super(key: key);
  final double h;
  final double w;

  @override
  State<AppLogo> createState() => _AppLogoState();
}

class _AppLogoState extends State<AppLogo> {
  double val = 0;

  ani() {
    Future.delayed(const Duration(seconds: 2));
    val = 1;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    //Image from network
    ani();
    return AnimatedOpacity(
      duration: const Duration(seconds: 2),
      opacity: val,
      child: Image.asset(
        ImageAsset.applogo,
        width: width(widget.w),
        height: height(widget.h),
        fit: BoxFit.fill,
      ),
    );
  }
}
