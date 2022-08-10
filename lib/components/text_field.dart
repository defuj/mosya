import 'package:flutter/material.dart';
import 'package:mosya/utils/customcolor.dart';

Widget formDefault(
    {required BuildContext context,
    required Function(String value) onChange,
    required String hintText,
    Widget? prefixIcon,
    TextInputType? keyboardType,
    bool obscureText = false,
    String obscuringCharacter = '*',
    int maxLines = 1}) {
  return Container(
    margin: const EdgeInsets.only(top: 12),
    decoration: BoxDecoration(
      color: CustomColor.black50,
      borderRadius: BorderRadius.circular(8.0),
    ),
    child: TextFormField(
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
      ),
      keyboardType: keyboardType ?? TextInputType.text,
      maxLines: maxLines,
      onChanged: (value) {
        onChange(value);
      },
    ),
  );
}
