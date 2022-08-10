import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
        textTheme: TextTheme(
          headline1: GoogleFonts.roboto(
            fontSize: 92,
            fontWeight: FontWeight.w300,
            letterSpacing: -1.5,
          ),
          headline2: GoogleFonts.roboto(
            fontSize: 57,
            fontWeight: FontWeight.w300,
            letterSpacing: -0.5,
          ),
          headline3: GoogleFonts.roboto(
            fontSize: 46,
            fontWeight: FontWeight.w400,
          ),
          headline4: GoogleFonts.roboto(
            fontSize: 32,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.25,
          ),
          headline5: GoogleFonts.roboto(
            fontSize: 23,
            fontWeight: FontWeight.w400,
          ),
          headline6: GoogleFonts.roboto(
            fontSize: 19,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.15,
          ),
          subtitle1: GoogleFonts.roboto(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.15,
          ),
          subtitle2: GoogleFonts.roboto(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.1,
          ),
          bodyText1: GoogleFonts.openSans(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.5,
          ),
          bodyText2: GoogleFonts.openSans(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.25,
          ),
          button: GoogleFonts.openSans(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            letterSpacing: 1.25,
          ),
          caption: GoogleFonts.openSans(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.4,
          ),
          overline: GoogleFonts.openSans(
            fontSize: 10,
            fontWeight: FontWeight.w400,
            letterSpacing: 1.5,
          ),
        ),
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
