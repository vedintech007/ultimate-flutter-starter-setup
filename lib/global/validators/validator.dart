import 'package:flutter/material.dart';

class Validators {
  static isAlphabetOnly(String stringValue) {
    final containsTextOnly = RegExp(r'^[a-z]+$').hasMatch(stringValue.toLowerCase());

    return containsTextOnly;
  }

  static isNumbersOnly(String stringValue) {
    final containsNumbersOnly = RegExp(r"^\d+$").hasMatch(stringValue);

    return containsNumbersOnly;
  }

  static validateForm({required GlobalKey<FormState> formKey}) {
    return formKey.currentState!.validate();
  }
}
