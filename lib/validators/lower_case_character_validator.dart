import '../exceptions/invalid_password_exception.dart';
import '../utils/regex/regular_expressions.dart';
import 'base_validator.dart';

class LowerCaseCharacterValidator extends BaseValidator {
  @override
  bool validate(String input) {
    final hasLowerCaseCharacters =
        RegularExpressions.lowerCaseCharacters.hasMatch(input);

    if (hasLowerCaseCharacters) {
      return nextValidator?.validate(input) ?? true;
    }

    throw InvalidPasswordException(
      description:
          'The password must contains at least one lowercase character',
    );
  }
}
