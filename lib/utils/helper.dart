import 'package:encrypt/encrypt.dart';

class Helper {
  static bool isValidEmail(String email) {
    return RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
        .hasMatch(email);
  }

  static bool isValidPhone(String phone) {
    return RegExp(r'^(?:[+0][1-9])?[0-9]{10,12}$').hasMatch(phone);
  }

  static String encryptPassword(String password) {
    final key = Key.fromUtf8('UkXp2r5u8x/A?D(G+KbPeShVmYq3t6v9');
    final iv = IV.fromLength(16);
    final encrypter = Encrypter(AES(key));
    return encrypter.encrypt(password, iv: iv).base64;
  }

  static String decryptPassword(String password) {
    final key = Key.fromUtf8('UkXp2r5u8x/A?D(G+KbPeShVmYq3t6v9');
    final iv = IV.fromLength(16);

    final encrypter = Encrypter(AES(key));

    final encrypted = encrypter.encrypt(password, iv: iv);
    final decrypted = encrypter.decrypt(encrypted, iv: iv);
    return decrypted;
  }

  static String secureEmail(String email) {
    var splits = email.split('@');
    String user = splits[0];

    var result = '';
    for (var i in user.runes) {
      if (i < user.runes.length) {
        result += '*';
      } else {
        var char = String.fromCharCode(i);
        result += char;
      }
    }
    return '$result@${splits[1]}';
  }
}
