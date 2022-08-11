import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:isar/isar.dart';
import 'package:mosya/components/button.dart';
import 'package:mosya/components/dialogs.dart';
import 'package:mosya/components/text_field.dart';
import 'package:mosya/models/users.dart';
import 'package:mosya/utils/customcolor.dart';
import 'package:mosya/utils/helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  final Isar isar;
  const LoginPage({Key? key, required this.isar}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var email = "";
  var password = "";

  void goHome() => Navigator.pushReplacementNamed(context, 'home');

  void goRegister() => Navigator.pushNamed(context, 'register');

  void goForgotPassword() => Navigator.pushNamed(context, 'forgot_password');

  void saveData(User user) async {
    final pref = await SharedPreferences.getInstance();
    await pref.setBool('isSignIn', true);
    await pref.setInt('userId', user.userId);
    await pref.setString('userName', '${user.userName}');
    await pref.setString('userEmail', '${user.userEmail}');
    await pref.setString('userPhone', '${user.userPhone}');
    await pref.setString('userPassword', '${user.userPassword}');
    await pref.setString('userPicture', '${user.userPicture}');

    goHome();
  }

  void checkAccount() {
    Progress progress = Progress(context: context);
    if (email.isNotEmpty && password.isNotEmpty) {
      progress.show();
      widget.isar.users
          .filter()
          .userEmailEqualTo(email)
          .and()
          .userPasswordEqualTo(password)
          .findAll()
          .then((result) {
        if (result.isNotEmpty) {
          progress.dismiss(
              seconds: 3,
              onFinished: () {
                saveData(result[0]);
              });
        } else {
          progress.dismiss(
              seconds: 3,
              onFinished: () {
                Dialogs.buildGeneralDialog(
                  typeDialog: DialogType.error,
                  context: context,
                  title: 'Oops',
                  message: 'Email atau password salah',
                  confirmText: 'Mengerti',
                );
              });
        }
      });
    } else {
      Dialogs.buildGeneralDialog(
        typeDialog: DialogType.warning,
        context: context,
        title: 'Perhatian',
        message: 'Harap masukan email dan kata sandi',
        confirmText: 'Mengerti',
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
        backgroundColor: CustomColor.black50,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 300,
                child: Container(
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
                    children: [
                      // logo
                      Container(
                        margin: const EdgeInsets.only(bottom: 8),
                        child: Image.asset(
                          "assets/images/app_icon_title_h.png",
                          width: double.infinity,
                        ),
                      ),
                      // email field
                      formDefault(
                        context: context,
                        onChange: (value) {
                          email = value;
                        },
                        hintText: 'Email',
                        prefixIcon: SvgPicture.asset(
                          'assets/icons/svg/fi-rr-at.svg',
                          width: 16,
                          color: CustomColor.black400,
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      // password field
                      formDefault(
                        context: context,
                        onChange: (value) {
                          password = Helper.encryptPassword(value);
                        },
                        hintText: 'Kata Sandi',
                        prefixIcon: SvgPicture.asset(
                          'assets/icons/svg/fi-rr-lock.svg',
                          width: 16,
                          color: CustomColor.black400,
                        ),
                        obscureText: true,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          margin: const EdgeInsets.only(top: 16),
                          child: RichText(
                            text: TextSpan(
                              text: 'Lupa kata sandi?',
                              style: Theme.of(context)
                                  .textTheme
                                  .button!
                                  .copyWith(color: CustomColor.orange500),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  goForgotPassword();
                                },
                            ),
                          ),
                        ),
                      ),
                      // login button
                      buttonDefault(
                        context: context,
                        onPressed: checkAccount,
                        text: 'Masuk',
                      ),
                      //container for register button
                      Container(
                        margin: const EdgeInsets.only(top: 16),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Belum punya akun? ",
                                style: Theme.of(context)
                                    .textTheme
                                    .button!
                                    .copyWith(color: CustomColor.black500),
                              ),
                              TextSpan(
                                text: "Daftar",
                                style: Theme.of(context)
                                    .textTheme
                                    .button!
                                    .copyWith(color: CustomColor.orange500),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    goRegister();
                                  },
                              ),
                            ],
                          ),
                        ),
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
