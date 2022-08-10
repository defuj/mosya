import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mosya/components/button.dart';
import 'package:mosya/components/text_field.dart';
import 'package:mosya/models/models.dart';
import 'package:mosya/objectbox.g.dart';
import 'package:mosya/utils/customcolor.dart';
import 'package:mosya/components/dialogs.dart';
import 'package:mosya/utils/helper.dart';

class ResetPasswordPage extends StatefulWidget {
  final String email;
  const ResetPasswordPage({Key? key, required this.email}) : super(key: key);

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  Store? _store;
  late Box<User>? userBox;

  String password = "";
  String confirmPassword = "";

  void resetPassword() {
    if (password.isNotEmpty) {
      if (confirmPassword.isNotEmpty) {
        if (password == confirmPassword) {
          final query =
              userBox?.query(User_.userEmail.equals(widget.email)).build();
          final result = query?.find();
          if (result!.isNotEmpty) {
            if (result[0].userPassword != Helper.encryptPassword(password)) {
              result[0].userPassword = Helper.encryptPassword(password);
              userBox?.put(result[0]);
              Dialogs.buildDialog(
                  isCancelable: false,
                  typeDialog: DialogType.success,
                  context: context,
                  title: 'Berhasil',
                  message: 'Kata sandi berhasil diubah',
                  onConfirm: () {
                    _store?.close();
                    Navigator.pop(context);
                  });
            } else {
              Dialogs.buildDialog(
                typeDialog: DialogType.error,
                context: context,
                title: 'Gagal',
                message: 'Silahkan gunakan kata sandi lain',
              );
            }
          } else {
            Dialogs.buildDialog(
              typeDialog: DialogType.error,
              context: context,
              title: 'Perhatian',
              message: 'Akun tidak ditemukan',
            );
          }
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
    openStore().then((Store store) {
      setState(() {
        _store = store;
        userBox = _store?.box<User>();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _store?.close();
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
                          password = value;
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
                          confirmPassword = value;
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
