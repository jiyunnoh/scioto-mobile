import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../common/ui_helpers.dart';
import 'controls_device_viewmodel.dart';

class ControlsDeviceView extends StackedView<ControlsDeviceViewModel> {
  const ControlsDeviceView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ControlsDeviceViewModel viewModel,
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
          title: const Text('Device', style: TextStyle(color: Colors.black)),
          centerTitle: true,
          actions: [
            TextButton(
              onPressed: () {
                viewModel.back();
                viewModel.navigateToInstructions();
              },
              child: const Text('Help', style: TextStyle(color: Colors.blue)),
            ),
          ],
        ),
        verticalSpaceMedium,
        Expanded(
          child: ListView(
            shrinkWrap: true,
            children: [
              // Device Name
              Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: const ListTile(
                  title: Text('Device Name'),
                  trailing: Text('iQ-50C8',
                      style: TextStyle(fontSize: 16, color: Colors.grey)),
                  visualDensity: VisualDensity.compact,
                ),
              ),
              const Divider(height: 0, indent: 20),
              // Battery Level
              Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: const ListTile(
                  title: Text('Battery Level'),
                  trailing: Text('100%',
                      style: TextStyle(fontSize: 16, color: Colors.grey)),
                  visualDensity: VisualDensity.compact,
                ),
              ),
              const Divider(height: 0, indent: 20),
              // Save
              Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: const ListTile(
                  title: Center(child: Text('Save')),
                  visualDensity: VisualDensity.compact,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                    'Custom device names are only stored on this iOS device'),
              ),
              verticalSpaceMedium,
              // Set Service Date
              Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: ListTile(
                  onTap: viewModel.showSetServiceDateDialog,
                  title: const Center(child: Text('Set Service Date')),
                  visualDensity: VisualDensity.compact,
                ),
              ),
              const Divider(height: 0, indent: 20),
              if (!viewModel.isPatientMode)
                Container(
                  decoration: const BoxDecoration(color: Colors.white),
                  child: const ListTile(
                    title: Center(child: Text('Step Detection Setup')),
                    visualDensity: VisualDensity.compact,
                  ),
                ),
              verticalSpaceMedium,
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('INFO'),
              ),
              Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: const ListTile(
                  title: Text('Serial'),
                  trailing: Text('000010444',
                      style: TextStyle(fontSize: 16, color: Colors.indigo)),
                  visualDensity: VisualDensity.compact,
                ),
              ),
              const Divider(height: 0, indent: 20),
              Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: const ListTile(
                  title: Text('Firmware'),
                  trailing: Text('1.4.0',
                      style: TextStyle(fontSize: 16, color: Colors.indigo)),
                  visualDensity: VisualDensity.compact,
                ),
              ),
              const Divider(height: 0, indent: 20),
              Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: const ListTile(
                  title: Text('Original Fitting'),
                  trailing: Text('10/16/19',
                      style: TextStyle(fontSize: 16, color: Colors.indigo)),
                  visualDensity: VisualDensity.compact,
                ),
              ),
              const Divider(height: 0, indent: 20),
              Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: const ListTile(
                  title: Text('Last Service'),
                  trailing: Text('10/16/19',
                      style: TextStyle(fontSize: 16, color: Colors.indigo)),
                  visualDensity: VisualDensity.compact,
                ),
              ),
              verticalSpaceMedium,
              if (!viewModel.isPatientMode)
                Container(
                  decoration: const BoxDecoration(color: Colors.white),
                  child: const ListTile(
                    title: Center(child: Text('Engineering Report')),
                    visualDensity: VisualDensity.compact,
                  ),
                ),
              verticalSpaceMedium,
              Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: ListTile(
                  onTap: viewModel.disconnect,
                  title: const Center(
                      child: Text(
                    'Disconnect',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  )),
                  visualDensity: VisualDensity.compact,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  ControlsDeviceViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ControlsDeviceViewModel();
}
