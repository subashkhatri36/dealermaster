import 'package:dealermaster/app_localization.dart';
import 'package:dealermaster/src/common/constant/constants.dart';
import 'package:dealermaster/src/common/utils/extension.dart';
import 'package:flutter/material.dart';

/// custom raised/elevated button widget
class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.backgroundColor,
    this.textColor,
    this.ismargin = true,
    this.disabled = false,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String label;
  final Color? backgroundColor;
  final Color? textColor;
  final bool disabled;
  final bool ismargin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: ismargin
          ? const EdgeInsets.only(bottom: kDefaultPadding + 5)
          : EdgeInsets.zero,
      child: Container(
        constraints: const BoxConstraints(minHeight: 50),
        width: double.infinity,
        child: ElevatedButton(
          child: Text(
            label.trim().tr(context).toCapitalizeFirstofEach,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          onPressed: disabled ? () {} : onPressed,
          style: !disabled
              ? ElevatedButton.styleFrom(
                  primary: backgroundColor, // background
                  onPrimary: textColor, // text color
                )
              : ElevatedButton.styleFrom(
                  primary: kLightGreyColor, // background
                  onPrimary: kWhiteColor, // text color
                ),
        ),
      ),
    );
  }
}
