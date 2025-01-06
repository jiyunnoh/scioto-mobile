import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'manuals_dialog_model.dart';

class ManualsDialog extends StackedView<ManualsDialogModel> {
  final DialogRequest request;
  final Function(DialogResponse) completer;

  const ManualsDialog({
    Key? key,
    required this.request,
    required this.completer,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ManualsDialogModel viewModel,
    Widget? child,
  ) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      child: SizedBox(
        height: 600,
        width: 650,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppBar(
              backgroundColor: Colors.blue,
              leading: Container(),
              title: Text(
                request.title!,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
              actions: [
                TextButton(
                    onPressed: viewModel.close,
                    child: const Text(
                      'Done',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ))
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(
                  top: BorderSide(color: Colors.grey, width: 1.0), // Top border
                  bottom: BorderSide(
                      color: Colors.grey, width: 1.0), // Bottom border
                ),
              ),
              child: ListTile(
                onTap: viewModel.navigateToPdfView,
                title: const Text(
                    'Freedom iQ Vacuum System for Prosthetists and Patients'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  ManualsDialogModel viewModelBuilder(BuildContext context) =>
      ManualsDialogModel();
}
