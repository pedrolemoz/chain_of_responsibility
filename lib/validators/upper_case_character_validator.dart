import '../exceptions/invalid_password_exception.dart';
import '../utils/regex/regular_expressions.dart';
import 'base_validator.dart';

class UpperCaseCharacterValidator extends BaseValidator {
  @override
  bool validate(String input) {
    final hasUpperCaseCharacters =
        RegularExpressions.upperCaseCharacters.hasMatch(input);

    if (hasUpperCaseCharacters) {
      return nextValidator?.validate(input) ?? true;
    }

    throw InvalidPasswordException(
      description:
          'The password must contains at least one uppercase character',
    );
  }
}
