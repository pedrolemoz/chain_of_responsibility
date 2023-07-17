import '../exceptions/invalid_password_exception.dart';
import 'base_validator.dart';

class PasswordLengthValidator extends BaseValidator {
  final int minimumLength;

  PasswordLengthValidator({required this.minimumLength});

  @override
  bool validate(String input) {
    final hasMinimumLength = input.length >= minimumLength;

    if (hasMinimumLength) {
      return nextValidator?.validate(input) ?? true;
    }

    throw InvalidPasswordException(
      description:
          'The password must contains at least $minimumLength characters',
    );
  }
}
