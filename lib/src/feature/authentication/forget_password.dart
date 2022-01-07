import 'package:dealermaster/src/common/utils/app_size_utils.dart';
import 'package:dealermaster/src/common/widget/core/custom_scaffold.dart';
import 'package:dealermaster/src/common/widget/responsive/responsive_layout.dart';
import 'package:flutter/material.dart';

class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return CustomScaffold(
        body: ResponsiveLayout(
      mobile: Container(),
      desktopAndWeb: Container(),
    ));
  }
}
