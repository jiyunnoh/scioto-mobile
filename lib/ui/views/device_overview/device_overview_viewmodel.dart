import 'package:flutter/material.dart';
import 'package:scioto_mobile/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.dialogs.dart';
import '../../../app/app.locator.dart';

class DeviceOverviewViewModel extends BaseViewModel {
  final _dialogService = locator<DialogService>();
  final _navigationService = locator<NavigationService>();

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  void openDrawer() {
    scaffoldKey.currentState?.openDrawer();
  }

  void showControlsDialog() {
    _dialogService.showCustomDialog(
        barrierDismissible: true, variant: DialogType.controls);
  }

  void navigateToWaterModeView() {
    _navigationService.navigateToWaterModeView();
  }

  void navigateToSurveyDialog() {
    _dialogService.showCustomDialog(
        barrierDismissible: true, variant: DialogType.survey);
  }
}
