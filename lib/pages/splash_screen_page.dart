import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Image.asset(
            'assets/images/app_icon_title.png',
            width: 150,
          ),
        ));
  }

  void isSignIn() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isSignIn = prefs.getBool('isSignIn') ?? false;
    Timer(
      const Duration(seconds: 3),
      () => {
        if (isSignIn)
          {Navigator.pushReplacementNamed(context, 'home')}
        else
          {Navigator.pushReplacementNamed(context, 'onboarding')}
      },
    );
  }

  @override
  void initState() {
    isSignIn();
    super.initState();
  }
}
