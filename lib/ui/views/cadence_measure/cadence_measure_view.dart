import 'package:flutter/material.dart';
import 'package:scioto_mobile/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';

import '../../common/app_strings.dart';
import '../../common/globals.dart';
import 'cadence_measure_viewmodel.dart';

class CadenceMeasureView extends StackedView<CadenceMeasureViewModel> {
  const CadenceMeasureView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CadenceMeasureViewModel viewModel,
    Widget? child,
  ) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AppBar(
          backgroundColor: Colors.deepOrange,
          leadingWidth: 90,
          leading: TextButton(
              onPressed: viewModel.back,
              child: const Text(
                'Cancel',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              )),
          title: const Text(
            'Report - Cadence Measure',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          actions: [
            TextButton(
                onPressed: viewModel.skip,
                child: const Text(
                  'Skip',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                )),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: Column(
            children: [
              verticalSpaceSmall,
              Row(
                children: [
                  Expanded(
                      child: Text(
                    isUnitConnected ? ksCadenceMeasureSkip : ksCadenceMeasure,
                    style: const TextStyle(fontSize: 18),
                    textAlign: TextAlign.center,
                  )),
                ],
              ),
            ],
          ),
        ),
        const Spacer(),
        if (isUnitConnected)
          Container(
              width: double.infinity,
              height: 60,
              color: Colors.black87,
              child: TextButton(
                  onPressed: viewModel.navigateToNext,
                  child: const Text(
                    'Start',
                    style: TextStyle(color: Colors.white, fontSize: 26),
                  )))
      ],
    );
  }

  @override
  CadenceMeasureViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CadenceMeasureViewModel();
}
