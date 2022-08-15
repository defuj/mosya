import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:isar/isar.dart';
import 'package:mosya/components/button.dart';
import 'package:mosya/components/text_field.dart';
import 'package:mosya/models/users.dart';
import 'package:mosya/utils/customcolor.dart';
import 'package:mosya/components/dialogs.dart';
import 'package:mosya/utils/helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterPage extends StatefulWidget {
  final Isar isar;
  const RegisterPage({
    Key? key,
    required this.isar,
  }) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var name = "";
  var phone = "";
  var email = "";
  var password = "";
  var confirmPassword = "";

  void goHome() {
    Navigator.pushReplacementNamed(context, 'home');
  }

  void setData(User user) async {
    final pref = await SharedPreferences.getInstance();
    await pref.setBool('isSignIn', true);
    await pref.setInt('userId', user.userId!.toInt());
    await pref.setString('userName', '${user.userName}');
    await pref.setString('userEmail', '${user.userEmail}');
    await pref.setString('userPhone', '${user.userPhone}');
    await pref.setString('userPassword', '${user.userPassword}');
    await pref.setString('userPicture', '${user.userPicture}');

    goHome();
  }

  void checkForm() {
    if (name.isNotEmpty &&
        phone.isNotEmpty &&
        email.isNotEmpty &&
        password.isNotEmpty &&
        confirmPassword.isNotEmpty) {
      if (Helper.isValidPhone(phone)) {
        if (Helper.isValidEmail(email)) {
          if (password == confirmPassword) {
            Dialogs.buildGeneralDialog(
              context: context,
              typeDialog: DialogType.warning,
              title: 'Perhatian',
              message:
                  'Apakah semua data sudah benar? Silahkan lanjutkan jika data sudah benar.',
              confirmText: 'Lanjutkan',
              onConfirm: () {
                Progress progress = Progress(context: context);
                progress.show();
                // check email is already used
                widget.isar.users
                    .filter()
                    .userEmailEqualTo(email)
                    .findAll()
                    .then((result) {
                  if (result.isEmpty) {
                    // check phone number is already used
                    widget.isar.users
                        .filter()
                        .userPhoneEqualTo(phone)
                        .findAll()
                        .then((value) {
                      if (result.isEmpty) {
                        // insert new user
                        final user = User()
                          ..userName = name
                          ..userPhone = phone
                          ..userEmail = email
                          ..userPassword = password;
                        widget.isar
                            .writeTxn((txn) => widget.isar.users.put(user));
                        widget.isar.users
                            .filter()
                            .userEmailEqualTo(email)
                            .and()
                            .userPasswordEqualTo(password)
                            .findAll()
                            .then((result) {
                          setData(result[0]);
                        });

                        progress.dismiss(
                            seconds: 3,
                            onFinished: () {
                              Dialogs.buildGeneralDialog(
                                context: context,
                                title: "Berhail",
                                message: "Pendafataran berhasil",
                                typeDialog: DialogType.success,
                                isCancelable: false,
                                confirmText: "Masuk",
                                onConfirm: () => {setData(user)},
                              );
                            });
                      } else {
                        progress.dismiss(
                            seconds: 3,
                            onFinished: () {
                              Dialogs.buildGeneralDialog(
                                context: context,
                                title: "Oops",
                                message: "Nomor telpon sudah digunakan",
                                typeDialog: DialogType.error,
                              );
                            });
                      }
                    });
                  } else {
                    progress.dismiss(
                        seconds: 3,
                        onFinished: () {
                          Dialogs.buildGeneralDialog(
                            context: context,
                            title: "Oops",
                            message: "Alamat email sudah digunakan",
                            typeDialog: DialogType.error,
                          );
                        });
                  }
                });
              },
              cancelText: 'Batal',
            );
          } else {
            Dialogs.buildGeneralDialog(
              context: context,
              title: "Perhatian",
              message: "Konfirmasi kata sandi tidak sama",
              typeDialog: DialogType.warning,
            );
          }
        } else {
          Dialogs.buildGeneralDialog(
            context: context,
            title: "Perhatian",
            message: "Alamat email tidak valid",
            typeDialog: DialogType.warning,
          );
        }
      } else {
        Dialogs.buildGeneralDialog(
          context: context,
          title: "Perhatian",
          message: "Nomor telpon tidak valid",
          typeDialog: DialogType.warning,
        );
      }
    } else {
      Dialogs.buildGeneralDialog(
        context: context,
        title: "Perhatian",
        message: "Form tidak boleh kosong",
        typeDialog: DialogType.warning,
      );
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
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
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            backgroundColor: CustomColor.black50,
            shadowColor: null,
            elevation: 0,
          ),
          backgroundColor: CustomColor.black50,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Column(
                    children: [
                      Container(
                        width: 350,
                        margin: const EdgeInsets.all(20),
                        padding: const EdgeInsets.all(20),
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
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Mendaftar',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(color: CustomColor.black500),
                            ),
                            Text(
                              'Siapkan Akun kamu',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(
                                    color: CustomColor.black700,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 30),
                              child: Text(
                                'Masukan informasi akun kamu',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(color: CustomColor.black500),
                              ),
                            ),
                            formDefault(
                              context: context,
                              onChange: (value) {
                                name = value;
                              },
                              hintText: 'Nama Lengkap',
                              prefixIcon: SvgPicture.asset(
                                'assets/icons/svg/fi-rr-user.svg',
                                width: 16,
                                color: CustomColor.black400,
                              ),
                              keyboardType: TextInputType.name,
                            ),
                            formDefault(
                              context: context,
                              onChange: (value) {
                                phone = value;
                              },
                              hintText: 'Nomor Telpon',
                              prefixIcon: SvgPicture.asset(
                                'assets/icons/svg/fi-rr-hastag.svg',
                                width: 16,
                                color: CustomColor.black400,
                              ),
                              keyboardType: TextInputType.phone,
                            ),
                            formDefault(
                              context: context,
                              onChange: (value) {
                                email = value;
                              },
                              hintText: 'Email',
                              keyboardType: TextInputType.emailAddress,
                              prefixIcon: SvgPicture.asset(
                                'assets/icons/svg/fi-rr-at.svg',
                                width: 16,
                                color: CustomColor.black400,
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
                            Container(
                              margin: const EdgeInsets.only(top: 16),
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text:
                                          'Dengan mendaftar, kamu menyetujui ',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2!
                                          .copyWith(
                                              color: CustomColor.black500),
                                    ),
                                    TextSpan(
                                      text: 'Syarat Ketentuan',
                                      style: Theme.of(context)
                                          .textTheme
                                          .button!
                                          .copyWith(
                                            color: CustomColor.orange500,
                                            fontWeight: FontWeight.bold,
                                          ),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {},
                                    ),
                                    TextSpan(
                                      text: ' dan ',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2!
                                          .copyWith(
                                              color: CustomColor.black500),
                                    ),
                                    TextSpan(
                                      text: 'Kebijakan Privasi',
                                      style: Theme.of(context)
                                          .textTheme
                                          .button!
                                          .copyWith(
                                            color: CustomColor.orange500,
                                            fontWeight: FontWeight.bold,
                                          ),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {},
                                    ),
                                    TextSpan(
                                      text: ' kami.',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2!
                                          .copyWith(
                                              color: CustomColor.black500),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            buttonDefault(
                              context: context,
                              onPressed: checkForm,
                              text: 'Buat Akun',
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        'assets/images/app_icon_title_h.png',
                        width: 200,
                        color: CustomColor.black300,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
