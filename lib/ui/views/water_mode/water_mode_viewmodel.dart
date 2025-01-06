import 'dart:async';

import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class WaterModeViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  Timer? _timer;

  int _start = 30;

  int get start => _start;

  bool isWaterModeOn = false;
  double sliderValue = 7;
  double min = 4;
  double max = 10;

  void enterWaterMode() {
    isWaterModeOn = !isWaterModeOn;

    if (isWaterModeOn) {
      startTimer();
    } else {
      _timer!.cancel();
      _start = 30;
    }
    notifyListeners();
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_start > 0) {
        _start--;
        notifyListeners();
      } else {
        _timer!.cancel();
        _navigationService.popUntil((route) => route.isFirst);
      }
    });
  }

  void changeSlider(double value) {
    sliderValue = value;
    notifyListeners();
  }

  @override
  void dispose() {
    if (_timer != null) {
      _timer!.cancel();
    }
    super.dispose();
  }

  void back() {
    _navigationService.back();
  }
}
