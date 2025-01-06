import 'dart:math';

import 'package:scioto_mobile/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../services/controls_service.dart';

class ControlsMiscViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _controlsService = locator<ControlsService>();

  late double tempDescentThreshold;
  double descentThresholdMin = 1;
  double descentThresholdMax = 60;
  double descentThresholdStepSize = 5;
  late double tempDonningTimeout;
  double donningTimeoutMin = 15;
  double donningTimeoutMax = 240;
  double donningTimeoutStepSize = 40;
  late double tempVentTime;
  double ventTimeMin = 0;
  double ventTimeMax = 60;
  double ventTimeStepSize = 5;

  bool get isPatientMode => _controlsService.isPatientMode;

  ControlsMiscViewModel() {
    _updateTempValues();
  }

  void _updateTempValues() {
    tempDescentThreshold = _controlsService.descentThreshold;
    tempDonningTimeout = _controlsService.donningTimeout;
    tempVentTime = _controlsService.ventTime;
    notifyListeners();
  }

  bool get stepDetectionSwitch => _controlsService.stepDetectionSwitch;

  bool get stopOnLeakSwitch => _controlsService.stopOnLeakSwitch;

  void updateStepDetectionSwitch(value) {
    _controlsService.stepDetectionSwitch = value;
    notifyListeners();
  }

  void updateStopOnLeakSwitch(value) {
    _controlsService.stopOnLeakSwitch = value;
    notifyListeners();
  }

  void updateDescentThreshold(double value) {
    tempDescentThreshold = value;
    tempDescentThreshold = max(tempDescentThreshold, descentThresholdMin);
    notifyListeners();
  }

  void increaseDescentThreshold() {
    tempDescentThreshold += descentThresholdStepSize;
    tempDescentThreshold = min(tempDescentThreshold, descentThresholdMax);
    notifyListeners();
  }

  void decreaseDescentThreshold() {
    tempDescentThreshold -= descentThresholdStepSize;
    tempDescentThreshold = max(tempDescentThreshold, descentThresholdMin);
    notifyListeners();
  }

  void saveDescentThreshold() {
    _controlsService.updateDescentThreshold(tempDescentThreshold);
    notifyListeners();
  }

  void setToDefaultDescentThreshold() {
    _controlsService.setToDefaultDescentThreshold();
    _updateTempValues();
  }

  void updateDonningTimeout(double value) {
    tempDonningTimeout = value;
    tempDonningTimeout = max(tempDonningTimeout, donningTimeoutMin);
    notifyListeners();
  }

  void increaseDonningTimeout() {
    tempDonningTimeout += donningTimeoutStepSize;
    tempDonningTimeout = min(tempDonningTimeout, donningTimeoutMax);
    notifyListeners();
  }

  void decreaseDonningTimeout() {
    tempDonningTimeout -= donningTimeoutStepSize;
    tempDonningTimeout = max(tempDonningTimeout, donningTimeoutMin);
    notifyListeners();
  }

  void saveDonningTimeout() {
    _controlsService.updateDonningTimeout(tempDonningTimeout);
    notifyListeners();
  }

  void setToDefaultDonningTimeout() {
    _controlsService.setToDefaultDonningTimeout();
    _updateTempValues();
  }

  void updateVentTime(double value) {
    tempVentTime = value;
    tempVentTime = max(tempVentTime, ventTimeMin);
    notifyListeners();
  }

  void increaseVentTime() {
    tempVentTime += ventTimeStepSize;
    tempVentTime = min(tempVentTime, ventTimeMax);
    notifyListeners();
  }

  void decreaseVentTime() {
    tempVentTime -= ventTimeStepSize;
    tempVentTime = max(tempVentTime, ventTimeMin);
    notifyListeners();
  }

  void saveVentTime() {
    _controlsService.updateVentTime(tempVentTime);
    notifyListeners();
  }

  void setToDefaultVentTime() {
    _controlsService.setToDefaultVentTime();
    _updateTempValues();
  }

  void navigateToUnits() {
    _navigationService.navigateTo(ControlsNavigatorViewRoutes.controlsUnitsView,
        id: 3);
  }

  void back() {
    _navigationService.back(id: 3);
  }
}
