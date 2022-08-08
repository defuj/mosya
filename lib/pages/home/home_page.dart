import 'package:flutter/material.dart';
import 'package:mosya/models/models.dart';
import 'package:mosya/objectbox.g.dart';
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
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.black50,
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
        title: const Text('Home'),
        elevation: 0.0,
        backgroundColor: CustomColor.black50,
      ),
      body: screenOpstions[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Profile',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: CustomColor.orange500,
        onTap: onItemTapped,
      ),
    );
  }
}
