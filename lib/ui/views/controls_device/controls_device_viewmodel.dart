import 'package:scioto_mobile/services/controls_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../app/app.router.dart';

class ControlsDeviceViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _controlsService = locator<ControlsService>();
  final _dialogService = locator<DialogService>();

  bool get isPatientMode => _controlsService.isPatientMode;

  void showSetServiceDateDialog() {
    _dialogService.showConfirmationDialog(
        barrierDismissible: true,
        title: 'Set Filter Service Date',
        description:
            'The filter will need to be replaced periodically, depending on use. To track your filter\'s life, be sure to update the service date. Once you\'ve replaced your filter, click "Set Date" to update service record to today.',
        confirmationTitle: 'Set Date');
  }

  void navigateToInstructions() {
    _navigationService.navigateTo(Routes.instructionsView);
  }

  void disconnect() {
    _navigationService.popUntil((route) => route.isFirst);
  }

  void back() {
    _navigationService.back(id: 3);
  }
}
