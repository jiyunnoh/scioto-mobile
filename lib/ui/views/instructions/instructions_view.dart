import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'instructions_viewmodel.dart';

class InstructionsView extends StackedView<InstructionsViewModel> {
  const InstructionsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    InstructionsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.blue,
        leading: const Icon(
          Icons.ios_share,
          color: Colors.white,
        ),
        title: const Text(
          'iQ for Prosthetists and Patients',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          TextButton(
              onPressed: viewModel.back,
              child: const Text(
                'Done',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ))
        ],
      ),
      body: Container(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0),
          child: Center(child: Image.asset('assets/images/help_pdf.jpg'))),
    );
  }

  @override
  InstructionsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      InstructionsViewModel();
}
