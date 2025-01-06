import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../../common/ui_helpers.dart';
import 'controls_step_rate_viewmodel.dart';

class ControlsStepRateView extends StackedView<ControlsStepRateViewModel> {
  const ControlsStepRateView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ControlsStepRateViewModel viewModel,
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
          title: const Text('Step Rate', style: TextStyle(color: Colors.black)),
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
                          '${viewModel.tempMedStepRate.toInt()} steps/min',
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
                      child: SfSlider(
                          max: viewModel.maxValue,
                          min: 0,
                          stepSize: viewModel.stepSize,
                          value: viewModel.tempMedStepRate,
                          onChanged: (value) => viewModel.updateMed(value)),
                    )
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
                          '${viewModel.tempHighStepRate.toInt()} steps/min',
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
                      child: SfSlider(
                          max: viewModel.maxValue,
                          min: 0,
                          stepSize: viewModel.stepSize,
                          value: viewModel.tempHighStepRate,
                          onChanged: (value) => viewModel.updateHigh(value)),
                    )
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
  ControlsStepRateViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ControlsStepRateViewModel();
}
