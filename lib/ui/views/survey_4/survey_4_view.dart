import 'package:flutter/material.dart';
import 'package:scioto_mobile/ui/common/ui_helpers.dart';
import 'package:scioto_mobile/ui/views/survey_4/survey_4_viewmodel.dart';
import 'package:stacked/stacked.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class Survey4View extends StackedView<Survey4ViewModel> {
  const Survey4View({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    Survey4ViewModel viewModel,
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
            'PEQ Survey',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  viewModel.back();
                  viewModel.navigateToReport();
                },
                child: const Text(
                  'Done',
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
              const Text(
                  'These questions are designed to be answered by patients'),
              verticalSpaceSmall,
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Text(
                      'Q: ',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  const Expanded(
                      child: Text(
                    'Over the past four weeks, rate your comfort while standing when using your prosthesis.',
                    style: TextStyle(fontSize: 18),
                  )),
                  Switch(
                      value: viewModel.isToggleOn,
                      onChanged: (value) => viewModel.toggle(value))
                ],
              ),
              verticalSpaceLarge,
              Column(
                children: [
                  SfSlider(
                    value: viewModel.start,
                    onChanged: (value) => viewModel.updateSlider(value),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('TERRIBLE'),
                      Text('EXCELLENT'),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        const Spacer(),
        Container(
            width: double.infinity,
            height: 60,
            color: Colors.black87,
            child: TextButton(
                onPressed: viewModel.navigateToNext,
                child: const Text(
                  'Next',
                  style: TextStyle(color: Colors.white, fontSize: 26),
                )))
      ],
    );
  }

  @override
  Survey4ViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      Survey4ViewModel();
}
