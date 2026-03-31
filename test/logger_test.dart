import 'package:flutter_test/flutter_test.dart';
import 'package:homeflutter37/core/logger/logger.dart';

void main() {
  test('Logger Singleton Test', () {
    final logger1 = Logger();
    final logger2 = Logger();

    expect(identical(logger1, logger2), true);
  });
}
