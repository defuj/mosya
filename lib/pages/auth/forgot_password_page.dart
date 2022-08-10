import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mosya/components/button.dart';
import 'package:mosya/components/text_field.dart';
import 'package:mosya/models/models.dart';
import 'package:mosya/objectbox.g.dart';
import 'package:mosya/pages/auth/on_time_password_page.dart';
import 'package:mosya/utils/customcolor.dart';
import 'package:mosya/components/dialogs.dart';
import 'package:mosya/utils/helper.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

Store? _store;
Box<User>? userBox;

class _ForgotPasswordState extends State<ForgotPassword> {
  var email = "";

  void sendRequest() {
    if (email.isNotEmpty) {
      if (Helper.isValidEmail(email)) {
        final check = userBox?.query(User_.userEmail.equals(email)).build();
        if (check!.find().isEmpty) {
          Dialogs.buildDialog(
            typeDialog: DialogType.warning,
            context: context,
            title: 'Perhatian',
            message: 'Akun tidak ditemukan',
          );
        } else {
          _store?.close();

          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => OnTimePasswordPage(
                email: email,
                action: 'forgot_password',
              ),
            ),
          );
        }
      } else {
        Dialogs.buildDialog(
          typeDialog: DialogType.error,
          context: context,
          title: 'Perhatian',
          message: 'Email tidak valid',
        );
      }
    } else {
      Dialogs.buildDialog(
        typeDialog: DialogType.error,
        context: context,
        title: 'Perhatian',
        message: 'Harap masukan email',
      );
    }
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
                        'Lupa Kata Sandi',
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                              color: CustomColor.black700,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 6),
                        child: Text(
                          'Silakan masukkan email akun Anda dan kami akan mengirimkan kode verifikasi untuk mereset kata sandi Anda.',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(color: CustomColor.black500),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 16),
                        child: Text(
                          'Alamat Email',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(color: CustomColor.black700),
                        ),
                      ),
                      formDefault(
                        context: context,
                        onChange: (value) {
                          email = value;
                        },
                        hintText: 'ex : user@domain.com',
                        keyboardType: TextInputType.emailAddress,
                      ),
                      buttonDefault(
                        context: context,
                        onPressed: sendRequest,
                        text: 'Kirim Kode Verifikasi',
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
