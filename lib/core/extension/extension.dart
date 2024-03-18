extension Validator on String {

  bool get isAlphabetical {
    final nameRegExp =
        RegExp(r'^[a-zA-Z]+$');
    return nameRegExp.hasMatch(this);
  }

  bool get isNumeric {
    return double.tryParse(this) != null;
  }

  int get yearDifference {
    var dob = DateTime.parse(this);
    var dur =  DateTime.now().difference(dob);
    return (dur.inDays/365).floor();
  }
}
