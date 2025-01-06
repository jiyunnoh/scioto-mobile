import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'usage_report_viewmodel.dart';

class UsageReportView extends StackedView<UsageReportViewModel> {
  const UsageReportView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    UsageReportViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.deepOrange,
        leading: IconButton(
          icon: const Icon(
            Icons.ios_share,
            color: Colors.white,
            size: 30,
          ),
          onPressed: viewModel.share,
        ),
        title: const Text(
          'iQ Usage Report',
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
        child: Image.asset('assets/images/report_pdf.jpg'),
      ),
    );
  }

  @override
  UsageReportViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      UsageReportViewModel();
}
