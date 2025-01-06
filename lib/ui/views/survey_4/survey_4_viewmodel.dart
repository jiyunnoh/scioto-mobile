import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../app/app.router.dart';
import '../../../services/pdf_service.dart';

class Survey4ViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _pdfService = locator<PdfService>();

  bool isToggleOn = false;

  double start = 0.5;

  void toggle(bool value) {
    isToggleOn = value;
    notifyListeners();
  }

  void updateSlider(double value) {
    isToggleOn = true;
    start = value;
    notifyListeners();
  }

  void navigateToNext() {
    _navigationService.navigateTo(SurveyNavigatorViewRoutes.survey5View, id: 2);
  }

  Future<void> navigateToReport() async {
    _pdfService.createCadenceReport();
  }

  void back() {
    _navigationService.back();
  }
}
