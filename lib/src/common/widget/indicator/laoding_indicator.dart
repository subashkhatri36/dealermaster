import 'package:dealermaster/src/common/constant/asset_image_link.dart';
import 'package:dealermaster/src/common/utils/app_size_utils.dart';
import 'package:dealermaster/src/common/widget/size/custom_size_widget.dart';
import 'package:dealermaster/src/common/widget/texts/normal_text.dart';
import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget {
  final String text;
  const LoadingIndicator({Key? key, this.text = ""}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset(
            IconAsset.loading,
            height: height(70),
            width: width(70),
          ),
          const HeightWidget(5),
          CustomTextWidget(
            text: text.isEmpty ? "loading.message" : text,
            isbold: true,
          )
        ],
      ),
    );
  }
}
