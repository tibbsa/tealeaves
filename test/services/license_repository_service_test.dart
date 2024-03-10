import 'package:flutter_test/flutter_test.dart';
import 'package:tealeaves/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('LicenseRepositoryServiceTest -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
