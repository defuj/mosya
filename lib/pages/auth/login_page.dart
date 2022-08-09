import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mosya/models/models.dart';
import 'package:mosya/objectbox.g.dart';
import 'package:mosya/utils/customcolor.dart';
import 'package:mosya/utils/dialogs.dart';
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
          context: context,
          title: 'Perhatian',
          message: 'Email atau password salah',
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
                      Container(
                        margin: const EdgeInsets.only(top: 12),
                        decoration: BoxDecoration(
                          color: CustomColor.black50,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.fromLTRB(16, 12, 16, 12),
                            hintText: "Email",
                            hintStyle: const TextStyle(
                              color: CustomColor.black400,
                              fontFamily: 'OpenSans',
                              fontSize: 14,
                            ),
                            border: InputBorder.none,
                            prefixIcon: Align(
                              heightFactor: 1.0,
                              widthFactor: 1.0,
                              child: SvgPicture.asset(
                                'assets/icons/svg/fi-rr-at.svg',
                                width: 16,
                                color: CustomColor.black400,
                              ),
                            ),
                          ),
                          keyboardType: TextInputType.emailAddress,
                          onChanged: (value) {
                            email = value;
                          },
                        ),
                      ),
                      // password field
                      Container(
                        margin: const EdgeInsets.only(top: 12),
                        decoration: BoxDecoration(
                          color: CustomColor.black50,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.fromLTRB(16, 12, 16, 12),
                            hintText: "Kata Sandi",
                            hintStyle: const TextStyle(
                              color: CustomColor.black400,
                              fontFamily: 'OpenSans',
                              fontSize: 14,
                            ),
                            border: InputBorder.none,
                            prefixIcon: Align(
                              widthFactor: 1.0,
                              heightFactor: 1.0,
                              child: SvgPicture.asset(
                                'assets/icons/svg/fi-rr-lock.svg',
                                width: 16,
                                color: CustomColor.black400,
                              ),
                            ),
                          ),
                          obscuringCharacter: '*',
                          onChanged: (value) {
                            password = value;
                          },
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          margin: const EdgeInsets.only(top: 16),
                          child: RichText(
                            text: TextSpan(
                              text: 'Lupa kata sandi?',
                              style: const TextStyle(
                                color: CustomColor.orange500,
                                fontFamily: 'OpenSans',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
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
                      Container(
                        width: double.infinity,
                        height: 46,
                        decoration: BoxDecoration(
                          color: CustomColor.orange500,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        margin: const EdgeInsets.only(top: 16),
                        child: TextButton(
                          onPressed: () {
                            checkAccount();
                          },
                          child: const Text(
                            "Masuk",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'OpenSans',
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                      //container for register button
                      Container(
                        margin: const EdgeInsets.only(top: 16),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              const TextSpan(
                                text: "Belum punya akun? ",
                                style: TextStyle(
                                  color: CustomColor.black500,
                                  fontFamily: 'OpenSans',
                                  fontSize: 14,
                                ),
                              ),
                              TextSpan(
                                text: "Daftar",
                                style: const TextStyle(
                                  color: CustomColor.orange500,
                                  fontFamily: 'OpenSans',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
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
