import 'dart:math';

import 'package:scioto_mobile/services/controls_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../../../app/app.locator.dart';

class ControlsVacuumLevelViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _controlsService = locator<ControlsService>();

  late double tempDonning;
  late SfRangeValues lowRange;
  late SfRangeValues medRange;
  late SfRangeValues highRange;

  double minValue = 0;
  double maxValue = 13;
  double stepSize = 1;

  ControlsVacuumLevelViewModel() {
    _updateTempValues();
  }

  void _updateTempValues() {
    tempDonning = _controlsService.donningLevel;
    lowRange = _controlsService.lowVacuumLevel;
    medRange = _controlsService.medVacuumLevel;
    highRange = _controlsService.highVacuumLevel;
    notifyListeners();
  }

  void updateDonning(double value) {
    if (lowRange.end - value <= 0) {
      tempDonning = lowRange.start;
    } else {
      tempDonning = max(value, minValue + 1);
    }
    lowRange = SfRangeValues(tempDonning, lowRange.end);

    notifyListeners();
  }

  void increaseDonning() {
    if (lowRange.end - lowRange.start > 1) {
      tempDonning += stepSize;
      tempDonning = min(tempDonning, maxValue);
      lowRange = SfRangeValues(tempDonning, lowRange.end);
    }
    notifyListeners();
  }

  void decreaseDonning() {
    if (tempDonning > 1) {
      tempDonning -= stepSize;
      tempDonning = max(tempDonning, minValue);
      lowRange = SfRangeValues(tempDonning, lowRange.end);
    }
    notifyListeners();
  }

  void updateLowRange(SfRangeValues value) {
    if (medRange.end - value.end <= 0) {
      lowRange = SfRangeValues(lowRange.start, medRange.start);
    } else {
      lowRange = SfRangeValues(
          lowRange.start, max<num>(value.end, lowRange.start + 1));
    }
    medRange = SfRangeValues(lowRange.end, medRange.end);
    notifyListeners();
  }

  void increaseLow() {
    if (medRange.end - medRange.start > 1) {
      lowRange = SfRangeValues(
          lowRange.start, min<num>(lowRange.end + stepSize, maxValue));
      medRange = SfRangeValues(lowRange.end, medRange.end);
    }
    notifyListeners();
  }

  void decreaseLow() {
    if (lowRange.end - lowRange.start > 1) {
      lowRange = SfRangeValues(lowRange.start,
          max<num>(lowRange.end - stepSize, lowRange.start + 1));
      medRange = SfRangeValues(lowRange.end, medRange.end);
    }
    notifyListeners();
  }

  void updateMedRange(SfRangeValues value) {
    if (highRange.end - value.end <= 0) {
      medRange = SfRangeValues(medRange.start, highRange.start);
    } else {
      medRange = SfRangeValues(
          medRange.start, max<num>(value.end, medRange.start + 1));
    }
    highRange = SfRangeValues(medRange.end, highRange.end);
    notifyListeners();
  }

  void increaseMed() {
    if (highRange.end - highRange.start > 1) {
      medRange = SfRangeValues(
          medRange.start, min<num>(medRange.end + stepSize, maxValue));
      highRange = SfRangeValues(medRange.end, highRange.end);
    }
    notifyListeners();
  }

  void decreaseMed() {
    if (medRange.end - medRange.start > 1) {
      medRange = SfRangeValues(medRange.start,
          max<num>(medRange.end - stepSize, medRange.start + 1));
      highRange = SfRangeValues(medRange.end, highRange.end);
    }
    notifyListeners();
  }

  void updateHighRange(SfRangeValues value) {
    if (value.end - highRange.start >= 1) {
      highRange = SfRangeValues(highRange.start, value.end);
    }
    notifyListeners();
  }

  void increaseHigh() {
    highRange = SfRangeValues(
        medRange.end, min<num>(highRange.end + stepSize, maxValue));
    notifyListeners();
  }

  void decreaseHigh() {
    highRange = SfRangeValues(
        medRange.end, max<num>(highRange.end - stepSize, highRange.start + 1));
    notifyListeners();
  }

  void save() {
    _controlsService.updateDonningLevel(tempDonning);
    _controlsService.updateLowVacuumLevel(lowRange);
    _controlsService.updateMedVacuumLevel(medRange);
    _controlsService.updateHighVacuumLevel(highRange);
    notifyListeners();
  }

  void setToDefault() {
    _controlsService.setToDefaultVacuumLevel();
    _updateTempValues();
  }

  void back() {
    _navigationService.back(id: 3);
  }
}
