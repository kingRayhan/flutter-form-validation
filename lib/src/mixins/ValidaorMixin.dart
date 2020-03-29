import 'package:string_validator/string_validator.dart'
    show isEmail, isAlphanumeric;

class ValidatorMixin {
  String emailValidator(String input) {
    if (!isEmail(input)) {
      return "Provide a valide email address";
    }
  }

  String passwordValidator(String input) {
    if (!isAlphanumeric(input.trim())) {
      return "Special character is not allowed";
    }
  }
}
