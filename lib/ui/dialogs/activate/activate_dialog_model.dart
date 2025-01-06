import 'package:flutter/cupertino.dart';
import 'package:scioto_mobile/ui/common/globals.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class ActivateDialogModel extends BaseViewModel {
  final _dialogService = locator<DialogService>();

  TextEditingController textEditingController = TextEditingController();

  void validateCode(Function(DialogResponse) completer) {
    if (textEditingController.text == prosthetistCode) {
      completer(DialogResponse(confirmed: true));
    } else {
      completer(DialogResponse(confirmed: false));
      _dialogService.showDialog(
          title: 'Product Activation',
          description:
              'You are not connected to the Freedom iQ Vacuum System associated with this activation code or the activation code is invalid.');
    }
  }
}
