import 'package:scioto_mobile/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.dialogs.dart';
import '../../../app/app.locator.dart';
import '../../../services/controls_service.dart';

class ControlsMainViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _dialogService = locator<DialogService>();
  final _controlsService = locator<ControlsService>();

  bool get isPatientMode => _controlsService.isPatientMode;

  Future<void> toggleProductMode() async {
    DialogResponse? response;
    if (isPatientMode) {
      response = await _dialogService.showCustomDialog(
          barrierDismissible: true,
          variant: DialogType.activate,
          title: 'Activate Prosthetist Mode',
          description:
              'Enter the activation code that came with your iQ Vacuum System packaging to activate Prosthetist Mode.\n\nThis mode is not intended for patient use.');
    } else {
      response = await _dialogService.showDialog(
          title: 'Product Activation',
          description: 'Prosthetist mode unlocked.');
    }
    if (response != null && response.confirmed) {
      _controlsService.togglePatientMode();
    }
    notifyListeners();
  }

  void navigateToWaterMode() {
    _navigationService.navigateToWaterModeView();
  }

  void navigateToVacuumLevel() {
    _navigationService
        .navigateTo(ControlsNavigatorViewRoutes.controlsVacuumLevelView, id: 3);
  }

  void navigateToStepRate() {
    _navigationService
        .navigateTo(ControlsNavigatorViewRoutes.controlsStepRateView, id: 3);
  }

  void navigateToMisc() {
    _navigationService.navigateTo(ControlsNavigatorViewRoutes.controlsMiscView,
        id: 3);
  }

  void navigateToDevice() {
    _navigationService
        .navigateTo(ControlsNavigatorViewRoutes.controlsDeviceView, id: 3);
  }

  void navigateToSurveyDialog() {
    _dialogService.showCustomDialog(
        barrierDismissible: true, variant: DialogType.survey);
  }

  void back() {
    _navigationService.back();
  }
}
