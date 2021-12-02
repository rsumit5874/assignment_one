import 'package:assignment_one/core/utils/extentions.dart';
import 'package:assignment_one/core/utils/value_objects.dart';

class YourName extends ValueObjects<String> {
  @override
  bool isValid() => value.isNotEmpty && value.length > 3;

  @override
  final String value;

  factory YourName(String? input) {
    assert(input != null);

    return YourName._(input!);
  }

  const YourName._(this.value);
}

class EmailAddress extends ValueObjects<String> {
  @override
  bool isValid() => value.isNotEmpty && value.isEmailAddress;

  @override
  final String value;

  factory EmailAddress(String? input) {
    assert(input != null);

    return EmailAddress._(input!);
  }

  const EmailAddress._(this.value);
}

class Password extends ValueObjects<String> {
  @override
  bool isValid() => value.isNotEmpty && value.isValidPassword;

  @override
  final String value;

  factory Password(String? input) {
    assert(input != null);

    return Password._(input!);
  }

  const Password._(this.value);
}

class PhoneNumber extends ValueObjects<String> {
  @override
  bool isValid() =>
      value.isNotEmpty && double.tryParse(value) != null && value.length == 10;

  @override
  final String value;

  factory PhoneNumber(String? input) {
    assert(input != null);

    return PhoneNumber._(input!);
  }

  const PhoneNumber._(this.value);
}
