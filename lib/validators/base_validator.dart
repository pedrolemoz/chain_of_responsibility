class BaseValidator {
  BaseValidator? _nextValidator;

  void setNextValidator(BaseValidator nextValidator) =>
      _nextValidator = nextValidator;

  BaseValidator? get nextValidator => _nextValidator;

  bool validate(String input) => true;
}
