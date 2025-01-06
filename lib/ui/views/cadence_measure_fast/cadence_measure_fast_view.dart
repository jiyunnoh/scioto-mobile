import 'package:flutter/material.dart';
import 'package:scioto_mobile/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';

import '../../common/globals.dart';
import 'cadence_measure_fast_viewmodel.dart';

class CadenceMeasureFastView extends StackedView<CadenceMeasureFastViewModel> {
  const CadenceMeasureFastView({Key? key}) : super(key: key);

  @override
  void onDispose(CadenceMeasureFastViewModel viewModel) {
    viewModel.stopSound();
    super.onDispose(viewModel);
  }

  @override
  Widget builder(
    BuildContext context,
    CadenceMeasureFastViewModel viewModel,
    Widget? child,
  ) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AppBar(
          backgroundColor: Colors.deepOrange,
          leadingWidth: 90,
          leading: Row(
            children: [
              TextButton(
                  onPressed: viewModel.back,
                  child: const Text(
                    'Back',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )),
            ],
          ),
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
              AnimatedSize(
                duration: const Duration(milliseconds: 300),
                // Adjust for desired smoothness
                curve: Curves.easeInOut,
                child: viewModel.detectedStep != 5
                    ? const Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Walk FAST',
                              style: TextStyle(
                                  fontSize: 40, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      )
                    : const SizedBox.shrink(), // Placeholder when hidden
              ),
              Stack(children: [
                Center(
                    child: Image.asset('assets/images/maybird_top@2x.png',
                        scale: 1.2)),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: Transform.translate(
                      offset: const Offset(2.6, 76.7),
                      child: AnimatedContainer(
                        width: 15,
                        height: 15,
                        margin: const EdgeInsets.symmetric(horizontal: 24.2),
                        decoration: BoxDecoration(
                          color: viewModel.stepDetectionColor,
                          shape: BoxShape.circle,
                        ),
                        duration: const Duration(milliseconds: 200),
                        // Smooth transition duration
                        curve: Curves.easeInOut,
                      ),
                    ),
                  ),
                )
              ]),
              verticalSpaceTiny,
              Stack(children: [
                Center(
                  child: Image.asset('assets/images/circleProgressBar@2x.png',
                      scale: 2.5),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: Transform.translate(
                      offset: const Offset(0.2, -0.5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(5, (index) {
                          return Container(
                            width: 15,
                            height: 15,
                            margin:
                                const EdgeInsets.symmetric(horizontal: 24.2),
                            decoration: BoxDecoration(
                              color: viewModel.progressBarColor[index],
                              shape: BoxShape.circle,
                            ),
                          );
                        }),
                      ),
                    ),
                  ),
                )
              ]),
              verticalSpaceSmall,
              if (viewModel.detectedStep >= 2)
                RichText(
                    text: TextSpan(
                        text: '${viewModel.stepsPerMin}',
                        style:
                            const TextStyle(color: Colors.black, fontSize: 35),
                        children: const [
                      TextSpan(
                          text: 'steps / min', style: TextStyle(fontSize: 20))
                    ])),
            ],
          ),
        ),
        if (viewModel.detectedStep != 5)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () async {
                    viewModel.changeCircleColor();
                    await viewModel.onStepDetection();
                  },
                  child: const Text('Step')),
            ],
          ),
        const Spacer(),
        AnimatedSize(
          duration: const Duration(milliseconds: 300),
          // Adjust for desired smoothness
          curve: Curves.easeInOut,
          child: viewModel.detectedStep == 5
              ? const Padding(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20.0),
                  child: Text(
                    'Cadence measuring is complete. Instruct the patient to stop, and press "Done"',
                    style: TextStyle(fontSize: 18),
                  ),
                )
              : const SizedBox.shrink(), // Placeholder when hidden
        ),
        verticalSpaceTiny,
        if (isUnitConnected)
          Container(
              width: double.infinity,
              height: 60,
              color: viewModel.detectedStep == 5 ? Colors.black87 : Colors.grey,
              child: TextButton(
                  onPressed: viewModel.detectedStep == 5
                      ? viewModel.navigateToNext
                      : null,
                  child: const Text(
                    'Done',
                    style: TextStyle(color: Colors.white, fontSize: 26),
                  )))
      ],
    );
  }

  @override
  CadenceMeasureFastViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CadenceMeasureFastViewModel();
}
