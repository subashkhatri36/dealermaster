import 'package:dealermaster/src/common/constant/constants.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWidget extends StatelessWidget {
  const ShimmerWidget({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: kGreyColor.withOpacity(0.3),
        highlightColor: kWhiteColor.withOpacity(0.6),
        child: child);
  }
}
