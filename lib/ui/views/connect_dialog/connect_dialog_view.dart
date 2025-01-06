import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'connect_dialog_viewmodel.dart';

class ConnectDialogView extends StackedView<ConnectDialogViewModel> {
  const ConnectDialogView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ConnectDialogViewModel viewModel,
    Widget? child,
  ) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AppBar(
          backgroundColor: Colors.blue,
          leadingWidth: 80,
          leading: TextButton(
              onPressed: viewModel.back,
              child: const Text(
                'Close',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              )),
          title: const Text(
            'Choose Device',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: SizedBox(
                  width: 30,
                  height: 30,
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  )),
            ),
          ],
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 8.0),
              child: Text('DEVICES'),
            ),
          ],
        ),
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(
              top: BorderSide(color: Colors.grey, width: 1.0), // Top border
              bottom:
                  BorderSide(color: Colors.grey, width: 1.0), // Bottom border
            ),
          ),
          child: ListTile(
            title: const Text('iQ-50C8'),
            trailing: const Text('iQ Vacuum System'),
            onTap: () {
              viewModel.back();
              viewModel.navigateToDeviceStatus();
            },
          ),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 8.0),
              child: Text('HELP'),
            ),
          ],
        ),
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(
              top: BorderSide(color: Colors.grey, width: 1.0), // Top border
              bottom:
                  BorderSide(color: Colors.grey, width: 1.0), // Bottom border
            ),
          ),
          child: ListTile(
            title: const Text('I don\'t see my device'),
            trailing: const Icon(Icons.chevron_right),
            onTap: viewModel.navigateToConnectHelp,
          ),
        ),
      ],
    );
  }

  @override
  ConnectDialogViewModel viewModelBuilder(BuildContext context) =>
      ConnectDialogViewModel();
}
