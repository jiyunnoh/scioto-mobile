import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../../common/ui_helpers.dart';
import 'controls_misc_viewmodel.dart';

class ControlsMiscView extends StackedView<ControlsMiscViewModel> {
  const ControlsMiscView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ControlsMiscViewModel viewModel,
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
          title: const Text('Miscellaneous',
              style: TextStyle(color: Colors.black)),
          centerTitle: true,
        ),
        verticalSpaceMedium,
        Expanded(
          child: ListView(
            shrinkWrap: true,
            children: [
              Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: ListTile(
                  onTap: viewModel.navigateToUnits,
                  title: const Text('Units'),
                  trailing: const Icon(Icons.arrow_forward_ios,
                      size: 20, color: Colors.black54),
                  visualDensity: VisualDensity.compact,
                ),
              ),
              const Divider(height: 0, indent: 20),
              Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: ListTile(
                  title: const Text('LED Blink on Step Detection'),
                  trailing: Switch(
                    value: viewModel.stepDetectionSwitch,
                    onChanged: (bool value) =>
                        viewModel.updateStepDetectionSwitch(value),
                  ),
                  visualDensity: VisualDensity.compact,
                ),
              ),
              const Divider(height: 0, indent: 20),
              Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: ListTile(
                  title: const Text('Stop On Leak'),
                  trailing: Switch(
                    value: viewModel.stopOnLeakSwitch,
                    onChanged: (bool value) =>
                        viewModel.updateStopOnLeakSwitch(value),
                  ),
                  visualDensity: VisualDensity.compact,
                ),
              ),
              verticalSpaceMedium,
              if (!viewModel.isPatientMode)
                // Activity descent timer
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('ACTIVITY DESCENT TIMER'),
                    ),
                    Container(
                      decoration: const BoxDecoration(color: Colors.white),
                      child: ListTile(
                        onTap: viewModel.setToDefaultDescentThreshold,
                        title:
                            const Center(child: Text('Set to Default Values')),
                        visualDensity: VisualDensity.compact,
                      ),
                    ),
                    const Divider(height: 0, indent: 20),
                    Container(
                      decoration: const BoxDecoration(color: Colors.white),
                      child: ListTile(
                        title: Column(
                          children: [
                            Row(
                              children: [
                                const Text('Threshold'),
                                horizontalSpaceSmall,
                                Text(
                                  '${viewModel.tempDescentThreshold.toInt()} sec',
                                  style: const TextStyle(color: Colors.black54),
                                ),
                                const Spacer(),
                                Row(
                                  children: [
                                    OutlinedButton(
                                        onPressed:
                                            viewModel.decreaseDescentThreshold,
                                        style: OutlinedButton.styleFrom(
                                          shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(8),
                                                  bottomLeft:
                                                      Radius.circular(8))),
                                        ),
                                        child: const Text('-',
                                            style: TextStyle(fontSize: 24))),
                                    // Plus Button
                                    OutlinedButton(
                                        onPressed:
                                            viewModel.increaseDescentThreshold,
                                        style: OutlinedButton.styleFrom(
                                          shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(8),
                                                  bottomRight:
                                                      Radius.circular(8))),
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
                                  max: viewModel.descentThresholdMax,
                                  min: 0,
                                  stepSize: viewModel.descentThresholdStepSize,
                                  value: viewModel.tempDescentThreshold,
                                  onChanged: (value) =>
                                      viewModel.updateDescentThreshold(value)),
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
                        onTap: viewModel.saveDescentThreshold,
                        title: const Center(child: Text('Save')),
                        visualDensity: VisualDensity.compact,
                      ),
                    ),
                    verticalSpaceMedium,
                  ],
                ),
              if (!viewModel.isPatientMode)
                // Donning
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('DONNING'),
                    ),
                    Container(
                      decoration: const BoxDecoration(color: Colors.white),
                      child: ListTile(
                        onTap: viewModel.setToDefaultDonningTimeout,
                        title:
                            const Center(child: Text('Set to Default Values')),
                        visualDensity: VisualDensity.compact,
                      ),
                    ),
                    const Divider(height: 0, indent: 20),
                    Container(
                      decoration: const BoxDecoration(color: Colors.white),
                      child: ListTile(
                        title: Column(
                          children: [
                            Row(
                              children: [
                                const Text('Timeout'),
                                horizontalSpaceSmall,
                                Text(
                                  '${viewModel.tempDonningTimeout.toInt()} sec',
                                  style: const TextStyle(color: Colors.black54),
                                ),
                                const Spacer(),
                                Row(
                                  children: [
                                    OutlinedButton(
                                        onPressed:
                                            viewModel.decreaseDonningTimeout,
                                        style: OutlinedButton.styleFrom(
                                          shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(8),
                                                  bottomLeft:
                                                      Radius.circular(8))),
                                        ),
                                        child: const Text('-',
                                            style: TextStyle(fontSize: 24))),
                                    // Plus Button
                                    OutlinedButton(
                                        onPressed:
                                            viewModel.increaseDonningTimeout,
                                        style: OutlinedButton.styleFrom(
                                          shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(8),
                                                  bottomRight:
                                                      Radius.circular(8))),
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
                                  max: viewModel.donningTimeoutMax,
                                  min: 0,
                                  stepSize: viewModel.donningTimeoutStepSize,
                                  value: viewModel.tempDonningTimeout,
                                  onChanged: (value) =>
                                      viewModel.updateDonningTimeout(value)),
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
                        onTap: viewModel.saveDonningTimeout,
                        title: const Center(child: Text('Save')),
                        visualDensity: VisualDensity.compact,
                      ),
                    ),
                    verticalSpaceMedium,
                  ],
                ),
              // Vent on power-off
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('VENT ON POWER-OFF'),
              ),
              Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: ListTile(
                  onTap: viewModel.setToDefaultVentTime,
                  title: const Center(child: Text('Set to Default Values')),
                  visualDensity: VisualDensity.compact,
                ),
              ),
              const Divider(height: 0, indent: 20),
              Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: ListTile(
                  title: Column(
                    children: [
                      Row(
                        children: [
                          const Text('Time'),
                          horizontalSpaceSmall,
                          Text(
                            '${viewModel.tempVentTime.toInt()} sec',
                            style: const TextStyle(color: Colors.black54),
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              OutlinedButton(
                                  onPressed: viewModel.decreaseVentTime,
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
                                  onPressed: viewModel.increaseVentTime,
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
                            max: viewModel.ventTimeMax,
                            min: 0,
                            stepSize: viewModel.ventTimeStepSize,
                            value: viewModel.tempVentTime,
                            onChanged: (value) =>
                                viewModel.updateVentTime(value)),
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
                  onTap: viewModel.saveVentTime,
                  title: const Center(child: Text('Save')),
                  visualDensity: VisualDensity.compact,
                ),
              ),
              verticalSpaceLarge,
            ],
          ),
        ),
      ],
    );
  }

  @override
  ControlsMiscViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ControlsMiscViewModel();
}
