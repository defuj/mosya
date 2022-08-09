import 'package:flutter/material.dart';
import 'package:mosya/utils/customcolor.dart';

class DialogType {
  static const String warning = 'warning';
  static const String success = 'success';
  static const String error = 'error';
  static const String info = 'info';
}

class Dialogs {
  static void buildDialog({
    required BuildContext context,
    required String title,
    required String message,
    String typeDialog = DialogType.info,
    String confirmText = 'Oke',
    String? cancelText,
    String? neutralText,
    Function? onConfirm,
    Function? onCancel,
    Function? onNeutral,
  }) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              actionsPadding: const EdgeInsets.all(0),
              actionsOverflowDirection: VerticalDirection.up,
              actionsAlignment: MainAxisAlignment.center,
              actionsOverflowButtonSpacing: 0,
              contentPadding: const EdgeInsets.only(
                top: 16,
                bottom: 24,
                left: 26,
                right: 26,
              ),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.0)),
              ),
              // insetPadding: const EdgeInsets.all(50),
              buttonPadding: const EdgeInsets.all(0),
              // titlePadding: const EdgeInsets.all(0),
              title: Text(
                title,
                style: const TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.black700,
                ),
                textAlign: TextAlign.center,
              ),
              content: Text(
                message,
                style: const TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 16,
                  color: CustomColor.black500,
                ),
                textAlign: TextAlign.center,
              ),
              actions: [
                Container(
                  decoration: const BoxDecoration(
                    color: CustomColor.black100,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16.0),
                      bottomRight: Radius.circular(16.0),
                    ),
                  ),
                  child: Column(
                    children: [
                      // Confirm Button
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              neutralText == null && cancelText == null
                                  ? const BorderRadius.only(
                                      bottomLeft: Radius.circular(16.0),
                                      bottomRight: Radius.circular(16.0))
                                  : const BorderRadius.all(Radius.circular(0)),
                        ),
                        margin: const EdgeInsets.only(
                            top: 1, bottom: 0, left: 0, right: 0),
                        width: double.infinity,
                        height: 48,
                        child: TextButton(
                          style: const ButtonStyle(
                            splashFactory: NoSplash.splashFactory,
                          ),
                          child: Text(
                            confirmText,
                            style: TextStyle(
                              color: typeDialog == DialogType.warning
                                  ? Colors.red[600]
                                  : Colors.blue[500],
                              fontFamily: 'Roboto',
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          onPressed: () {
                            if (onConfirm != null) {
                              onConfirm();
                            }
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                      // Cancel Button
                      if (cancelText != null)
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: neutralText == null
                                ? const BorderRadius.only(
                                    bottomLeft: Radius.circular(16.0),
                                    bottomRight: Radius.circular(16.0))
                                : const BorderRadius.all(Radius.circular(0)),
                          ),
                          margin: const EdgeInsets.only(
                              top: 1, bottom: 0, left: 0, right: 0),
                          width: double.infinity,
                          height: 48,
                          child: TextButton(
                            child: Text(
                              cancelText,
                              style: const TextStyle(
                                color: CustomColor.black700,
                                fontFamily: 'Roboto',
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onPressed: () {
                              if (onCancel != null) {
                                onCancel();
                              }
                              Navigator.of(context).pop();
                            },
                          ),
                        ),
                      // Neutral Button
                      if (neutralText != null)
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(16.0),
                                bottomRight: Radius.circular(16.0)),
                          ),
                          margin: const EdgeInsets.only(
                              top: 1, bottom: 0, left: 0, right: 0),
                          width: double.infinity,
                          height: 48,
                          child: TextButton(
                            child: Text(
                              neutralText,
                              style: const TextStyle(
                                color: CustomColor.black600,
                                fontFamily: 'Roboto',
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onPressed: () {
                              if (onNeutral != null) {
                                onNeutral();
                              }
                              Navigator.of(context).pop();
                            },
                          ),
                        ),
                    ],
                  ),
                ),
              ]);
        });
  }
}
