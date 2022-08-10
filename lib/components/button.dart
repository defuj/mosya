import 'package:flutter/material.dart';
import 'package:mosya/utils/customcolor.dart';

Widget buttonDefault(
    {required BuildContext context,
    required Function onPressed,
    required String text}) {
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
