import 'package:flutter/material.dart';
import 'package:mosya/utils/customcolor.dart';

Widget formDefault({
  required BuildContext context,
  required Function(String value) onChange,
  required String hintText,
  Widget? prefixIcon,
  Widget? sufixIcon,
  TextInputType? keyboardType,
  bool obscureText = false,
  String obscuringCharacter = '*',
  int maxLines = 1,
  Color? backgroundColor = CustomColor.black50,
  double borderRadius = 8.0,
  TextInputAction textInputAction = TextInputAction.done,
  TextStyle? textStyle,
}) {
  return Container(
    margin: const EdgeInsets.only(top: 12),
    decoration: BoxDecoration(
      color: backgroundColor,
      borderRadius: BorderRadius.circular(borderRadius),
    ),
    child: TextFormField(
      textInputAction: textInputAction,
      obscureText: obscureText,
      obscuringCharacter: obscuringCharacter,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
        hintText: hintText,
        hintStyle: Theme.of(context)
            .textTheme
            .bodyText2!
            .copyWith(color: CustomColor.black400),
        border: InputBorder.none,
        prefixIcon: prefixIcon != null
            ? Align(
                heightFactor: 1.0,
                widthFactor: 1.0,
                child: prefixIcon,
              )
            : null,
        suffixIcon: sufixIcon != null
            ? Align(
                heightFactor: 1.0,
                widthFactor: 1.0,
                child: sufixIcon,
              )
            : null,
      ),
      keyboardType: keyboardType ?? TextInputType.text,
      maxLines: maxLines,
      style: textStyle ?? Theme.of(context).textTheme.bodyText2,
      onChanged: (value) {
        onChange(value);
      },
    ),
  );
}
