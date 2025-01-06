import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../services/pdf_service.dart';

class Survey6ViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _pdfService = locator<PdfService>();

  bool isToggleOn = false;

  double sliderValue = 0.5;

  void toggle(bool value) {
    isToggleOn = value;
    notifyListeners();
  }

  void updateSlider(double value) {
    isToggleOn = true;
    sliderValue = value;
    notifyListeners();
  }

  Future<void> navigateToReport() async {
   _pdfService.createCadenceReport(cadenceScore: sliderValue);
  }

  void back() {
    _navigationService.back();
  }
}
