import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:isar/isar.dart';
import 'package:mosya/components/button.dart';
import 'package:mosya/components/text_field.dart';
import 'package:mosya/models/users.dart';
import 'package:mosya/utils/customcolor.dart';
import 'package:mosya/components/dialogs.dart';
import 'package:mosya/utils/helper.dart';

class ResetPasswordPage extends StatefulWidget {
  final String email;
  final Isar isar;
  const ResetPasswordPage({
    Key? key,
    required this.email,
    required this.isar,
  }) : super(key: key);

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  String password = "";
  String confirmPassword = "";

  void resetPassword() {
    if (password.isNotEmpty) {
      if (confirmPassword.isNotEmpty) {
        if (password == confirmPassword) {
          Progress progress = Progress(context: context);
          progress.show();
          widget.isar.users
              .filter()
              .userEmailEqualTo(widget.email)
              .findAll()
              .then((result) {
            if (result.isNotEmpty) {
              final user = result[0];
              if (user.userPassword != password) {
                widget.isar.writeTxn(
                    () => widget.isar.users.put(user..userPassword = password));
                progress.dismiss(
                    seconds: 2,
                    onFinished: () {
                      Dialogs.buildDialog(
                          isCancelable: false,
                          typeDialog: DialogType.success,
                          context: context,
                          title: 'Berhasil',
                          message: 'Kata sandi Anda berhasil diubah',
                          onConfirm: () {
                            Navigator.pop(context);
                          });
                    });
              } else {
                progress.dismiss(
                    seconds: 2,
                    onFinished: () {
                      Dialogs.buildDialog(
                        typeDialog: DialogType.error,
                        context: context,
                        title: 'Gagal',
                        message: 'Silahkan gunakan kata sandi lain',
                      );
                    });
              }
            } else {
              progress.dismiss(
                  seconds: 2,
                  onFinished: () {
                    Dialogs.buildDialog(
                      typeDialog: DialogType.error,
                      context: context,
                      title: 'Oops',
                      message: 'Akun tidak ditemukan',
                    );
                  });
            }
          });
        } else {
          Dialogs.buildDialog(
            typeDialog: DialogType.error,
            context: context,
            title: 'Perhatian',
            message: 'Konfirmasi kata sandi tidak sama',
          );
        }
      } else {
        Dialogs.buildDialog(
          typeDialog: DialogType.error,
          context: context,
          title: 'Perhatian',
          message: 'Harap masukan konfirmasi kata sandi',
        );
      }
    } else {
      Dialogs.buildDialog(
        typeDialog: DialogType.error,
        context: context,
        title: 'Perhatian',
        message: 'Harap masukan kata sandi',
      );
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        backgroundColor: CustomColor.black50,
        appBar: AppBar(
          backgroundColor: CustomColor.black50,
          shadowColor: null,
          elevation: 0,
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                width: 350,
                child: Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: const [
                      BoxShadow(
                        color: CustomColor.black200,
                        blurRadius: 10,
                        offset: Offset(0, 10),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Reset Kata Sandi',
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                              color: CustomColor.black700,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 6),
                        child: Text(
                          'Silakan masukkan kata sandi baru untuk akun Anda.',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(color: CustomColor.black500),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      formDefault(
                        context: context,
                        onChange: (value) {
                          password = Helper.encryptPassword(value);
                        },
                        hintText: 'Kata Sandi',
                        obscureText: true,
                        obscuringCharacter: "*",
                        prefixIcon: SvgPicture.asset(
                          'assets/icons/svg/fi-rr-lock.svg',
                          width: 16,
                          color: CustomColor.black400,
                        ),
                      ),
                      formDefault(
                        context: context,
                        onChange: (value) {
                          confirmPassword = Helper.encryptPassword(value);
                        },
                        hintText: 'Konfirmasi Kata Sandi',
                        obscureText: true,
                        obscuringCharacter: "*",
                        prefixIcon: SvgPicture.asset(
                          'assets/icons/svg/fi-rr-lock.svg',
                          width: 16,
                          color: CustomColor.black400,
                        ),
                      ),
                      buttonDefault(
                        context: context,
                        onPressed: resetPassword,
                        text: 'Reset Kata Sandi',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
