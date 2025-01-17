import 'package:flutter_test/flutter_test.dart';
import 'package:seal_gon_app/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('CostCalculatorViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
