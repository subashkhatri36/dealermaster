import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:dealermaster/src/common/constant/asset_image_link.dart';
import 'package:dealermaster/src/common/utils/app_size_utils.dart';
import 'package:dealermaster/src/common/widget/core/custom_scaffold.dart';
import 'package:dealermaster/src/common/widget/indicator/laoding_indicator.dart';
import 'package:dealermaster/src/common/widget/responsive/responsive_layout.dart';
import 'package:dealermaster/src/common/widget/size/custom_size_widget.dart';
import 'package:dealermaster/src/common/widget/texts/normal_text.dart';
import 'package:dealermaster/src/core/service/shared_pref_provider.dart';
import 'package:dealermaster/src/feature/authentication/bloc/auth_state_notifier.dart';
import 'package:dealermaster/src/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage>
    with TickerProviderStateMixin {
  // animation duration
  int duration = 2500;
  final Completer<bool> _completer = Completer();
  late final AnimationController _controller = AnimationController(
    duration: Duration(milliseconds: duration),
    vsync: this,
  );
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );

  @override
  void initState() {
    super.initState();
    // start animating the splash
    SharedPrefProvider.instance.clear();
    _controller.animateTo(1.0);
    // shareprefrence.clear();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // preloading app logo image for better app experience
    precacheImage(const AssetImage(ImageAsset.applogo), context);
    // when completed complete the completer
    _animation.addListener(() {
      if (_animation.isCompleted) {
        _completer.complete(true);
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<AuthState>(authStateProvider, (previous, next) {
      next.when(
        authenticated: () async {
          // await _completer.future.then(
          //     (value) => AutoRouter.of(context).replace(NavBarPageRoute()));
        },
        partiallyauthenticated: () async {
          // await _completer.future.then((value) =>
          //     AutoRouter.of(context).replace(const CompanyPageRoute()));
        },
        unauthenticated: () async {
          await _completer.future.then((value) =>
              AutoRouter.of(context).replace(const LoginPageRoute()));
        },
        unknown: () async {},
      );
    });
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
                  w: 100,
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
              w: 180,
              h: 110,
            ),
            const HeightWidget(10),
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
