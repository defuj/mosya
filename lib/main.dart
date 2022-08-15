import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isar/isar.dart';
import 'package:mosya/models/cars.dart';
import 'package:mosya/models/users.dart';
import 'package:mosya/pages/auth/forgot_password_page.dart';
import 'package:mosya/pages/auth/login_page.dart';
import 'package:mosya/pages/auth/on_time_password_page.dart';
import 'package:mosya/pages/auth/onboarding_page.dart';
import 'package:mosya/pages/auth/register_page.dart';
import 'package:mosya/pages/auth/reset_password_page.dart';
import 'package:mosya/pages/home/home_page.dart';
import 'package:mosya/pages/splash_screen_page.dart';
import 'package:page_transition/page_transition.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final isar = await Isar.open(
    schemas: [CarSchema, UserSchema],
    // directory: (await getApplicationDocumentsDirectory()).path,
  );

  HttpOverrides.global = MyHttpOverrides();
  setUrlStrategy(PathUrlStrategy());
  runApp(Main(
    isar: isar,
  ));
}

class Main extends StatelessWidget {
  final Isar isar;
  const Main({Key? key, required this.isar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mosya - Mobile Syariah",
      theme: ThemeData(
        primarySwatch: Colors.orange,
        textTheme: TextTheme(
          headline1: GoogleFonts.openSans(
            fontSize: 92,
            fontWeight: FontWeight.w300,
            // letterSpacing: -1.5,
          ),
          headline2: GoogleFonts.openSans(
            fontSize: 57,
            fontWeight: FontWeight.w300,
            // letterSpacing: -0.5,
          ),
          headline3: GoogleFonts.openSans(
            fontSize: 46,
            fontWeight: FontWeight.w400,
          ),
          headline4: GoogleFonts.openSans(
            fontSize: 32,
            fontWeight: FontWeight.w400,
            // letterSpacing: 0.25,
          ),
          headline5: GoogleFonts.openSans(
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
          headline6: GoogleFonts.openSans(
            fontSize: 19,
            fontWeight: FontWeight.w600,
            // letterSpacing: 0.15,
          ),
          subtitle1: GoogleFonts.roboto(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            // letterSpacing: 0.15,
          ),
          subtitle2: GoogleFonts.roboto(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            // letterSpacing: 0.1,
          ),
          bodyText1: GoogleFonts.openSans(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            // letterSpacing: 0.5,
          ),
          bodyText2: GoogleFonts.openSans(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            // letterSpacing: 0.25,
          ),
          button: GoogleFonts.openSans(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            // letterSpacing: 1.25,
          ),
          caption: GoogleFonts.openSans(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            // letterSpacing: 0.4,
          ),
          overline: GoogleFonts.openSans(
            fontSize: 10,
            fontWeight: FontWeight.w400,
            // letterSpacing: 1.5,
          ),
        ),
      ),
      home: const SplashScreenPage(),
      onGenerateRoute: (setting) {
        switch (setting.name) {
          case 'login':
            return PageTransition(
              child: LoginPage(
                isar: isar,
              ),
              type: PageTransitionType.fade,
              settings: setting,
            );
          case 'register':
            return PageTransition(
              child: RegisterPage(
                isar: isar,
              ),
              type: PageTransitionType.fade,
              settings: setting,
            );
          case 'home':
            return PageTransition(
              child: HomePage(
                isar: isar,
              ),
              type: PageTransitionType.fade,
              settings: setting,
            );
          case 'forgot_password':
            return PageTransition(
              child: ForgotPassword(
                isar: isar,
              ),
              type: PageTransitionType.fade,
              settings: setting,
            );
          case 'reset_password':
            return PageTransition(
              child: ResetPasswordPage(
                isar: isar,
                email: setting.arguments as String,
              ),
              type: PageTransitionType.fade,
              settings: setting,
            );
          case 'on_time_password':
            return PageTransition(
              child: OnTimePasswordPage(
                isar: isar,
                email: setting.arguments as String,
                action: setting.arguments as String,
              ),
              type: PageTransitionType.fade,
              settings: setting,
            );
          case 'onboarding':
            return PageTransition(
              child: const OnBoardingPage(),
              type: PageTransitionType.fade,
              settings: setting,
            );
        }
        return null;
      },
    );
  }
}
