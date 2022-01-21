import 'package:dealermaster/app_localization.dart';
import 'package:dealermaster/src/common/constant/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// custom text input field widget
class InputField extends StatefulWidget {
  const InputField({
    Key? key,
    this.label,
    required this.hintText,
    this.obscureText = false,
    this.textInputType = TextInputType.text,
    this.icon,
    this.validator,
    this.onFieldSubmitted,
    this.onChanged,
    this.controller,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.disabled = false,
    this.onTap,
    this.prefixText,
    this.suffixText,
    this.autofocus = false,
    this.textInputAction = TextInputAction.next,
    this.inputFormatters,
    this.ispadding = true,
  }) : super(key: key);

  final IconData? icon;
  final String hintText;
  final TextInputType textInputType;
  final bool obscureText;
  final String? Function(String?)? validator;
  final ValueChanged<String>? onFieldSubmitted;
  final ValueChanged<String>? onChanged;
  final String? label;
  final TextEditingController? controller;
  final AutovalidateMode? autovalidateMode;
  final bool disabled;
  final Function()? onTap;
  final String? prefixText;
  final String? suffixText;
  final bool autofocus;
  final TextInputAction textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final bool ispadding;

  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  ///toggle status for passsword eye
  bool showPassword = false;

  /// toggle status for password field
  bool shownPassword = false;

  @override
  void initState() {
    super.initState();
    shownPassword = widget.obscureText;
  }

  /// toggle password view
  void togglePassword() {
    setState(() {
      showPassword = !showPassword;
      shownPassword = !showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(bottom: widget.ispadding ? kDefaultPadding - 5 : 0),
      child: TextFormField(
        autofocus: widget.autofocus,
        onTap: widget.onTap,
        readOnly: widget.disabled,
        controller: widget.controller,
        autovalidateMode: widget.autovalidateMode,

        decoration: InputDecoration(
          filled: true,
          fillColor: kLightestGreyColor,
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: kLightestGreyColor,
            ),
          ),
          // focusedBorder: const OutlineInputBorder(
          //   borderSide: BorderSide(color: kLightGreyColor, width: 1.0),
          // ),
          // enabledBorder: const OutlineInputBorder(
          //   borderSide: BorderSide(width: 1.0),
          // ),
          contentPadding: widget.icon != null
              ? const EdgeInsets.fromLTRB(0, 0, kDefaultPadding, 0)
              : const EdgeInsets.fromLTRB(
                  kDefaultPadding, 0, kDefaultPadding, 0),
          prefixIcon: widget.icon != null
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FaIcon(
                      widget.icon,
                    ),
                  ],
                )
              : null,
          labelText: widget.label,
          hintText: widget.hintText.tr(context),
          prefixText: widget.prefixText,
          suffixText: widget.suffixText,
          suffixIcon: widget.obscureText
              ? IconButton(
                  onPressed: () => togglePassword(),
                  icon: Icon(
                    showPassword
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    color: kGreyColor,
                  ),
                  splashRadius: 0.1,
                )
              : null,
        ),
        validator: widget.validator,
        onFieldSubmitted: widget.onFieldSubmitted,
        onChanged: widget.onChanged,
        obscureText: shownPassword,
        keyboardType: widget.textInputType,
        textInputAction: widget.textInputAction,
        // ignore: prefer_if_null_operators
        inputFormatters: widget.inputFormatters != null
            ? widget.inputFormatters
            : widget.textInputType == TextInputType.number
                ? [
                    /// allow numbers, dot and upto 2 digits after dot
                    FilteringTextInputFormatter.allow(
                        RegExp(r'^(\d+)?\.?\d{0,2}'))
                  ]
                : widget.textInputType == TextInputType.phone
                    ? [
                        /// allow numbers upto 10 digits after dot
                        FilteringTextInputFormatter.allow(
                            RegExp(r'^(\d{0,10})'))
                      ]
                    : null,
      ),
    );
  }
}
