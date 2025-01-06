import 'package:stacked/stacked.dart';
import 'dart:math';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../services/controls_service.dart';

class ControlsStepRateViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _controlsService = locator<ControlsService>();

  late double tempMedStepRate;
  late double tempHighStepRate;
  double medMinValue = 5;
  double highMinValue = 10;
  double maxValue = 75;
  double stepSize = 5;

  ControlsStepRateViewModel() {
    _updateTempValues();
  }

  void _updateTempValues() {
    tempMedStepRate = _controlsService.medStepRateLevel;
    tempHighStepRate = _controlsService.highStepRateLevel;
    notifyListeners();
  }

  void updateMed(double value) {
    tempMedStepRate = value;
    tempMedStepRate = max(tempMedStepRate, medMinValue);
    notifyListeners();
  }

  void increaseMed() {
    tempMedStepRate += stepSize;
    tempMedStepRate = min(tempMedStepRate, maxValue);
    notifyListeners();
  }

  void decreaseMed() {
    tempMedStepRate -= stepSize;
    tempMedStepRate = max(tempMedStepRate, medMinValue);
    notifyListeners();
  }

  void updateHigh(double value) {
    tempHighStepRate = value;
    tempHighStepRate = max(tempHighStepRate, highMinValue);
    notifyListeners();
  }

  void increaseHigh() {
    tempHighStepRate += stepSize;
    tempHighStepRate = min(tempHighStepRate, maxValue);
    notifyListeners();
  }

  void decreaseHigh() {
    tempHighStepRate -= stepSize;
    tempHighStepRate = max(tempHighStepRate, highMinValue);
    notifyListeners();
  }

  void save() {
    _controlsService.updateMedStepRate(tempMedStepRate);
    _controlsService.updateHighStepRate(tempHighStepRate);
    notifyListeners();
  }

  void setToDefault() {
    _controlsService.setToDefaultStepRate();
    _updateTempValues();
  }

  void back() {
    _navigationService.back(id: 3);
  }
}
