import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class ControlsUnitsViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  List<bool> isSelected = [true, false];

  //TODO: when changing measurement, device overview should be updated
  void selectMeasurement(int index) {
    for (int i = 0; i < isSelected.length; i++) {
      isSelected[i] = i == index;
    }
    notifyListeners();
  }

  void back() {
    _navigationService.back(id: 3);
  }
}
