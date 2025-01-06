import 'package:scioto_mobile/app/app.bottomsheets.dart';
import 'package:scioto_mobile/app/app.locator.dart';
import 'package:scioto_mobile/app/app.router.dart';
import 'package:scioto_mobile/ui/common/app_strings.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _bottomSheetService = locator<BottomSheetService>();

  String get counterLabel => 'Counter is: $_counter';

  int _counter = 0;

  void incrementCounter() {
    _counter++;
    rebuildUi();
  }

  void navigateToBleView() {
    _navigationService.navigateToBleView();
  }

  void navigateToUiView() {
    _navigationService.navigateToUiView();
  }

  void showBottomSheet() {
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.notice,
      title: ksHomeBottomSheetTitle,
      description: ksHomeBottomSheetDescription,
    );
  }
}
