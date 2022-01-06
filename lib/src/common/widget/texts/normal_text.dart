import 'package:dealermaster/app_localization.dart';
import 'package:dealermaster/src/common/constant/constants.dart';
import 'package:dealermaster/src/common/utils/extension.dart';
import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  final String text;
  final Color? textColor;
  final bool isbold;
  final bool isCenter;
  final bool isUpper;
  final bool isFirstcaptial;
  final double? fontsize;
  final TextAlign align;
  final int maxline;
  const CustomTextWidget(
      {Key? key,
      this.maxline = 1,
      required this.text,
      this.textColor,
      this.isCenter = false,
      this.isUpper = false,
      this.isFirstcaptial = true,
      this.fontsize,
      this.align = TextAlign.left,
      this.isbold = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      isUpper
          ? text.tr(context).toUpperCase()
          : isFirstcaptial
              ? text.trim().tr(context).toCapitalizeFirstofEach
              : text.trim().tr(context),
      maxLines: maxline,
      overflow: TextOverflow.clip,
      style: Theme.of(context).textTheme.bodyText1!.copyWith(
          fontSize: fontsize ?? kDefaultFontSize,
          color: textColor,
          fontWeight: isbold ? FontWeight.bold : FontWeight.normal),
      textAlign: isCenter ? TextAlign.center : align,
    );
  }
}
