import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:isar/isar.dart';
import 'package:mosya/components/button.dart';
import 'package:mosya/components/text_field.dart';
import 'package:mosya/pages/auth/on_time_password_page.dart';
import 'package:mosya/utils/customcolor.dart';
import 'package:mosya/components/dialogs.dart';
import 'package:mosya/utils/helper.dart';
import 'package:mosya/models/users.dart';

class ForgotPassword extends StatefulWidget {
  final Isar isar;
  const ForgotPassword({Key? key, required this.isar}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  var email = "";

  void goToOTP() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => OnTimePasswordPage(
          isar: widget.isar,
          email: email,
          action: 'forgot_password',
        ),
      ),
    );
  }

  void sendRequest() {
    if (email.isNotEmpty) {
      if (Helper.isValidEmail(email)) {
        Progress progress = Progress(context: context);
        progress.show();

        widget.isar.users
            .filter()
            .userEmailEqualTo(email)
            .findAll()
            .then((result) {
          if (result.isNotEmpty) {
            progress.dismiss(
                seconds: 2,
                onFinished: () {
                  goToOTP();
                });
          } else {
            progress.dismiss(
                seconds: 2,
                onFinished: () {
                  Dialogs.buildGeneralDialog(
                    typeDialog: DialogType.warning,
                    context: context,
                    title: 'Perhatian',
                    message: 'Akun tidak ditemukan',
                  );
                });
          }
        });
      } else {
        Dialogs.buildGeneralDialog(
          typeDialog: DialogType.error,
          context: context,
          title: 'Perhatian',
          message: 'Email tidak valid',
        );
      }
    } else {
      Dialogs.buildGeneralDialog(
        typeDialog: DialogType.warning,
        context: context,
        title: 'Perhatian',
        message: 'Harap masukan email',
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
