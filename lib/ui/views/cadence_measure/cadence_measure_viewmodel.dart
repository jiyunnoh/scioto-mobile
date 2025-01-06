import 'package:scioto_mobile/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class CadenceMeasureViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void skip() {
    _navigationService.navigateTo(SurveyNavigatorViewRoutes.surveyView, id: 2);
  }

  void navigateToNext() {
    _navigationService
        .navigateTo(SurveyNavigatorViewRoutes.cadenceMeasureSlowView, id: 2);
  }

  void back() {
    _navigationService.back();
  }
}
