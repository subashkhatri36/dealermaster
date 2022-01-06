import 'package:dealermaster/src/common/constant/constants.dart';
import 'package:dealermaster/src/common/utils/app_size_utils.dart';
import 'package:dealermaster/src/common/widget/size/custom_size_widget.dart';
import 'package:dealermaster/src/common/widget/texts/normal_text.dart';
import 'package:flutter/material.dart';

class HorizontalTitleandValue extends StatelessWidget {
  const HorizontalTitleandValue(
      {Key? key,
      required this.title,
      required this.value,
      this.istitlebold = true,
      this.isvaluebold = false,
      this.textColor = kBlackColor,
      this.align = TextAlign.left})
      : super(key: key);
  final String title;
  final String value;
  final bool istitlebold;
  final bool isvaluebold;
  final TextAlign align;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: kDefaultmargin / 6),
      width: SizeConfig.screenWidth,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: CustomTextWidget(
              text: title,
              isbold: istitlebold,
              textColor: textColor,
            ),
          ),
          const WidthWidget(10),
          Expanded(
            flex: 7,
            child: CustomTextWidget(
              text: value,
              isbold: isvaluebold,
              align: align,
              textColor: textColor,
            ),
          ),
        ],
      ),
    );
  }
}
