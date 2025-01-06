import 'package:share_plus/share_plus.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class UsageReportViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void share() {
    Share.share('Scioto');
  }

  void back() {
    _navigationService.back();
  }
}
