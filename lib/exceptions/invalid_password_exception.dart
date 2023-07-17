class InvalidPasswordException implements Exception {
  final String description;

  const InvalidPasswordException({
    this.description = 'The password is not valid',
  });

  @override
  String toString() => description;
}
