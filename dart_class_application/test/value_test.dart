import 'package:test/test.dart';

void main() {
  test("Checking that the number 42 is equal to 42", () {
    final int number = 42;

    expect(number, 42);
  });
}
