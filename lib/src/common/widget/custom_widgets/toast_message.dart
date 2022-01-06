import 'package:dealermaster/app_localization.dart';
import 'package:dealermaster/src/common/constant/constants.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

toastMessage(BuildContext context,
    {required String message, Color? color}) async {
  return await Fluttertoast.showToast(
      msg: message.tr(context),
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 2,
      backgroundColor: color ?? kBlackColor,
      textColor: Colors.white,
      fontSize: kDefaultFontSize - 4);
}
