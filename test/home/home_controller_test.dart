import 'package:flutter_test/flutter_test.dart';
import 'package:tddcalculator/src/home/home_controller.dart';

void main() {
  final _controller = HomeController();
  group('Calculator basics', () {
    test('add two numbers', () {
      _controller.add(1, 2);
      expect(3, _controller.displayNumber);
    });

    test('subtract two numbers', () {
      _controller.subtract(1, 2);
      expect(-1, _controller.displayNumber);
    });

    test('multiply two numbers', () {
      _controller.multiply(2, 2);
      expect(4, _controller.displayNumber);
    });

    test('divide two numbers', () {
      _controller.divide(5, 2);
      expect(2.5, _controller.displayNumber);
    });

    test('rest of first number divided by second number', () {
      _controller.rest(5, 2);
      expect(1, _controller.displayNumber);
    });

    test('power of first number times the second number', () {
      _controller.pow(2, 5);
      expect(32, _controller.displayNumber);
    });
  });

  group('Clearing', () {
    test('clear display number', () {
      _controller.add(1, 1);
      _controller.clear();
      expect(0, _controller.displayNumber);
    });

    test('clear display number and keep result', () {
      _controller.add(1, 1);
      _controller.clear();
      expect(2, _controller.result);
    });

    test('clear both display number and result', () {
      _controller.add(1, 1);
      _controller.clearAll();
      expect(0, _controller.displayNumber);
      expect(0, _controller.result);
    });
  });
}
