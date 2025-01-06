import 'package:scioto_mobile/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class ConnectDialogViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void back() {
    _navigationService.back();
  }

  void navigateToConnectHelp() {
    _navigationService.navigateTo(ConnectNavigatorViewRoutes.connectHelpView,
        id: 1);
  }

  void navigateToDeviceStatus() {
    _navigationService.navigateTo(Routes.deviceOverviewView);
  }
}
