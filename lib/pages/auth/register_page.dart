import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mosya/components/button.dart';
import 'package:mosya/components/text_field.dart';
import 'package:mosya/models/models.dart';
import 'package:mosya/objectbox.g.dart';
import 'package:mosya/utils/customcolor.dart';
import 'package:mosya/utils/dialogs.dart';
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
                Dialogs.buildDialog(
                  context: context,
                  title: "Berhail",
                  message: "Pendafataran berhasil",
                  typeDialog: DialogType.success,
                  isCancelable: false,
                  confirmText: "Masuk",
                  onConfirm: () => setData(userModel),
                );
                // setData(userModel);
              } else {
                Dialogs.buildDialog(
                  context: context,
                  title: "Perhatian",
                  message: "Nomor telpon sudah digunakan",
                  typeDialog: DialogType.error,
                );
              }
            } else {
              Dialogs.buildDialog(
                context: context,
                title: "Perhatian",
                message: "Alamat email sudah digunakan",
                typeDialog: DialogType.error,
              );
            }
            checkEmail?.close();
            checkPhone?.close();
          } else {
            Dialogs.buildDialog(
              context: context,
              title: "Perhatian",
              message: "Konfirmasi kata sandi tidak sama",
              typeDialog: DialogType.error,
            );
          }
        } else {
          Dialogs.buildDialog(
            context: context,
            title: "Perhatian",
            message: "Alamat email tidak valid",
            typeDialog: DialogType.error,
          );
        }
      } else {
        Dialogs.buildDialog(
          context: context,
          title: "Perhatian",
          message: "Nomor telpon tidak valid",
          typeDialog: DialogType.error,
        );
      }
    } else {
      Dialogs.buildDialog(
        context: context,
        title: "Perhatian",
        message: "Form tidak boleh kosong",
        typeDialog: DialogType.error,
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
