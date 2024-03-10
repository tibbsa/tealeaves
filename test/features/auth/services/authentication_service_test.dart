import 'package:flutter_test/flutter_test.dart';
import 'package:tealeaves/app/app.locator.dart';
import 'package:tealeaves/features/auth/services/authentication_service.dart';

import '../../../helpers/test_helpers.dart';

void main() {
  group('AuthenticationServiceTest -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());

    test('can be instantiated', () {
      final service = AuthenticationService();
      expect(service, isNotNull);
    });
  });
}
