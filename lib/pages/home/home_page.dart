import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:isar/isar.dart';
import 'package:mosya/pages/home/booking_page.dart';
import 'package:mosya/pages/home/home_screen.dart';
import 'package:mosya/pages/home/profile_screen.dart';
import 'package:mosya/utils/customcolor.dart';
import 'package:mosya/components/dialogs.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  final Isar isar;
  const HomePage({
    Key? key,
    required this.isar,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  void insertCar() {}

  void goToLoginPage() {
    Navigator.pushReplacementNamed(
      context,
      'onboarding',
    );
  }

  void logOut() {
    Dialogs.buildDialog(
      typeDialog: DialogType.warning,
      context: context,
      title: 'Perhatian',
      message: 'Apakah anda yakin ingin keluar?',
      confirmText: 'Keluar',
      cancelText: 'Batal',
      onConfirm: () async {
        final pref = await SharedPreferences.getInstance();
        await pref.remove('isSignIn');
        await pref.remove('userId');

        goToLoginPage();
      },
    );
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _refreshIndicatorKey.currentState?.show();
    });
    // insertCar();
    super.initState();
  }

  final _refreshIndicatorKey = GlobalKey<RefreshIndicatorState>();

  static final screenOpstions = [
    const HomeScreen(),
    const BookingPage(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        // appBar: AppBar(
        //   leading: Padding(
        //     padding: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
        //     child: Image.asset('assets/images/app_icon_title_h.png'),
        //   ),
        //   leadingWidth: 150,
        //   actions: [
        //     IconButton(
        //       icon: SvgPicture.asset(
        //         'assets/icons/svg/fi-rs-log-out.svg',
        //         width: 24,
        //         color: CustomColor.black500,
        //       ),
        //       onPressed: () {
        //         logOut();
        //       },
        //     ),
        //   ],
        //   backgroundColor: Colors.white,
        //   elevation: 0,
        // ),
        backgroundColor: CustomColor.backgroundPage,
        body: screenOpstions[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 4,
          backgroundColor: Colors.white,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              activeIcon: Padding(
                padding: const EdgeInsets.only(top: 6),
                child: SvgPicture.asset(
                  'assets/icons/svg/fi-sr-home.svg',
                  width: 24,
                  height: 24,
                  color: CustomColor.orange500,
                ),
              ),
              icon: Padding(
                padding: const EdgeInsets.only(top: 6),
                child: SvgPicture.asset(
                  'assets/icons/svg/fi-rr-home.svg',
                  width: 24,
                  height: 24,
                  color: CustomColor.black500,
                ),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              activeIcon: Padding(
                padding: const EdgeInsets.only(top: 6),
                child: SvgPicture.asset(
                  'assets/icons/svg/fi-sr-diploma.svg',
                  width: 24,
                  height: 24,
                  color: CustomColor.orange500,
                ),
              ),
              icon: Padding(
                padding: const EdgeInsets.only(top: 6),
                child: SvgPicture.asset(
                  'assets/icons/svg/fi-rr-diploma.svg',
                  width: 24,
                  height: 24,
                  color: CustomColor.black500,
                ),
              ),
              label: 'Booking',
            ),
            BottomNavigationBarItem(
              activeIcon: Padding(
                padding: const EdgeInsets.only(top: 6),
                child: SvgPicture.asset(
                  'assets/icons/svg/fi-sr-user.svg',
                  width: 24,
                  height: 24,
                  color: CustomColor.orange500,
                ),
              ),
              icon: Padding(
                padding: const EdgeInsets.only(top: 6),
                child: SvgPicture.asset(
                  'assets/icons/svg/fi-rr-user.svg',
                  width: 24,
                  height: 24,
                  color: CustomColor.black500,
                ),
              ),
              label: 'Profile',
            ),
          ],
          currentIndex: selectedIndex,
          unselectedItemColor: CustomColor.black500,
          selectedItemColor: CustomColor.orange500,
          selectedLabelStyle: const TextStyle(
            fontFamily: 'OpenSans',
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: CustomColor.orange500,
          ),
          unselectedLabelStyle: const TextStyle(
            fontFamily: 'OpenSans',
            fontSize: 11,
            fontWeight: FontWeight.w500,
            color: CustomColor.black400,
          ),
          onTap: onItemTapped,
        ),
      ),
    );
  }
}
