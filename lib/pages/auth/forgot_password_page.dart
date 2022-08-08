import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mosya/models/models.dart';
import 'package:mosya/objectbox.g.dart';
import 'package:mosya/pages/auth/on_time_password_page.dart';
import 'package:mosya/utils/customcolor.dart';
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
          Fluttertoast.showToast(
            msg: "Akun tidak ditemukan",
            toastLength: Toast.LENGTH_SHORT,
            timeInSecForIosWeb: 2,
            gravity: ToastGravity.BOTTOM,
          );
        } else {
          _store?.close();
          Fluttertoast.showToast(
            msg: "Kami telah mengirimkan kode verifikasi ke email anda",
            toastLength: Toast.LENGTH_SHORT,
            timeInSecForIosWeb: 2,
            gravity: ToastGravity.BOTTOM,
          );

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
        Fluttertoast.showToast(
          msg: "Email tidak valid",
          toastLength: Toast.LENGTH_SHORT,
          timeInSecForIosWeb: 2,
          gravity: ToastGravity.BOTTOM,
        );
      }
    } else {
      Fluttertoast.showToast(
        msg: "Harap masukan email",
        toastLength: Toast.LENGTH_SHORT,
        timeInSecForIosWeb: 2,
        gravity: ToastGravity.BOTTOM,
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
    return Scaffold(
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
                    const Text(
                      'Lupa Kata Sandi',
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 22,
                        color: CustomColor.black700,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 6),
                      child: const Text(
                        'Silakan masukkan email akun Anda dan kami akan mengirimkan kode verifikasi untuk mereset kata sandi Anda.',
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontSize: 14,
                          color: CustomColor.black500,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 16),
                      child: const Text(
                        'Alamat Email',
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontSize: 14,
                          color: CustomColor.black700,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 6, bottom: 6),
                      decoration: BoxDecoration(
                        color: CustomColor.black50,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(16, 12, 16, 12),
                          hintText: "ex : user@domain.com",
                          hintStyle: TextStyle(
                            color: CustomColor.black400,
                            fontFamily: 'OpenSans',
                            fontSize: 14,
                          ),
                          border: InputBorder.none,
                        ),
                        keyboardType: TextInputType.emailAddress,
                        maxLines: 1,
                        onChanged: (value) {
                          email = value;
                        },
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 46,
                      margin: const EdgeInsets.only(top: 16),
                      decoration: BoxDecoration(
                        color: CustomColor.orange500,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: TextButton(
                        onPressed: () {
                          sendRequest();
                        },
                        child: const Text(
                          'Kirim kode verifikasi',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'OpenSans',
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
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
    );
  }
}
