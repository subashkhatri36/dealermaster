import 'package:dealermaster/src/common/constant/constants.dart';
import 'package:dealermaster/src/common/utils/app_size_utils.dart';
import 'package:flutter/material.dart';

class CustomScaffold extends StatefulWidget {
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
  State<CustomScaffold> createState() => _CustomScaffoldState();
}

class _CustomScaffoldState extends State<CustomScaffold> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Scaffold(
          appBar: widget.appbar,
          backgroundColor: kWhiteColor,
          body: WillPopScope(
            onWillPop: widget.onWillPopScope,
            child: Container(
              padding: widget.addPadding
                  ? const EdgeInsets.symmetric(horizontal: kDefaultPadding)
                  : null,
              child: widget.body,
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
