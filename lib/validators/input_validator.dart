abstract class InputValidator {
  void setNextValidator(InputValidator nextValidator);

  bool validate(String input);
}
