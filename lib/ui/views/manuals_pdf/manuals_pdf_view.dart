import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'manuals_pdf_viewmodel.dart';

class ManualsPdfView extends StackedView<ManualsPdfViewModel> {
  const ManualsPdfView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ManualsPdfViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        toolbarHeight: 70,
        leading: Container(),
        backgroundColor: Colors.blue,
        title: const Text(
          'Freedom iQ Vacuum System for Prosthetists and Patients',
          style: TextStyle(color: Colors.white),
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
      body: Container(
          padding: const EdgeInsets.all(25.0),
          child: Center(child: Image.asset('assets/images/help_pdf.jpg'))),
    );
  }

  @override
  ManualsPdfViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ManualsPdfViewModel();
}
