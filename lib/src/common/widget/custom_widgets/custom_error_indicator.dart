import 'package:dealermaster/src/common/constant/asset_image_link.dart';
import 'package:dealermaster/src/common/constant/constants.dart';
import 'package:dealermaster/src/common/utils/app_size_utils.dart';
import 'package:dealermaster/src/common/widget/buttons/custom_elevated_button.dart';
import 'package:dealermaster/src/common/widget/size/custom_size_widget.dart';
import 'package:dealermaster/src/common/widget/texts/normal_text.dart';
import 'package:flutter/material.dart';

class CustomErrorIndicator extends StatelessWidget {
  final String message;
  final VoidCallback ontap;
  const CustomErrorIndicator(
      {Key? key, required this.ontap, required this.message})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            IconAsset.error,
            width: width(50),
            height: height(50),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
            child: CustomTextWidget(
              text: message,
              isbold: true,
              isCenter: true,
            ),
          ),
          const HeightWidget(10),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: kDefaultPadding * 3),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: CustomElevatedButton(
                  //  backgroundColor: kRedColor,
                  label: "common.tryagain",
                  onPressed: ontap),
            ),
          ),
          const HeightWidget(10),
        ],
      ),
    );
  }
}
