import 'package:flutter/material.dart';
import 'package:mosya/pages/auth/forgot_password_page.dart';
import 'package:mosya/pages/auth/login_page.dart';
import 'package:mosya/pages/auth/on_time_password_page.dart';
import 'package:mosya/pages/auth/register_page.dart';
import 'package:mosya/pages/auth/reset_password_page.dart';
import 'package:mosya/pages/home/home_page.dart';
import 'package:mosya/pages/splash_screen_page.dart';
import 'package:page_transition/page_transition.dart';

void main() async {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mosya - Mobile Syariah",
      theme: ThemeData(
        fontFamily: 'OpenSans',
        primarySwatch: Colors.orange,
      ),
      home: const SplashScreenPage(),
      onGenerateRoute: (setting) {
        switch (setting.name) {
          case 'login':
            return PageTransition(
              child: const LoginPage(),
              type: PageTransitionType.fade,
              settings: setting,
            );
          case 'register':
            return PageTransition(
              child: const RegisterPage(),
              type: PageTransitionType.fade,
              settings: setting,
            );
          case 'home':
            return PageTransition(
              child: const HomePage(),
              type: PageTransitionType.fade,
              settings: setting,
            );
          case 'forgot_password':
            return PageTransition(
              child: const ForgotPassword(),
              type: PageTransitionType.fade,
              settings: setting,
            );
          case 'reset_password':
            return PageTransition(
              child: ResetPasswordPage(
                email: setting.arguments as String,
              ),
              type: PageTransitionType.fade,
              settings: setting,
            );
          case 'on_time_password':
            return PageTransition(
              child: OnTimePasswordPage(
                email: setting.arguments as String,
                action: setting.arguments as String,
              ),
              type: PageTransitionType.fade,
              settings: setting,
            );
        }
        return null;
      },
    );
  }
}
