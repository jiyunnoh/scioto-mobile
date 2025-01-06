import 'package:flutter/material.dart';
import 'package:scioto_mobile/ui/views/survey_navigator/survey_navigator_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'survey_dialog_model.dart';

class SurveyDialog extends StackedView<SurveyDialogModel> {
  final DialogRequest request;
  final Function(DialogResponse) completer;

  const SurveyDialog({
    Key? key,
    required this.request,
    required this.completer,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SurveyDialogModel viewModel,
    Widget? child,
  ) {
    return const SurveyNavigatorView();
  }

  @override
  SurveyDialogModel viewModelBuilder(BuildContext context) =>
      SurveyDialogModel();
}
