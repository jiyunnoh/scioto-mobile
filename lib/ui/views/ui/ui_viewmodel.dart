import 'package:scioto_mobile/app/app.dialogs.dart';
import 'package:scioto_mobile/app/app.locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../services/package_info_service.dart';

class UiViewModel extends BaseViewModel {
  final _dialogService = locator<DialogService>();
  final _packageInfoService = locator<PackageInfoService>();

  String get appVersion => (_packageInfoService.info == null)
      ? ''
      : '${_packageInfoService.info!.version} (${_packageInfoService.info!.buildNumber})';

  void showManualsDialog() {
    _dialogService.showCustomDialog(
      barrierDismissible: true,
      variant: DialogType.manuals,
      title: 'Manuals',
    );
  }

  void showConnectDialog() {
    _dialogService.showCustomDialog(
        barrierDismissible: true, variant: DialogType.connect);
  }
}
