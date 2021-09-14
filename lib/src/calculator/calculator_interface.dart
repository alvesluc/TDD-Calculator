abstract class ICalculator {
  num add(num num1, num num2) {
    return num1 + num2;
  }

  num subtract(num num1, num num2) {
    return num1 - num2;
  }

  num multiply(num num1, num num2) {
    return num1 * num2;
  }

  num divide(num num1, num num2) {
    return num1 / num2;
  }

  num rest(num num1, num num2) {
    return num1 % num2;
  }

  num pow(num num1, num num2) {
    var result = num1;

    for (var i = 1; i < num2; i++) {
      result = num1 * num1;
    }
    return result;
  }
}
