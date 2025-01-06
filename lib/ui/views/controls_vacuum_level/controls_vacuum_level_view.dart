import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../../common/ui_helpers.dart';
import 'controls_vacuum_level_viewmodel.dart';

class ControlsVacuumLevelView
    extends StackedView<ControlsVacuumLevelViewModel> {
  const ControlsVacuumLevelView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ControlsVacuumLevelViewModel viewModel,
    Widget? child,
  ) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.white,
          leading: TextButton(
            onPressed: viewModel.back,
            child: const Row(
              children: [
                Icon(Icons.chevron_left),
                Text(
                  'Back',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
          leadingWidth: 90,
          title:
              const Text('Vacuum Level', style: TextStyle(color: Colors.black)),
          centerTitle: true,
        ),
        verticalSpaceMedium,
        ListView(
          shrinkWrap: true,
          children: [
            Container(
              decoration: const BoxDecoration(color: Colors.white),
              child: ListTile(
                onTap: viewModel.setToDefault,
                title: const Center(child: Text('Set to Default Values')),
                visualDensity: VisualDensity.compact,
              ),
            ),
            const Divider(height: 0, indent: 20),
            // Donning
            Container(
              decoration: const BoxDecoration(color: Colors.white),
              child: ListTile(
                title: Column(
                  children: [
                    Row(
                      children: [
                        const Text('Donning'),
                        horizontalSpaceSmall,
                        Text(
                          '${viewModel.tempDonning.toInt()} inHg',
                          style: const TextStyle(color: Colors.black54),
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            OutlinedButton(
                                onPressed: viewModel.decreaseDonning,
                                style: OutlinedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(8),
                                          bottomLeft: Radius.circular(8))),
                                ),
                                child: const Text('-',
                                    style: TextStyle(fontSize: 24))),
                            // Plus Button
                            OutlinedButton(
                                onPressed: viewModel.increaseDonning,
                                style: OutlinedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(8),
                                          bottomRight: Radius.circular(8))),
                                ),
                                child: const Text('+',
                                    style: TextStyle(fontSize: 24))),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                      child: SfSlider(
                          max: viewModel.maxValue,
                          min: viewModel.minValue,
                          stepSize: viewModel.stepSize,
                          value: viewModel.tempDonning,
                          onChanged: (value) => viewModel.updateDonning(value)),
                    )
                  ],
                ),
                visualDensity: VisualDensity.compact,
              ),
            ),
            const Divider(height: 0, indent: 20),
            // Low
            Container(
              decoration: const BoxDecoration(color: Colors.white),
              child: ListTile(
                title: Column(
                  children: [
                    Row(
                      children: [
                        const Text('Low'),
                        horizontalSpaceSmall,
                        Text(
                          '${viewModel.lowRange.end.toInt()} inHg',
                          style: const TextStyle(color: Colors.black54),
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            OutlinedButton(
                                onPressed: viewModel.decreaseLow,
                                style: OutlinedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(8),
                                          bottomLeft: Radius.circular(8))),
                                ),
                                child: const Text('-',
                                    style: TextStyle(fontSize: 24))),
                            // Plus Button
                            OutlinedButton(
                                onPressed: viewModel.increaseLow,
                                style: OutlinedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(8),
                                          bottomRight: Radius.circular(8))),
                                ),
                                child: const Text('+',
                                    style: TextStyle(fontSize: 24))),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                        height: 30,
                        child: SfRangeSlider(
                          values: viewModel.lowRange,
                          min: viewModel.minValue,
                          max: viewModel.maxValue,
                          stepSize: viewModel.stepSize,
                          onChanged: (SfRangeValues value) =>
                              viewModel.updateLowRange(value),
                        ))
                  ],
                ),
                visualDensity: VisualDensity.compact,
              ),
            ),
            const Divider(height: 0, indent: 20),
            // Med
            Container(
              decoration: const BoxDecoration(color: Colors.white),
              child: ListTile(
                title: Column(
                  children: [
                    Row(
                      children: [
                        const Text('Med'),
                        horizontalSpaceSmall,
                        Text(
                          '${viewModel.medRange.end.toInt()} inHg',
                          style: const TextStyle(color: Colors.black54),
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            OutlinedButton(
                                onPressed: viewModel.decreaseMed,
                                style: OutlinedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(8),
                                          bottomLeft: Radius.circular(8))),
                                ),
                                child: const Text('-',
                                    style: TextStyle(fontSize: 24))),
                            // Plus Button
                            OutlinedButton(
                                onPressed: viewModel.increaseMed,
                                style: OutlinedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(8),
                                          bottomRight: Radius.circular(8))),
                                ),
                                child: const Text('+',
                                    style: TextStyle(fontSize: 24))),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                        height: 30,
                        child: SfRangeSlider(
                          values: viewModel.medRange,
                          min: viewModel.minValue,
                          max: viewModel.maxValue,
                          stepSize: viewModel.stepSize,
                          onChanged: (SfRangeValues value) =>
                              viewModel.updateMedRange(value),
                        ))
                  ],
                ),
                visualDensity: VisualDensity.compact,
              ),
            ),
            const Divider(height: 0, indent: 20),
            // High
            Container(
              decoration: const BoxDecoration(color: Colors.white),
              child: ListTile(
                title: Column(
                  children: [
                    Row(
                      children: [
                        const Text('High'),
                        horizontalSpaceSmall,
                        Text(
                          '${viewModel.highRange.end.toInt()} inHg',
                          style: const TextStyle(color: Colors.black54),
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            OutlinedButton(
                                onPressed: viewModel.decreaseHigh,
                                style: OutlinedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(8),
                                          bottomLeft: Radius.circular(8))),
                                ),
                                child: const Text('-',
                                    style: TextStyle(fontSize: 24))),
                            // Plus Button
                            OutlinedButton(
                                onPressed: viewModel.increaseHigh,
                                style: OutlinedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(8),
                                          bottomRight: Radius.circular(8))),
                                ),
                                child: const Text('+',
                                    style: TextStyle(fontSize: 24))),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                        height: 30,
                        child: SfRangeSlider(
                          values: viewModel.highRange,
                          min: viewModel.minValue,
                          max: viewModel.maxValue,
                          stepSize: viewModel.stepSize,
                          onChanged: (SfRangeValues value) =>
                              viewModel.updateHighRange(value),
                        ))
                  ],
                ),
                visualDensity: VisualDensity.compact,
              ),
            ),
            const Divider(height: 0, indent: 20),
            Container(
              decoration: const BoxDecoration(color: Colors.white),
              child: ListTile(
                onTap: viewModel.save,
                title: const Center(child: Text('Save')),
                visualDensity: VisualDensity.compact,
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  ControlsVacuumLevelViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ControlsVacuumLevelViewModel();
}
