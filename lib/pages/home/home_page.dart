import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mosya/models/models.dart';
import 'package:mosya/objectbox.g.dart';
import 'package:mosya/pages/home/booking_page.dart';
import 'package:mosya/pages/home/home_screen.dart';
import 'package:mosya/pages/home/profile_screen.dart';
import 'package:mosya/utils/customcolor.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Store? _store;
  Box<User>? userBox;
  Box<Car>? carBox;
  Box<CarImage>? carImageBox;

  int selectedIndex = 0;

  void insertCar() {
    final query = carBox?.query().build();
    if (query!.find().isEmpty) {
      // carBox!.put(Car(
      //     carId: 1,
      //     carMerk: "Toyota",
      //     carModel: "Avanza",
      //     carColor: "Hitam",
      //     carYear: "2020",
      //     carKilomoter: 0,
      //     carFuel: "Bensin",
      //     carPrice: 0.0,
      //     carCondition: "Baru",
      //     carDownPayment: "0",
      //     carUnitCode: "",
      //     carFlatNumber: "",
      //     carDesc: "",
      // ));
    }
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  void initState() {
    openStore().then((Store store) {
      _store = store;
      userBox = _store?.box<User>();
      carBox = _store?.box<Car>();
      carImageBox = _store?.box<CarImage>();
    });

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
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
            child: Image.asset('assets/images/app_icon_title_h.png'),
          ),
          leadingWidth: 150,
          actions: [
            IconButton(
              icon: SvgPicture.asset(
                'assets/icons/svg/fi-rr-bell.svg',
                width: 24,
                color: CustomColor.black500,
              ),
              onPressed: () {},
            ),
          ],
          backgroundColor: Colors.white,
          elevation: 0,
          //   flexibleSpace: Column(
          //     children: [
          //       Container(
          //         margin: const EdgeInsets.only(top: 40, left: 16, right: 16),
          //         decoration: BoxDecoration(
          //           color: Colors.white,
          //           borderRadius: BorderRadius.circular(12.0),
          //         ),
          //         child: TextFormField(
          //           decoration: InputDecoration(
          //             contentPadding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
          //             hintText: "Cari mobil idamanmu",
          //             hintStyle: const TextStyle(
          //               color: CustomColor.black400,
          //               fontFamily: 'OpenSans',
          //               fontSize: 14,
          //             ),
          //             border: InputBorder.none,
          //             prefixIcon: Align(
          //               heightFactor: 1.0,
          //               widthFactor: 1.0,
          //               child: SvgPicture.asset(
          //                 'assets/icons/svg/fi-br-search.svg',
          //                 width: 16,
          //                 color: CustomColor.black400,
          //               ),
          //             ),
          //           ),
          //           textInputAction: TextInputAction.search,
          //           onChanged: (value) {},
          //         ),
          //       ),
          //     ],
          //   ),
        ),
        backgroundColor: CustomColor.black50,
        body: screenOpstions[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          elevation: 4,
          backgroundColor: Colors.white,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(
                'assets/icons/svg/fi-sr-home.svg',
                width: 24,
                height: 24,
                color: CustomColor.orange500,
              ),
              icon: SvgPicture.asset(
                'assets/icons/svg/fi-rr-home.svg',
                width: 24,
                height: 24,
                color: CustomColor.black500,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(
                'assets/icons/svg/fi-sr-diploma.svg',
                width: 24,
                height: 24,
                color: CustomColor.orange500,
              ),
              icon: SvgPicture.asset(
                'assets/icons/svg/fi-rr-diploma.svg',
                width: 24,
                height: 24,
                color: CustomColor.black500,
              ),
              label: 'Booking',
            ),
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(
                'assets/icons/svg/fi-sr-user.svg',
                width: 24,
                height: 24,
                color: CustomColor.orange500,
              ),
              icon: SvgPicture.asset(
                'assets/icons/svg/fi-rr-user.svg',
                width: 24,
                height: 24,
                color: CustomColor.black500,
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