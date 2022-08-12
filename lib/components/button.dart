import 'package:flutter/material.dart';
import 'package:mosya/utils/customcolor.dart';

Widget buttonDefault({
  required BuildContext context,
  required Function onPressed,
  required String text,
}) {
  return Container(
    width: double.infinity,
    margin: const EdgeInsets.only(top: 16),
    decoration: BoxDecoration(
      color: CustomColor.orange500,
      borderRadius: BorderRadius.circular(8.0),
    ),
    child: TextButton(
      onPressed: () => onPressed(),
      child: Text(
        text,
        style: Theme.of(context).textTheme.button!.copyWith(
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
      ),
    ),
  );
}

Widget buttonCustom({
  required BuildContext context,
  required Function onPressed,
  required String text,
  double radius = 8.0,
  double height = 48.0,
  double width = double.infinity,
  TextStyle? textStyle,
}) {
  return Container(
    width: width,
    height: height,
    margin: const EdgeInsets.only(top: 16),
    decoration: BoxDecoration(
      color: CustomColor.orange500,
      borderRadius: BorderRadius.circular(radius),
    ),
    child: TextButton(
      onPressed: () => onPressed(),
      child: Text(
        text,
        style: textStyle ??
            Theme.of(context).textTheme.button!.copyWith(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
      ),
    ),
  );
}
