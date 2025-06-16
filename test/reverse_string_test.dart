import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_testing/utils/reverse_string.dart';

void main() {
  test('reverseString membalikkan string dengan benar', () {
    // Arrange
    final input = 'flutter';

    // Act
    final result = reverseString(input);

    // Assert
    expect(result, equals('rettulf'));
  });

  test('reverseString mengembalikan string kosong saat input kosong', () {
    // Arrange
    final input = '';

    // Act
    final result = reverseString(input);

    // Assert
    expect(result, equals(''));
  });
}
