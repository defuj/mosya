import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mosya/pages/auth/reset_password_page.dart';
import 'package:mosya/utils/customcolor.dart';
import 'package:mosya/utils/dialogs.dart';
import 'package:mosya/utils/helper.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OnTimePasswordPage extends StatefulWidget {
  final String email;
  final String action;
  const OnTimePasswordPage({
    Key? key,
    required this.email,
    required this.action,
  }) : super(key: key);

  @override
  State<OnTimePasswordPage> createState() => _OnTimePasswordState();
}

Timer? timer;

class _OnTimePasswordState extends State<OnTimePasswordPage> {
  String code = "";
  bool resendStatus = false;
  double time = 60;

  void resendCode() {
    setState(() {
      time = 60;
      resendStatus = false;
    });

    const duration = Duration(milliseconds: 1000);
    timer = Timer.periodic(duration, (timer) {
      if (time == 0) {
        setState(() {
          timer.cancel();
          resendStatus = true;
        });
      } else {
        setState(() {
          time -= 1;
        });
      }
    });
  }

  void verificationCode() {
    if (code == "123456") {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => ResetPasswordPage(
            email: widget.email,
          ),
        ),
      );
    } else {
      Dialogs.buildDialog(
        typeDialog: DialogType.error,
        context: context,
        title: 'Perhatian',
        message: 'Kode verifikasi salah',
      );
    }
  }

  @override
  void initState() {
    resendCode();
    super.initState();
  }

  @override
  void dispose() {
    timer?.cancel();
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
          title: const Text(
            'Masukkan Kode Verifikasi',
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SvgPicture.asset(
                  'assets/icons/svg/fi-sr-shield-interrogation.svg',
                  width: 50,
                  color: CustomColor.orange500,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Masukan Kode OTP',
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: CustomColor.black700,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  'Masukan Kode OTP yang dikirim melalui email ke ${Helper.secureEmail(widget.email.toString())}',
                  style: const TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 14,
                    color: CustomColor.black500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 30, right: 30),
                child: PinCodeTextField(
                  length: 6,
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.underline,
                    fieldHeight: 50,
                    fieldWidth: 40,
                    inactiveColor: CustomColor.black600,
                    activeColor: CustomColor.orange500,
                    selectedColor: CustomColor.orange500,
                  ),
                  animationDuration: const Duration(milliseconds: 300),
                  backgroundColor: CustomColor.black50,
                  enableActiveFill: false,
                  onCompleted: (v) {
                    verificationCode();
                  },
                  onChanged: (value) {
                    code = value;
                  },
                  appContext: context,
                ),
              ),
              Visibility(
                visible: resendStatus,
                child: TextButton(
                  onPressed: () {
                    resendCode();
                  },
                  child: const Text(
                    'Kirim Ulang Kode',
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 14,
                      color: CustomColor.orange500,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: resendStatus == false,
                child: Text(
                  'Silahkan tunggu ${time.toInt()} detik untuk mengirim ulang.',
                  style: const TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 14,
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
