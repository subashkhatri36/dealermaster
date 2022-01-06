import 'package:dealermaster/src/common/constant/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotificationIconWidget extends StatelessWidget {
  final bool isNotify;
  final IconData icon;
  final VoidCallback? onTap;
  const NotificationIconWidget({
    Key? key,
    this.isNotify = false,
    required this.icon,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: kDefaultmargin / 1.2),
      child: Stack(
        children: [
          InkWell(
            onTap: onTap,
            child: FaIcon(
              icon,
              color: kPrimaryColor,
            ),
          ),
          if (isNotify)
            const Positioned(
                right: 0,
                top: 0,
                child: CircleAvatar(
                  backgroundColor: kRedColor,
                  radius: 6,
                ))
        ],
      ),
    );
  }
}
