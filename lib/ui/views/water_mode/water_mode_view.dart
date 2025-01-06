import 'package:flutter/material.dart';
import 'package:scioto_mobile/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import 'water_mode_viewmodel.dart';

class WaterModeView extends StackedView<WaterModeViewModel> {
  const WaterModeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    WaterModeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.cyan,
        title: const Text(
          'Water Mode',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        leading: viewModel.isWaterModeOn
            ? Container()
            : TextButton(
                onPressed: viewModel.back,
                child: const Text(
                  'Cancel',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
        leadingWidth: 90,
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 25.0),
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              width: 200,
              height: 200,
              child: Image.asset('assets/images/SideView.png'),
            ),
            Expanded(
              child: Column(
                children: viewModel.isWaterModeOn
                    ? [
                        verticalSpaceMedium,
                        Text(
                          '${viewModel.start}',
                          style: const TextStyle(
                              fontSize: 100,
                              fontWeight: FontWeight.bold,
                              color: Colors.cyan),
                        ),
                        const Text(
                            'Your iQ System is entering \'water mode\'. All other features are unavailable.',
                            style: TextStyle(fontSize: 20)),
                        verticalSpaceTiny,
                        const Text(
                            'After 30 seconds, this App will disconnect and your iQ will be off. It is then safe to enter the water.',
                            style: TextStyle(fontSize: 20)),
                        verticalSpaceTiny,
                        const Text(
                            'Your iQ will automatically disengage \'water mode\' when you power back on.',
                            style: TextStyle(fontSize: 20))
                      ]
                    : [
                        verticalSpaceLarge,
                        const Text(
                          'Adjust your target vacuum level',
                          style: TextStyle(fontSize: 20),
                        ),
                        const Spacer(),
                        Text(
                          '${viewModel.sliderValue.toInt()} inHg',
                          style: const TextStyle(fontSize: 30),
                        ),
                        SizedBox(
                          width: 700,
                          child: Column(
                            children: [
                              SfSlider(
                                min: viewModel.min,
                                max: viewModel.max,
                                value: viewModel.sliderValue,
                                stepSize: 1,
                                activeColor: Colors.cyan,
                                onChanged: (value) =>
                                    viewModel.changeSlider(value),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 22.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Lower',
                                      style: TextStyle(fontSize: 22),
                                    ),
                                    Text(
                                      'Higher',
                                      style: TextStyle(fontSize: 22),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        const Spacer(),
                      ],
              ),
            ),
            Container(
                width: double.infinity,
                height: 100,
                color: Colors.cyan,
                child: TextButton(
                    onPressed: viewModel.enterWaterMode,
                    child: const Text(
                      'Enter Water',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    )))
          ],
        ),
      ),
    );
  }

  @override
  WaterModeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      WaterModeViewModel();
}
