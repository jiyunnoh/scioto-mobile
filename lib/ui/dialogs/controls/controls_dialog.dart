import 'package:flutter/material.dart';
import 'package:scioto_mobile/ui/views/controls_navigator/controls_navigator_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'controls_dialog_model.dart';

class ControlsDialog extends StackedView<ControlsDialogModel> {
  final DialogRequest request;
  final Function(DialogResponse) completer;

  const ControlsDialog({
    Key? key,
    required this.request,
    required this.completer,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ControlsDialogModel viewModel,
    Widget? child,
  ) {
    return const ControlsNavigatorView();
  }

  @override
  ControlsDialogModel viewModelBuilder(BuildContext context) =>
      ControlsDialogModel();
}
