import 'package:flutter/gestures.dart';
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
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Store? _store;
  late Box<User>? userBox;
  var email = "";
  var password = "";

  void goHome() {
    _store?.close();
    Navigator.pushReplacementNamed(context, 'home');
  }

  void saveData(User user) async {
    final pref = await SharedPreferences.getInstance();
    await pref.setBool('isSignIn', true);
    await pref.setInt('userId', user.userId);
    await pref.setString('userName', '${user.userName}');
    await pref.setString('userEmail', "${user.userEmail}");
    await pref.setString('userPhone', '${user.userPhone}');
    await pref.setString('userPassword', '${user.userPassword}');
    await pref.setString('userPicture', '${user.userPicture}');

    goHome();
  }

  void checkAccount() {
    if (email.isNotEmpty && password.isNotEmpty) {
      final query = userBox
          ?.query(
            User_.userEmail.equals(email) &
                User_.userPassword.equals(Helper.encryptPassword(password)),
          )
          .build();
      final result = query?.find();
      if (result!.isNotEmpty) {
        saveData(result[0]);
      } else {
        Dialogs.buildDialog(
          typeDialog: DialogType.warning,
          context: context,
          title: 'Perhatian',
          message: 'Email atau password salah',
          confirmText: 'Mengerti',
        );
      }
    } else {
      Dialogs.buildDialog(
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
    _store?.close();
    super.dispose();
  }

  @override
  void initState() {
    openStore().then((Store store) {
      _store = store;
      userBox = _store?.box<User>();
    });
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
                          password = value;
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
                                  _store?.close();
                                  Navigator.pushNamed(
                                      context, 'forgot_password');
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
                                    _store?.close();
                                    Navigator.pushNamed(context, 'register');
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
