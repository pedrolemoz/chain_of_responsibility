import '../exceptions/invalid_password_exception.dart';
import '../utils/regex/regular_expressions.dart';
import 'base_validator.dart';

class SpecialCharacterValidator extends BaseValidator {
  @override
  bool validate(String input) {
    final hasNumbers = RegularExpressions.specialCharacters.hasMatch(input);

    if (hasNumbers) {
      return nextValidator?.validate(input) ?? true;
    }

    throw InvalidPasswordException(
      description: 'The password must contains at least one special character',
    );
  }
}
