import '../exceptions/invalid_password_exception.dart';
import '../utils/regex/regular_expressions.dart';
import 'input_validator.dart';

class NumbersValidator implements InputValidator {
  InputValidator? _nextValidator;

  @override
  void setNextValidator(InputValidator nextValidator) =>
      _nextValidator = nextValidator;

  @override
  bool validate(String input) {
    final hasNumbers = RegularExpressions.numbers.hasMatch(input);

    if (hasNumbers) {
      return _nextValidator?.validate(input) ?? true;
    }

    throw InvalidPasswordException(
      description: 'The password must contains at least one number',
    );
  }
}
