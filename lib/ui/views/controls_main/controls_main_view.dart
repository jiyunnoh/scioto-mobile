import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../common/ui_helpers.dart';
import 'controls_main_viewmodel.dart';

class ControlsMainView extends StackedView<ControlsMainViewModel> {
  const ControlsMainView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ControlsMainViewModel viewModel,
    Widget? child,
  ) {
    return Column(
      children: [
        GestureDetector(
          onTap: viewModel.navigateToDevice,
          child: Container(
              height: 200,
              width: double.infinity,
              color: Colors.blue,
              child: const Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Scioto',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      'iQ-50C8',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w700),
                    ),
                    Row(
                      children: [
                        Text(
                          'Battery Level',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        horizontalSpaceSmall,
                        Text(
                          '100%',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        )
                      ],
                    )
                  ],
                ),
              )),
        ),
        verticalSpaceMedium,
        Expanded(
          child: ListView(
            shrinkWrap: true,
            children: [
              // Vacuum Level
              if (!viewModel.isPatientMode)
                Container(
                  decoration: const BoxDecoration(color: Colors.white),
                  child: ListTile(
                    onTap: viewModel.navigateToVacuumLevel,
                    title: const Text('Vacuum Level'),
                    trailing: const Icon(Icons.arrow_forward_ios,
                        size: 20, color: Colors.black54),
                    visualDensity: VisualDensity.compact,
                  ),
                ),
              const Divider(height: 0, indent: 20),
              // Step Rate
              if (!viewModel.isPatientMode)
                Container(
                  decoration: const BoxDecoration(color: Colors.white),
                  child: ListTile(
                    onTap: viewModel.navigateToStepRate,
                    title: const Text('Step Rate'),
                    trailing: const Icon(Icons.arrow_forward_ios,
                        size: 20, color: Colors.black54),
                    visualDensity: VisualDensity.compact,
                  ),
                ),
              const Divider(height: 0, indent: 20),
              // Misc
              Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: ListTile(
                  onTap: viewModel.navigateToMisc,
                  title: const Text('Misc'),
                  trailing: const Icon(Icons.arrow_forward_ios,
                      size: 20, color: Colors.black54),
                  visualDensity: VisualDensity.compact,
                ),
              ),
              verticalSpaceMedium,
              // Water mode
              Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: ListTile(
                  onTap: () {
                    viewModel.back();
                    viewModel.navigateToWaterMode();
                  },
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/Watermode_Icon@2x.png',
                        scale: 2.5,
                      ),
                      horizontalSpaceSmall,
                      const Text('Water Mode'),
                    ],
                  ),
                  visualDensity: VisualDensity.compact,
                ),
              ),
              const Divider(height: 0, indent: 20),
              // Create Usage Report
              Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: ListTile(
                  onTap: () {
                    viewModel.back();
                    viewModel.navigateToSurveyDialog();
                  },
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/ReportIcon@2x.png',
                        scale: 2.5,
                        color: Colors.black,
                      ),
                      horizontalSpaceSmall,
                      const Text('Create Usage Report'),
                    ],
                  ),
                  visualDensity: VisualDensity.compact,
                ),
              ),
              // verticalSpaceMedium,
              // const Padding(
              //   padding: EdgeInsets.all(8.0),
              //   child: Text('PRODUCT MODE'),
              // ),
              // Container(
              //   decoration: const BoxDecoration(color: Colors.white),
              //   child: ListTile(
              //     onTap: viewModel.toggleProductMode,
              //     title: Center(
              //         child: Text(
              //             'Activate ${viewModel.isPatientMode ? 'Prosthetist' : 'Patient'} Mode')),
              //     visualDensity: VisualDensity.compact,
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Text(
              //       'iQ Vac is currently running in ${viewModel.isPatientMode ? 'Patient' : 'Prosthetist'} Mode.'),
              // ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  ControlsMainViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ControlsMainViewModel();
}
