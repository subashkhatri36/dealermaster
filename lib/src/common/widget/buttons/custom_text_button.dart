import 'package:dealermaster/app_localization.dart';
import 'package:dealermaster/src/common/constant/constants.dart';
import 'package:dealermaster/src/common/utils/extension.dart';
import 'package:flutter/material.dart';

/// custom text button widget
class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.textColor = kBlackColor,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String label;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        label.trim().tr(context).toCapitalizeFirstofEach,
        style: TextStyle(
          color: textColor,
        ),
      ),
      onPressed: onPressed,
    );
  }
}
