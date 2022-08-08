import 'package:objectbox/objectbox.dart';
import '../objectbox.g.dart';

@Entity()
class User {
  @Id()
  int userId = 0;
  String? userName;
  String? userEmail;
  String? userPhone;
  String? userPassword;
  String? userPicture;

  User({
    required this.userId,
    required this.userName,
    required this.userEmail,
    required this.userPhone,
    required this.userPassword,
  });
}

@Entity()
class Car {
  @Id()
  int carId = 0;
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

  Car(
      {required this.carId,
      required this.carMerk,
      required this.carModel,
      required this.carColor,
      required this.carFuel,
      required this.carPrice,
      required this.carCondition,
      required this.carDownPayment,
      required this.carUnitCode,
      required this.carDesc,
      required this.carFlatNumber,
      required this.carYear,
      required this.carKilomoter});
}

@Entity()
@Sync()
class CarImage {
  @Id()
  int id = 0;
  int? carId;
  String? picture;
}
