import 'package:dealermaster/src/common/constant/constants.dart';
import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  final bool showBackButton;
  final bool addPadding;
  final Widget body;
  final AppBar? appbar;
  final Future<bool> Function()? onWillPopScope;
  const CustomScaffold(
      {Key? key,
      this.showBackButton = false,
      this.addPadding = true,
      required this.body,
      this.appbar,
      this.onWillPopScope})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Scaffold(
          appBar: appbar,
          backgroundColor: kWhiteColor,
          body: WillPopScope(
            onWillPop: onWillPopScope,
            child: Container(
              padding: addPadding
                  ? const EdgeInsets.symmetric(horizontal: kDefaultPadding)
                  : null,
              child: body,
            ),
          ),
        ),
      ),
    );
  }
}
