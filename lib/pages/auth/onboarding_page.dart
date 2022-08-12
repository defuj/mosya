import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:mosya/components/button.dart';
import 'package:mosya/utils/customcolor.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/animations/car_2.json',
              width: double.infinity,
              repeat: true,
            ),
            SizedBox(
              width: 300,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 8.0, right: 8.0, bottom: 16.0),
                    child: Text(
                      'Sedang cari mobil bekas?',
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Text(
                    'Mosya - Mobil Syariah hadir membantu Anda yang sedang mencari mobil bekas ataupun mobil baru.',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: CustomColor.black500),
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: buttonCustom(
                      context: context,
                      radius: 16,
                      height: 50,
                      onPressed: () {
                        Navigator.pushNamed(context, 'login');
                      },
                      text: 'Masuk Sekarang',
                      textStyle: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
