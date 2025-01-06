// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedDialogGenerator
// **************************************************************************

import 'package:stacked_services/stacked_services.dart';

import 'app.locator.dart';
import '../ui/dialogs/activate/activate_dialog.dart';
import '../ui/dialogs/connect/connect_dialog.dart';
import '../ui/dialogs/controls/controls_dialog.dart';
import '../ui/dialogs/manuals/manuals_dialog.dart';
import '../ui/dialogs/survey/survey_dialog.dart';

enum DialogType {
  manuals,
  connect,
  survey,
  controls,
  activate,
}

void setupDialogUi() {
  final dialogService = locator<DialogService>();

  final Map<DialogType, DialogBuilder> builders = {
    DialogType.manuals: (context, request, completer) =>
        ManualsDialog(request: request, completer: completer),
    DialogType.connect: (context, request, completer) =>
        ConnectDialog(request: request, completer: completer),
    DialogType.survey: (context, request, completer) =>
        SurveyDialog(request: request, completer: completer),
    DialogType.controls: (context, request, completer) =>
        ControlsDialog(request: request, completer: completer),
    DialogType.activate: (context, request, completer) =>
        ActivateDialog(request: request, completer: completer),
  };

  dialogService.registerCustomDialogBuilders(builders);
}
