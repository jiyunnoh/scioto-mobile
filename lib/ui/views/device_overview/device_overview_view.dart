import 'package:flutter/material.dart';
import 'package:scioto_mobile/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';

import '../controls_navigator/controls_navigator_view.dart';
import 'device_overview_viewmodel.dart';

class DeviceOverviewView extends StackedView<DeviceOverviewViewModel> {
  const DeviceOverviewView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    DeviceOverviewViewModel viewModel,
    Widget? child,
  ) {
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      key: viewModel.scaffoldKey,
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.blue,
        leading: TextButton(
            onPressed: viewModel.openDrawer,
            child: const Text(
              'Controls',
              style: TextStyle(color: Colors.white, fontSize: 18),
            )),
        leadingWidth: 100,
        title: const Text('Scioto',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        actions: [
          InkWell(
            onTap: viewModel.navigateToSurveyDialog,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/images/ReportIcon@2x.png', scale: 1.8),
            ),
          ),
        ],
      ),
      drawer: const Drawer(
        width: 400,
        child: ControlsNavigatorView(),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            height: double.infinity,
            padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
            color: Colors.grey[200],
            child: Column(
              children: [
                isPortrait
                    ? _build2x2Layout(context)
                    : _buildSingleRow(context),
                const SizedBox(height: 20),
                Expanded(
                  flex: 2,
                  child: buildCurrentVacuum(),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildSingleRow(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Row(children: [
          buildVacuumLevel(),
          const SizedBox(width: 20),
          buildStepCount(),
          const SizedBox(width: 20),
          buildStepRate(),
          const SizedBox(width: 20),
          buildStatus()
        ]));
  }

  // Build 2x2 grid for portrait
  Widget _build2x2Layout(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                buildVacuumLevel(),
                const SizedBox(width: 20.0),
                buildStepCount()
              ],
            ),
          ),
          const SizedBox(height: 20.0),
          Expanded(
            child: Row(
              children: [
                buildStepRate(),
                const SizedBox(width: 20.0), // Spacing between the boxes
                buildStatus()
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildStepCount() {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black54, width: 1)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset('assets/images/stepCount@2x.png', scale: 1.7),
                  horizontalSpaceSmall,
                  const Text(
                    'Step Count',
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Spacer(),
              const Text('', style: TextStyle(fontSize: 16)),
              verticalSpaceSmall,
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Low',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    '0',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Spacer(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Med',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    '0',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Spacer(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'High',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    '0',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Spacer(),
              const Text('', style: TextStyle(fontSize: 18)),
              const Spacer()
            ],
          ),
        ),
      ),
    );
  }

  Container buildCurrentVacuum() {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black54, width: 1)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset('assets/images/chartIcon@2x.png', scale: 1.7),
                  horizontalSpaceSmall,
                  const Text(
                    'Current Vacuum',
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('Low'),
                      horizontalSpaceSmall,
                      Text('Med'),
                      horizontalSpaceSmall,
                      Text('High'),
                      horizontalSpaceSmall,
                      Text('Target'),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Leak Rate: '),
                      horizontalSpaceSmall,
                      Text('Mode: '),
                      horizontalSpaceSmall,
                      Text('Avg Vac: '),
                    ],
                  )
                ],
              ),
            ],
          ),
        ));
  }

  Widget buildStatus() {
    return Expanded(
      child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black54, width: 1)),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset('assets/images/infoIcon@2x.png', scale: 1.7),
                    horizontalSpaceSmall,
                    const Text(
                      'Status',
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Spacer(),
                const Text('', style: TextStyle(fontSize: 16)),
                verticalSpaceSmall,
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Battery',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      '100%',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Spacer(),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Activity Level',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      'Donning',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Spacer(),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Seal Quality',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      'Assessing',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Spacer(),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('', style: TextStyle(fontSize: 18)),
                    Text('', style: TextStyle(fontSize: 18)),
                  ],
                ),
                const Spacer(),
              ],
            ),
          )),
    );
  }

  Widget buildStepRate() {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black54, width: 1)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset('assets/images/stepRate@2x.png', scale: 1.7),
                  horizontalSpaceSmall,
                  const Text(
                    'Step Rate',
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Spacer(),
              const Align(
                  alignment: Alignment.centerRight,
                  child: Text('steps/min',
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold))),
              verticalSpaceSmall,
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Med',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    '0',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Spacer(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'High',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    '0',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Spacer(),
              const Text('', style: TextStyle(fontSize: 18)),
              const Spacer(),
              const Text('', style: TextStyle(fontSize: 18)),
              const Spacer()
            ],
          ),
        ),
      ),
    );
  }

  Widget buildVacuumLevel() {
    return Expanded(
      child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black54, width: 1)),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset('assets/images/pressure@2x.png', scale: 1.7),
                    horizontalSpaceSmall,
                    const Text(
                      'Vacuum Level',
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Spacer(),
                const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'inHg',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )),
                verticalSpaceSmall,
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Donning',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      '3',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Spacer(),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Low',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      '4',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Spacer(),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Med',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      '7',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Spacer(),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'High',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      '10',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Spacer(),
              ],
            ),
          )),
    );
  }

  @override
  DeviceOverviewViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      DeviceOverviewViewModel();
}
