import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tealeaves/app/app.bottomsheets.dart';
import 'package:tealeaves/app/app.dialogs.dart';
import 'package:tealeaves/app/app.locator.dart';
import 'package:tealeaves/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tealeaves/services/license_repository_service.dart';
import 'package:tealeaves/theme/app_theme.dart';

Future<void> main() async {
  GoogleFonts.config.allowRuntimeFetching = false;

  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();

  locator<LicenseRepositoryService>().initialize();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.startupView,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      navigatorObservers: [
        StackedService.routeObserver,
      ],
      theme: AppTheme.getTheme(),
    );
  }
}
