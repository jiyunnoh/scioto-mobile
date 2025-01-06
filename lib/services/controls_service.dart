import 'package:syncfusion_flutter_sliders/sliders.dart';

class ControlsService {
  bool _isPatientMode = false;
  double _donningLevel = 3;

  late SfRangeValues lowVacuumLevel;

  late SfRangeValues medVacuumLevel;

  late SfRangeValues highVacuumLevel;

  double _medStepRateLevel = 25;
  double _highStepRateLevel = 50;
  double _descentThreshold = 20;
  double _donningTimeout = 90;
  double _ventTime = 15;

  bool get isPatientMode => _isPatientMode;

  double get donningLevel => _donningLevel;

  double get medStepRateLevel => _medStepRateLevel;

  double get highStepRateLevel => _highStepRateLevel;

  double get descentThreshold => _descentThreshold;

  double get donningTimeout => _donningTimeout;

  double get ventTime => _ventTime;

  bool stepDetectionSwitch = false;
  bool stopOnLeakSwitch = false;

  ControlsService() {
    lowVacuumLevel = SfRangeValues(donningLevel, 6);
    medVacuumLevel = SfRangeValues(lowVacuumLevel.end, 9);
    highVacuumLevel = SfRangeValues(medVacuumLevel.end, 11);
  }

  void updateDonningLevel(double value) {
    _donningLevel = value;
  }

  void updateLowVacuumLevel(SfRangeValues value) {
    lowVacuumLevel = value;
  }

  void updateMedVacuumLevel(SfRangeValues value) {
    medVacuumLevel = value;
  }

  void updateHighVacuumLevel(SfRangeValues value) {
    highVacuumLevel = value;
  }

  void setToDefaultVacuumLevel() {
    _donningLevel = 3;
    lowVacuumLevel = SfRangeValues(donningLevel, 6);
    medVacuumLevel = SfRangeValues(lowVacuumLevel.end, 9);
    highVacuumLevel = SfRangeValues(medVacuumLevel.end, 11);
  }

  void updateMedStepRate(double value) {
    _medStepRateLevel = value;
  }

  void updateHighStepRate(double value) {
    _highStepRateLevel = value;
  }

  void setToDefaultStepRate() {
    _medStepRateLevel = 25;
    _highStepRateLevel = 50;
  }

  void updateDescentThreshold(double value) {
    _descentThreshold = value;
  }

  void setToDefaultDescentThreshold() {
    _descentThreshold = 20;
  }

  void updateDonningTimeout(double value) {
    _donningTimeout = value;
  }

  void setToDefaultDonningTimeout() {
    _donningTimeout = 90;
  }

  void updateVentTime(double value) {
    _ventTime = value;
  }

  void setToDefaultVentTime() {
    _ventTime = 15;
  }

  void togglePatientMode() {
    _isPatientMode = !_isPatientMode;
  }
}
