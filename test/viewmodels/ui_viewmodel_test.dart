import 'package:flutter_test/flutter_test.dart';
import 'package:scioto_mobile/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('UiViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
