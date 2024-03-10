import 'package:tealeaves/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:tealeaves/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:tealeaves/ui/views/home/home_view.dart';
import 'package:tealeaves/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tealeaves/features/auth/services/authentication_service.dart';
import 'package:tealeaves/services/license_repository_service.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    // @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: AuthenticationService),
    LazySingleton(classType: LicenseRepositoryService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
