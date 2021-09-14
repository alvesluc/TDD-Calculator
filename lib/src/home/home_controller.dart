import 'package:flutter/foundation.dart';
import 'package:tddcalculator/src/calculator/calculator_interface.dart';

class HomeController extends ChangeNotifier implements ICalculator {
  num displayNumber = 0;
  late num result;

  void _saveResult(num result) => this.result = result;

  void clear() {
    displayNumber = 0;
  }

  void clearAll() {
    displayNumber = 0;
    result = 0;
  }

  @override
  num add(num num1, num num2) {
    displayNumber = num1 + num2;
    _saveResult(displayNumber);
    return displayNumber;
  }

  @override
  num subtract(num num1, num num2) {
    displayNumber = num1 - num2;
    return displayNumber;
  }

  @override
  num multiply(num num1, num num2) {
    displayNumber = num1 * num2;
    return displayNumber;
  }

  @override
  num divide(num num1, num num2) {
    displayNumber = num1 / num2;
    return displayNumber;
  }

  @override
  num rest(num num1, num num2) {
    displayNumber = num1 % num2;
    return displayNumber;
  }

  @override
  num pow(num num1, num num2) {
    displayNumber = num1;

    for (var i = 1; i < num2; i++) {
      displayNumber = displayNumber * num1;
    }
    return displayNumber;
  }
}
