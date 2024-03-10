import 'package:stacked/stacked.dart';
import 'package:tealeaves/app/app.locator.dart';
import 'package:tealeaves/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tealeaves/features/auth/services/authentication_service.dart';

class StartupViewModel extends BaseViewModel {
  final _authenticationService = locator<AuthenticationService>();
  final _navigationService = locator<NavigationService>();

  // Place anything here that needs to happen before we get into the application
  Future runStartupLogic() async {
    await Future.delayed(const Duration(seconds: 3));

    if (_authenticationService.isAuthenticated()) {
      _navigationService.replaceWithHomeView();
    } else {

    }
  }
}
