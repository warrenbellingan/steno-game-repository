import 'package:flutter_test/flutter_test.dart';
import 'package:Steno_Game/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('StrokesPlayViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
