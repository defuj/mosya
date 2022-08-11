import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mosya/utils/customcolor.dart';

class DialogType {
  static const String warning = 'warning';
  static const String success = 'success';
  static const String error = 'error';
  static const String info = 'info';
  static const String normal = 'normal';
}

class Dialogs {
  static void buildDialog({
    required BuildContext context,
    required String title,
    required String message,
    bool isCancelable = true,
    String typeDialog = DialogType.normal,
    String confirmText = 'Oke',
    String? cancelText,
    String? neutralText,
    Function? onConfirm,
    Function? onCancel,
    Function? onNeutral,
  }) {
    showDialog(
        context: context,
        barrierDismissible: isCancelable,
        builder: (context) {
          return AlertDialog(
              backgroundColor: CustomColor.backgroundDialog,
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
              title: Column(
                children: [
                  if (typeDialog == DialogType.success)
                    Lottie.asset(
                      'assets/animations/success.json',
                      width: 100,
                      height: 100,
                      repeat: false,
                    ),
                  if (typeDialog == DialogType.warning)
                    Lottie.asset(
                      'assets/animations/warning_2.json',
                      width: 100,
                      height: 100,
                      repeat: false,
                    ),
                  if (typeDialog == DialogType.error)
                    Lottie.asset(
                      'assets/animations/error.json',
                      width: 100,
                      height: 100,
                      repeat: false,
                    ),
                  Text(
                    title,
                    style: const TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.black700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
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
                          color: CustomColor.backgroundDialog,
                          borderRadius:
                              neutralText == null && cancelText == null
                                  ? const BorderRadius.only(
                                      bottomLeft: Radius.circular(16.0),
                                      bottomRight: Radius.circular(16.0))
                                  : const BorderRadius.all(Radius.circular(0)),
                        ),
                        margin: const EdgeInsets.only(
                          top: 1,
                          bottom: 0,
                          left: 0,
                          right: 0,
                        ),
                        width: double.infinity,
                        height: 48,
                        child: TextButton(
                          style: const ButtonStyle(
                            splashFactory: NoSplash.splashFactory,
                          ),
                          child: Text(
                            confirmText,
                            style: TextStyle(
                              color: typeDialog == DialogType.warning ||
                                      typeDialog == DialogType.error
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
                            color: CustomColor.backgroundDialog,
                            borderRadius: neutralText == null
                                ? const BorderRadius.only(
                                    bottomLeft: Radius.circular(16.0),
                                    bottomRight: Radius.circular(16.0))
                                : const BorderRadius.all(Radius.circular(0)),
                          ),
                          margin: const EdgeInsets.only(
                            top: 1,
                            bottom: 0,
                            left: 0,
                            right: 0,
                          ),
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
                            color: CustomColor.backgroundDialog,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(16.0),
                              bottomRight: Radius.circular(16.0),
                            ),
                          ),
                          margin: const EdgeInsets.only(
                            top: 1,
                            bottom: 0,
                            left: 0,
                            right: 0,
                          ),
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

  static void buildGeneralDialog({
    required BuildContext context,
    required String title,
    required String message,
    bool isCancelable = true,
    String typeDialog = DialogType.normal,
    String confirmText = 'Oke',
    String? cancelText,
    String? neutralText,
    Function? onConfirm,
    Function? onCancel,
    Function? onNeutral,
  }) {
    showGeneralDialog(
        barrierLabel: 'dialog',
        barrierDismissible: isCancelable,
        context: context,
        barrierColor: Colors.black.withOpacity(0.3),
        transitionDuration: const Duration(milliseconds: 180),
        transitionBuilder: (context, anim1, anim2, child) {
          return BackdropFilter(
            filter: ImageFilter.blur(
                sigmaX: 3 * anim1.value, sigmaY: 3 * anim1.value),
            child: Transform.scale(
              scale: anim1.value,
              child: child,
            ),
          );
        },
        pageBuilder: (context2, a1, a2) {
          return AlertDialog(
              insetPadding: const EdgeInsets.all(56),
              backgroundColor: CustomColor.backgroundDialog,
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
              title: Column(
                children: [
                  if (typeDialog == DialogType.success)
                    Lottie.asset(
                      'assets/animations/success.json',
                      width: 100,
                      height: 100,
                      repeat: false,
                    ),
                  if (typeDialog == DialogType.warning)
                    Lottie.asset(
                      'assets/animations/warning_2.json',
                      width: 100,
                      height: 100,
                      repeat: false,
                    ),
                  if (typeDialog == DialogType.error)
                    Lottie.asset(
                      'assets/animations/error.json',
                      width: 100,
                      height: 100,
                      repeat: false,
                    ),
                  Text(
                    title,
                    style: const TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.black700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
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
                          color: CustomColor.backgroundDialog,
                          borderRadius:
                              neutralText == null && cancelText == null
                                  ? const BorderRadius.only(
                                      bottomLeft: Radius.circular(16.0),
                                      bottomRight: Radius.circular(16.0))
                                  : const BorderRadius.all(Radius.circular(0)),
                        ),
                        margin: const EdgeInsets.only(
                          top: 1,
                          bottom: 0,
                          left: 0,
                          right: 0,
                        ),
                        width: double.infinity,
                        height: 48,
                        child: TextButton(
                          style: const ButtonStyle(
                            splashFactory: NoSplash.splashFactory,
                          ),
                          child: Text(
                            confirmText,
                            style: TextStyle(
                              color: typeDialog == DialogType.warning ||
                                      typeDialog == DialogType.error
                                  ? Colors.red[600]
                                  : Colors.blue[500],
                              fontFamily: 'Roboto',
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                            if (onConfirm != null) {
                              onConfirm();
                            }
                          },
                        ),
                      ),
                      // Cancel Button
                      if (cancelText != null)
                        Container(
                          decoration: BoxDecoration(
                            color: CustomColor.backgroundDialog,
                            borderRadius: neutralText == null
                                ? const BorderRadius.only(
                                    bottomLeft: Radius.circular(16.0),
                                    bottomRight: Radius.circular(16.0))
                                : const BorderRadius.all(Radius.circular(0)),
                          ),
                          margin: const EdgeInsets.only(
                            top: 1,
                            bottom: 0,
                            left: 0,
                            right: 0,
                          ),
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
                            color: CustomColor.backgroundDialog,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(16.0),
                              bottomRight: Radius.circular(16.0),
                            ),
                          ),
                          margin: const EdgeInsets.only(
                            top: 1,
                            bottom: 0,
                            left: 0,
                            right: 0,
                          ),
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

class Progress {
  BuildContext context;
  Progress({required this.context});

  void show() {
    showGeneralDialog(
        barrierLabel: 'progress',
        barrierDismissible: false,
        context: context,
        barrierColor: Colors.black.withOpacity(0.1),
        transitionDuration: const Duration(milliseconds: 180),
        transitionBuilder: (context, anim1, anim2, child) {
          return BackdropFilter(
            filter: ImageFilter.blur(
                sigmaX: 3 * anim1.value, sigmaY: 3 * anim1.value),
            child: Transform.scale(
              scale: anim1.value,
              child: child,
            ),
          );
        },
        pageBuilder: (context2, a1, a2) {
          return Dialog(
            elevation: 0,
            backgroundColor: Colors.transparent,
            insetPadding: EdgeInsets.zero,
            child: Container(
              width: 150,
              height: 150,
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              child: Lottie.asset(
                'assets/animations/loading_2.json',
                width: 150,
                height: 150,
                repeat: true,
              ),
            ),
          );
        });
  }

  void dismiss({int seconds = 1, Function? onFinished}) {
    Timer(Duration(seconds: seconds), () {
      Navigator.of(context).pop();
      if (onFinished != null) {
        onFinished();
      }
    });
  }
}
