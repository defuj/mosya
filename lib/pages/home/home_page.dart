import 'package:flutter/material.dart';
import 'package:mosya/models/models.dart';
import 'package:mosya/objectbox.g.dart';
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

  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      GlobalKey<RefreshIndicatorState>();

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
      body: RefreshIndicator(
        key: _refreshIndicatorKey,
        onRefresh: () async {
          await Future.delayed(const Duration(seconds: 1));
          return;
        },
        child: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            // ListView.builder(
            //   itemCount: carBox!.count(),
            //   itemBuilder: (BuildContext context, int index) {
            //     final Car? car = carBox?.get(index);
            //     return ListTile(
            //       title: Text('${car?.carMerk}'),
            //       subtitle: Text('${car?.carModel}'),
            //       trailing: Text('${car?.carYear}'),
            //       onTap: () {
            //         Navigator.pushNamed(context, '/detail', arguments: car);
            //       },
            //     );
            //   },
            // ),
          ],
        )),
      ),
    );
  }
}
