import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mosya/models/models.dart';
import 'package:mosya/objectbox.g.dart';
import 'package:mosya/utils/customcolor.dart';
import 'package:mosya/utils/helper.dart';

class ResetPasswordPage extends StatefulWidget {
  final String email;
  const ResetPasswordPage({Key? key, required this.email}) : super(key: key);

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  Store? _store;
  late Box<User>? userBox;

  String password = "";
  String confirmPassword = "";

  void resetPassword() {
    if (password.isNotEmpty) {
      if (confirmPassword.isNotEmpty) {
        if (password == confirmPassword) {
          final query =
              userBox?.query(User_.userEmail.equals(widget.email)).build();
          final result = query?.find();
          if (result!.isNotEmpty) {
            result[0].userPassword = Helper.encryptPassword(password);
            userBox?.put(result[0]);

            Fluttertoast.showToast(
              msg: "Password berhasil diubah",
              toastLength: Toast.LENGTH_SHORT,
              timeInSecForIosWeb: 2,
              gravity: ToastGravity.BOTTOM,
            );
          } else {
            Fluttertoast.showToast(
              msg: "Akun tidak ditemukan",
              toastLength: Toast.LENGTH_SHORT,
              timeInSecForIosWeb: 2,
              gravity: ToastGravity.BOTTOM,
            );
          }
          _store?.close();

          Navigator.pop(context);
        } else {
          Fluttertoast.showToast(
            msg: "Konfirmasi kata sandi tidak sama",
            toastLength: Toast.LENGTH_SHORT,
            timeInSecForIosWeb: 2,
            gravity: ToastGravity.BOTTOM,
          );
        }
      } else {
        Fluttertoast.showToast(
          msg: "Harap masukan konfirmasi kata sandi",
          toastLength: Toast.LENGTH_SHORT,
          timeInSecForIosWeb: 2,
          gravity: ToastGravity.BOTTOM,
        );
      }
    } else {
      Fluttertoast.showToast(
        msg: "Harap masukan kata sandi",
        toastLength: Toast.LENGTH_SHORT,
        timeInSecForIosWeb: 2,
        gravity: ToastGravity.BOTTOM,
      );
    }
  }

  @override
  void initState() {
    openStore().then((Store store) {
      setState(() {
        _store = store;
        userBox = _store?.box<User>();
      });
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
                      'Reset Kata Sandi',
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
                        'Silakan masukkan kata sandi baru untuk akun Anda.',
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontSize: 14,
                          color: CustomColor.black500,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 6, bottom: 6),
                      decoration: BoxDecoration(
                        color: CustomColor.black50,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(16, 12, 16, 12),
                          hintText: "Kata Sandi",
                          hintStyle: TextStyle(
                            color: CustomColor.black400,
                            fontFamily: 'OpenSans',
                            fontSize: 14,
                          ),
                          border: InputBorder.none,
                        ),
                        maxLines: 1,
                        onChanged: (value) {
                          password = value;
                        },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 6, bottom: 6),
                      decoration: BoxDecoration(
                        color: CustomColor.black50,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(16, 12, 16, 12),
                          hintText: "Konfirmasi Kata Sandi",
                          hintStyle: TextStyle(
                            color: CustomColor.black400,
                            fontFamily: 'OpenSans',
                            fontSize: 14,
                          ),
                          border: InputBorder.none,
                        ),
                        maxLines: 1,
                        onChanged: (value) {
                          confirmPassword = value;
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
                          resetPassword();
                        },
                        child: const Text(
                          'Reset Kata Sandi',
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
