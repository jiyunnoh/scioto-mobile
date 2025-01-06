import 'package:flutter/material.dart';
import 'package:scioto_mobile/ui/views/connect_navigator/connect_navigator_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'connect_dialog_model.dart';

class ConnectDialog extends StackedView<ConnectDialogModel> {
  final DialogRequest request;
  final Function(DialogResponse) completer;

  const ConnectDialog({
    Key? key,
    required this.request,
    required this.completer,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ConnectDialogModel viewModel,
    Widget? child,
  ) {
    return const ConnectNavigatorView();
  }

  @override
  ConnectDialogModel viewModelBuilder(BuildContext context) =>
      ConnectDialogModel();
}
