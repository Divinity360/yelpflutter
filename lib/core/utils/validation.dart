class AppValidation {
  AppValidation._();

  static String? validateEmptyField(String? value) {
    if (value == null || value.isEmpty) {
      return "This field shouldn't be empty";
    }
    return null;
  }
}
