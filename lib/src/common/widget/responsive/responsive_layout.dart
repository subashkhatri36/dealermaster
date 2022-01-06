import 'package:dealermaster/src/common/utils/app_size_utils.dart';
import 'package:flutter/material.dart';

/// responsive layout builder to detect and build different layout for mobile and tablet
class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    Key? key,
    required this.mobile,
    this.desktopAndWeb,
  }) : super(key: key);

  final Widget mobile;
  final Widget? desktopAndWeb;

  @override
  Widget build(BuildContext context) {
    //in first post we have to test if its phone or table
    return SizeConfig.isdesktop
        ? SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: desktopAndWeb,
            ),
          )
        : SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: mobile,
            ),
          );
  }
}
