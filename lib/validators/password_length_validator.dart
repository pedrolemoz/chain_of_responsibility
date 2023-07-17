import '../exceptions/invalid_password_exception.dart';
import 'input_validator.dart';

class PasswordLengthValidator implements InputValidator {
  final int minimumLength;
  InputValidator? _nextValidator;

  PasswordLengthValidator({required this.minimumLength});

  @override
  void setNextValidator(InputValidator nextValidator) =>
      _nextValidator = nextValidator;

  @override
  bool validate(String input) {
    final hasMinimumLength = input.length >= minimumLength;

    if (hasMinimumLength) {
      return _nextValidator?.validate(input) ?? true;
    }

    throw InvalidPasswordException(
      description:
          'The password must contains at least $minimumLength characters',
    );
  }
}
