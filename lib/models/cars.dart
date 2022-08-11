import 'package:isar/isar.dart';
part 'cars.g.dart';

@Collection()
class Car {
  Id carId = Isar.autoIncrement;
  String? carMerk;
  String? carModel;
  String? carColor;
  String? carYear;
  int carKilomoter = 0;
  String? carFuel;
  double carPrice = 0.0;
  String? carCondition;
  String? carDownPayment;
  String? carUnitCode;
  String? carFlatNumber;
  String? carDesc;
}
