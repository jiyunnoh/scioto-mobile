import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'ble_viewmodel.dart';

class BleView extends StackedView<BleViewModel> {
  const BleView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    BleViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BLE Test'),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  BleViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      BleViewModel();
}
