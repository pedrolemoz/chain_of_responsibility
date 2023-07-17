import 'validators/password_validator.dart';

void main() {
  final validator = PasswordValidator();
  final input = 's3nh@F0rt3';
  try {
    final isValid = validator.validate(input);
    print(isValid);
  } catch (exception) {
    print(exception);
  }
}
