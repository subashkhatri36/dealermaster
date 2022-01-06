import 'package:dealermaster/src/common/constant/constants.dart';
import 'package:flutter/material.dart';

class BorderWidget extends StatelessWidget {
  const BorderWidget(
      {Key? key,
      this.isRound = true,
      this.borderColor = kPrimaryColor,
      this.padding = kDefaultPadding - 10,
      this.margin = kDefaultmargin,
      this.isMargin = false,
      this.isPadding = true,
      required this.child,
      this.radius = 10})
      : super(key: key);
  final bool isRound;
  final Color borderColor;
  final double radius;
  final double padding;
  final double margin;
  final bool isMargin;
  final bool isPadding;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: isPadding
          ? EdgeInsets.only(
              top: padding, bottom: padding, right: padding, left: padding)
          : EdgeInsets.zero,
      margin: isMargin
          ? EdgeInsets.only(
              top: margin, bottom: margin, right: margin, left: margin)
          : EdgeInsets.zero,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor),
        borderRadius: isRound
            ? BorderRadius.only(
                topLeft: Radius.circular(radius),
                topRight: Radius.circular(radius),
                bottomLeft: Radius.circular(radius),
                bottomRight: Radius.circular(radius),
              )
            : BorderRadius.zero,
      ),
      child: child,
    );
  }
}
