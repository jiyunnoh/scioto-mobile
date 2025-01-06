import 'package:flutter/material.dart';
import 'package:scioto_mobile/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';

import 'connect_help_viewmodel.dart';

class ConnectHelpView extends StackedView<ConnectHelpViewModel> {
  const ConnectHelpView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ConnectHelpViewModel viewModel,
    Widget? child,
  ) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppBar(
          backgroundColor: Colors.blue,
          leadingWidth: 100,
          leading: TextButton(
              onPressed: viewModel.back,
              child: const Row(
                children: [
                  Icon(
                    Icons.chevron_left,
                    color: Colors.white,
                  ),
                  Text(
                    'Back',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )),
          title: const Text(
            'Connection Help',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Use these steps first.',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              verticalSpaceSmall,
              Text('Description goes here.'),
              Text('Description goes here.'),
              Text('Description goes here.'),
            ],
          ),
        ),
      ],
    );
  }

  @override
  ConnectHelpViewModel viewModelBuilder(BuildContext context) =>
      ConnectHelpViewModel();
}
