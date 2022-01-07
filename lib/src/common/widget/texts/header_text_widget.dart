import 'package:dealermaster/app_localization.dart';
import 'package:dealermaster/src/common/constant/constants.dart';
import 'package:dealermaster/src/common/utils/app_size_utils.dart';
import 'package:dealermaster/src/common/utils/extension.dart';
import 'package:flutter/material.dart';

class HeaderTextWidget extends StatelessWidget {
  final String text;
  final Color? textColor;
  const HeaderTextWidget({Key? key, required this.text, this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: height(kDefaultPadding - 10)),
      child: Text(
        text.trim().tr(context),
        style: Theme.of(context).textTheme.headline1!.copyWith(
              fontSize: kDefaultFontSize + 10,
              height: 1.5, // 54 i.e. lineheight = fontsize * height,
              color: textColor,
            ),
      ),
    );
  }
}
