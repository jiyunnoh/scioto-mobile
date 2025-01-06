import 'dart:async';
import 'dart:math';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../app/app.router.dart';

class CadenceMeasureSlowViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final AudioPlayer audioPlayer = AudioPlayer();
  bool isStopped = false;

  final random = Random();
  double? stepsPerMin;

  static const Color colorCue = Colors.greenAccent;

  Color stepDetectionColor = Colors.transparent;

  List<Color> progressBarColor = List.filled(5, Colors.transparent);
  int detectedStep = 0;

  void changeCircleColor() {
    stepDetectionColor = colorCue;

    Timer(const Duration(milliseconds: 300), () {
      stepDetectionColor = Colors.transparent;
      notifyListeners();
    });

    progressBarColor[detectedStep] = colorCue;
    detectedStep += 1;

    notifyListeners();
  }

  Future<void> playStepSound() async {
    if (!isStopped) {
      await audioPlayer.play(AssetSource('sounds/Step.caf'));
    }
  }

  Future<void> stopSound() async {
    print('stop');
    isStopped = true;
    await audioPlayer.stop();
  }

  void getStepsPerMin() {
    stepsPerMin = random.nextInt(100).toDouble();
  }

  Future<void> onStepDetection() async {
    await playStepSound(); // Play step sound
    getStepsPerMin();
  }

  void skip() {
    _navigationService.navigateTo(SurveyNavigatorViewRoutes.surveyView, id: 2);
  }

  void navigateToNext() {
    _navigationService
        .navigateTo(SurveyNavigatorViewRoutes.cadenceMeasureFastView, id: 2);
  }

  void back() {
    _navigationService.back();
  }
}
