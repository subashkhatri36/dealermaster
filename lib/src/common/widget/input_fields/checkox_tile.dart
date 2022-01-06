import 'package:dealermaster/src/common/constant/constants.dart';
import 'package:flutter/material.dart';

class CheckBoxTile extends StatelessWidget {
  final bool checkedValue;
  final String text;
  final Function(bool? newValue)? onChanged;
  const CheckBoxTile(
      {Key? key,
      required this.checkedValue,
      required this.text,
      required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding),
      child: CheckboxListTile(
        activeColor: kPrimaryColor,
        value: checkedValue,
        onChanged: onChanged,
        controlAffinity: ListTileControlAffinity.leading,
        contentPadding: EdgeInsets.zero,
        title: Text(
          text,
          style: Theme.of(context).textTheme.bodyText2!.copyWith(
                fontSize: 18,
              ),
        ),
      ),
    );
  }
}
