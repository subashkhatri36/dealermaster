import 'package:dealermaster/src/common/constant/constants.dart';
import 'package:dealermaster/src/common/utils/app_size_utils.dart';
import 'package:dealermaster/src/common/widget/buttons/custom_elevated_button.dart';
import 'package:dealermaster/src/common/widget/size/custom_size_widget.dart';
import 'package:dealermaster/src/common/widget/texts/normal_text.dart';
import 'package:flutter/material.dart';

class BorderWthTitleContainer extends StatelessWidget {
  const BorderWthTitleContainer({
    Key? key,
    required this.child,
    this.bordercolor = kLightGreyColor,
    this.title = "",
    this.titlecolor = kWhiteColor,
    this.istitle = true,
    this.isRound = true,
    this.isTitleButton = false,
    this.buttonTitle = "View",
    this.buttonwith = 70,
    this.btnColor = kWhiteColor,
    this.onTap,
    this.kbtnTextColor = kBlackColor,
    this.titlefontsize = kDefaultFontSize,
    this.isPadding = true,
  }) : super(key: key);
  final Widget child;
  final Color bordercolor;
  final String title;
  final Color titlecolor;
  final double titlefontsize;
  final bool istitle;
  final bool isRound;
  final VoidCallback? onTap;
  final bool isTitleButton;
  final String buttonTitle;
  final double buttonwith;
  final Color btnColor;
  final Color kbtnTextColor;
  final bool isPadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(
          bottom: kDefaultmargin,
          left: kDefaultmargin / 2,
          right: kDefaultmargin / 2),
      padding: isPadding
          ? const EdgeInsets.only(
              bottom: kDefaultPadding,
            )
          : EdgeInsets.zero,
      decoration: BoxDecoration(
        border: Border.all(
          color: bordercolor,
        ),
        borderRadius: isRound ? BorderRadius.circular(10) : BorderRadius.zero,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (istitle)
            Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                    vertical: isTitleButton
                        ? kDefaultPadding / 8
                        : kDefaultPadding / 2,
                    horizontal: kDefaultPadding / 4),
                decoration: BoxDecoration(
                    color: bordercolor,
                    borderRadius: isRound
                        ? const BorderRadius.only(
                            topLeft: Radius.circular(9),
                            topRight: Radius.circular(9))
                        : BorderRadius.zero),
                child: Row(
                  mainAxisAlignment: isTitleButton
                      ? MainAxisAlignment.spaceBetween
                      : MainAxisAlignment.start,
                  children: [
                    CustomTextWidget(
                      text: title,
                      textColor: titlecolor,
                      fontsize: titlefontsize,
                      isbold: true,
                    ),
                    if (isTitleButton)
                      SizedBox(
                          width: width(buttonwith),
                          child: CustomElevatedButton(
                              backgroundColor: btnColor,
                              label: buttonTitle,
                              textColor: kbtnTextColor,
                              ismargin: false,
                              onPressed: () {}))
                  ],
                )),
          if (istitle) const HeightWidget(5),
          Padding(
            padding: isPadding
                ? const EdgeInsets.symmetric(horizontal: 8.0)
                : EdgeInsets.zero,
            child: child,
          ),
        ],
      ),
    );
  }
}
