import 'package:isar/isar.dart';
part 'users.g.dart';

@Collection()
class User {
  @Id()
  int? userId;
  String? userName;
  String? userEmail;
  String? userPhone;
  String? userPassword;
  String? userPicture;
}
