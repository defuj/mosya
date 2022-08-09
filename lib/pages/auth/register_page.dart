import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mosya/models/models.dart';
import 'package:mosya/objectbox.g.dart';
import 'package:mosya/utils/customcolor.dart';
import 'package:mosya/utils/helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  Store? _store;
  Box<User>? userBox;

  var name = "";
  var phone = "";
  var email = "";
  var password = "";
  var confirmPassword = "";

  void goHome() {
    _store?.close();
    Navigator.pushReplacementNamed(context, 'home');
  }

  void setData(User user) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isSignIn', true);
    await prefs.setInt('userId', user.userId);

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
            // check email is already used
            final checkEmail =
                userBox?.query(User_.userEmail.equals(email)).build();
            // check phone is already used
            final checkPhone =
                userBox?.query(User_.userPhone.equals(phone)).build();
            final resultCheckEmail = checkEmail?.find();
            final resultCheckPhone = checkPhone?.find();
            if (resultCheckEmail!.isEmpty) {
              if (resultCheckPhone!.isEmpty) {
                // get max id
                int userId = 0;
                // if (userBox!.count() > 0) {
                //   userId = userBox!.getAll().last.userId + 1;
                // }
                final userModel = User(
                  userId: userId,
                  userName: name,
                  userEmail: email,
                  userPhone: phone,
                  userPassword: Helper.encryptPassword(confirmPassword),
                );
                userBox?.put(userModel);

                Fluttertoast.showToast(
                  msg: "Pendaftaran Berhasil",
                  toastLength: Toast.LENGTH_LONG,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIosWeb: 2,
                );
                // setData(userModel);
              } else {
                Fluttertoast.showToast(
                  msg: "Nomor telpon sudah digunakan",
                  toastLength: Toast.LENGTH_LONG,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIosWeb: 2,
                );
              }
            } else {
              Fluttertoast.showToast(
                msg: "Alamat email sudah digunakan",
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 2,
              );
            }
            checkEmail?.close();
            checkPhone?.close();
          } else {
            Fluttertoast.showToast(
              msg: "Konfirmasi kata sandi tidak sama",
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 2,
            );
          }
        } else {
          Fluttertoast.showToast(
            msg: "Alamat Email tidak valid",
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 2,
          );
        }
      } else {
        Fluttertoast.showToast(
          msg: "Nomor Telpol tidak valid",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 2,
        );
      }
    } else {
      Fluttertoast.showToast(
        msg: "Form tidak boleh kosong",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 2,
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
                            const Text(
                              'Mendaftar',
                              style: TextStyle(
                                fontFamily: 'OpenSans',
                                fontSize: 16,
                                color: CustomColor.black500,
                              ),
                            ),
                            const Text(
                              'Siapkan Akun kamu',
                              style: TextStyle(
                                fontFamily: 'OpenSans',
                                fontSize: 20,
                                color: CustomColor.black700,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 30),
                              child: const Text(
                                'Masukan informasi akun kamu',
                                style: TextStyle(
                                  fontFamily: 'OpenSans',
                                  fontSize: 14,
                                  color: CustomColor.black500,
                                ),
                              ),
                            ),
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
                                  hintText: "Nama Lengkap",
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
                                      'assets/icons/svg/fi-rr-user.svg',
                                      width: 16,
                                      color: CustomColor.black400,
                                    ),
                                  ),
                                ),
                                keyboardType: TextInputType.name,
                                maxLines: 1,
                                onChanged: (value) {
                                  name = value;
                                },
                              ),
                            ),
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
                                  hintText: "Nomor Telpon",
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
                                      'assets/icons/svg/fi-rr-hastag.svg',
                                      width: 16,
                                      color: CustomColor.black400,
                                    ),
                                  ),
                                ),
                                keyboardType: TextInputType.phone,
                                maxLines: 1,
                                onChanged: (value) {
                                  phone = value;
                                },
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 12),
                              decoration: BoxDecoration(
                                color: CustomColor.black50,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: TextFormField(
                                textAlignVertical: TextAlignVertical.center,
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
                                maxLines: 1,
                                onChanged: (value) {
                                  email = value;
                                },
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 12),
                              decoration: BoxDecoration(
                                color: CustomColor.black50,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: TextFormField(
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
                                maxLines: 1,
                                onChanged: (value) {
                                  password = value;
                                },
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 12),
                              decoration: BoxDecoration(
                                color: CustomColor.black50,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  contentPadding:
                                      const EdgeInsets.fromLTRB(16, 12, 16, 12),
                                  hintText: "Konfirmasi Kata Sandi",
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
                                maxLines: 1,
                                onChanged: (value) {
                                  confirmPassword = value;
                                },
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 16),
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  children: [
                                    const TextSpan(
                                      text:
                                          'Dengan mendaftar, kamu menyetujui ',
                                      style: TextStyle(
                                        color: CustomColor.black500,
                                        fontFamily: 'OpenSans',
                                        fontSize: 14,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Syarat Ketentuan',
                                      style: const TextStyle(
                                        color: CustomColor.orange500,
                                        fontFamily: 'OpenSans',
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {},
                                    ),
                                    const TextSpan(
                                      text: ' dan ',
                                      style: TextStyle(
                                        color: CustomColor.black500,
                                        fontFamily: 'OpenSans',
                                        fontSize: 14,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Kebijakan Privasi',
                                      style: const TextStyle(
                                        color: CustomColor.orange500,
                                        fontFamily: 'OpenSans',
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {},
                                    ),
                                    const TextSpan(
                                      text: ' kami.',
                                      style: TextStyle(
                                        color: CustomColor.black500,
                                        fontFamily: 'OpenSans',
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              margin: const EdgeInsets.only(top: 16),
                              decoration: BoxDecoration(
                                color: CustomColor.orange500,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: TextButton(
                                onPressed: () {
                                  checkForm();
                                },
                                child: const Text(
                                  'Buat Akun',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'OpenSans',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            )
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
