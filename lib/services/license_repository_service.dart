import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class LicenseRepositoryService {
  void initialize() {
    LicenseRegistry.addLicense(() async* {
      final license = await rootBundle.loadString('google_fonts/APACHE.txt');
      yield LicenseEntryWithLineBreaks(['google_fonts'], license);
    });
  }
}
