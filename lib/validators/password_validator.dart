import 'lower_case_character_validator.dart';
import 'numbers_validator.dart';
import 'password_length_validator.dart';
import 'special_character_validator.dart';
import 'upper_case_character_validator.dart';

class PasswordValidator {
  final _passwordLengthValidator = PasswordLengthValidator(minimumLength: 6);
  final _upperCaseCharacterValidator = UpperCaseCharacterValidator();
  final _lowerCaseCharacterValidator = LowerCaseCharacterValidator();
  final _numbersValidator = NumbersValidator();
  final _specialCharacterValidator = SpecialCharacterValidator();

  bool validate(String input) {
    _passwordLengthValidator.setNextValidator(_upperCaseCharacterValidator);
    _upperCaseCharacterValidator.setNextValidator(_lowerCaseCharacterValidator);
    _lowerCaseCharacterValidator.setNextValidator(_numbersValidator);
    _numbersValidator.setNextValidator(_specialCharacterValidator);
    return _passwordLengthValidator.validate(input);
  }
}
