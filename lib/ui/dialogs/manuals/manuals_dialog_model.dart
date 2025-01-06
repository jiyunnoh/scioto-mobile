import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../views/manuals_pdf/manuals_pdf_view.dart';

class ManualsDialogModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void close() {
    _navigationService.back();
  }

  Future<void> navigateToPdfView() async {
    // When using 'navigateTo' function from Stacked navigation service, it arise an issue that second tap after returning from the pdf view is not triggered.
    // There might be a conflict between opening and closing dialogs with navigating to full screen view.
    // To resolve this, use flutter Navigator to ensure that the PDF view is always pushed on top of the help dialog.
    Navigator.of(StackedService.navigatorKey!.currentContext!).push(
        MaterialPageRoute(
            builder: (BuildContext context) => const ManualsPdfView(),
            fullscreenDialog: true));
  }
}
