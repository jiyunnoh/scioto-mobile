import 'package:flutter/material.dart';
import 'package:scioto_mobile/ui/views/ui/ui_viewmodel.dart';
import 'package:stacked/stacked.dart';
import 'package:scioto_mobile/ui/common/ui_helpers.dart';

class UiView extends StackedView<UiViewModel> {
  const UiView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    UiViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image.asset(
                          'assets/images/freedom_iq_vacuum_logo.png',
                          scale: 1.1,
                        )),
                    verticalSpaceMedium,
                    SizedBox(
                      width: 260,
                      height: 45,
                      child: MaterialButton(
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        onPressed: viewModel.showConnectDialog,
                        child: const Text(
                          'Connect...',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                    verticalSpaceSmall,
                    SizedBox(
                      width: 260,
                      height: 45,
                      child: MaterialButton(
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        onPressed: viewModel.showManualsDialog,
                        child: const Text(
                          'Help',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    verticalSpaceLarge,
                    Text(
                      'Version ${viewModel.appVersion}',
                      style: const TextStyle(fontSize: 16),
                    ),
                    const Text(
                      'Patient',
                      style: TextStyle(fontSize: 16),
                    ),
                    verticalSpaceSmall,
                    const Text(
                      '© Copyright 2024 Orthocare Innovations, LLC',
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  UiViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      UiViewModel();
}
