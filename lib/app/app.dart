import 'package:scioto_mobile/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:scioto_mobile/ui/views/home/home_view.dart';
import 'package:scioto_mobile/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:scioto_mobile/services/package_info_service.dart';

import 'package:scioto_mobile/ui/dialogs/connect/connect_dialog.dart';
import 'package:scioto_mobile/ui/views/connect_dialog/connect_dialog_view.dart';
import 'package:scioto_mobile/ui/views/connect_navigator/connect_navigator_view.dart';

import '../ui/dialogs/manuals/manuals_dialog.dart';
import '../ui/views/connect_help/connect_help_view.dart';

import 'package:scioto_mobile/ui/views/water_mode/water_mode_view.dart';
import 'package:scioto_mobile/ui/dialogs/survey/survey_dialog.dart';
import 'package:scioto_mobile/ui/views/survey_navigator/survey_navigator_view.dart';

import '../ui/views/device_overview/device_overview_view.dart';
import 'package:scioto_mobile/ui/views/survey/survey_view.dart';
import 'package:scioto_mobile/ui/views/survey_2/survey_2_view.dart';
import 'package:scioto_mobile/ui/views/survey_3/survey_3_view.dart';
import 'package:scioto_mobile/ui/views/survey_4/survey_4_view.dart';
import 'package:scioto_mobile/ui/views/survey_5/survey_5_view.dart';
import 'package:scioto_mobile/ui/views/survey_6/survey_6_view.dart';
import 'package:scioto_mobile/ui/dialogs/controls/controls_dialog.dart';
import 'package:scioto_mobile/ui/views/controls_navigator/controls_navigator_view.dart';
import 'package:scioto_mobile/ui/views/controls_main/controls_main_view.dart';
import 'package:scioto_mobile/ui/views/controls_device/controls_device_view.dart';
import 'package:scioto_mobile/ui/views/instructions/instructions_view.dart';
import 'package:scioto_mobile/ui/views/controls_vacuum_level/controls_vacuum_level_view.dart';
import 'package:scioto_mobile/ui/views/controls_step_rate/controls_step_rate_view.dart';
import 'package:scioto_mobile/ui/views/controls_misc/controls_misc_view.dart';
import 'package:scioto_mobile/ui/views/controls_units/controls_units_view.dart';
import 'package:scioto_mobile/services/controls_service.dart';
import 'package:scioto_mobile/ui/dialogs/activate/activate_dialog.dart';
import 'package:scioto_mobile/ui/views/cadence_measure/cadence_measure_view.dart';
import 'package:scioto_mobile/ui/views/cadence_measure_slow/cadence_measure_slow_view.dart';
import 'package:scioto_mobile/ui/views/cadence_measure_fast/cadence_measure_fast_view.dart';
import 'package:scioto_mobile/ui/views/ui/ui_view.dart';
import 'package:scioto_mobile/ui/views/ble/ble_view.dart';

import '../ui/views/manuals_pdf/manuals_pdf_view.dart';
import '../ui/views/usage_report/usage_report_view.dart';
import 'package:scioto_mobile/services/pdf_service.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: ManualsPdfView, fullscreenDialog: true),
    MaterialRoute(page: ConnectNavigatorView, children: [
      MaterialRoute(page: ConnectDialogView),
      MaterialRoute(page: ConnectHelpView),
    ]),
    MaterialRoute(page: DeviceOverviewView),
    MaterialRoute(page: WaterModeView, fullscreenDialog: true),
    MaterialRoute(page: SurveyNavigatorView, children: [
      MaterialRoute(page: CadenceMeasureView),
      MaterialRoute(page: CadenceMeasureSlowView),
      MaterialRoute(page: CadenceMeasureFastView),
      MaterialRoute(page: SurveyView),
      MaterialRoute(page: Survey2View),
      MaterialRoute(page: Survey3View),
      MaterialRoute(page: Survey4View),
      MaterialRoute(page: Survey5View),
      MaterialRoute(page: Survey6View),
    ]),
    MaterialRoute(page: UsageReportView, fullscreenDialog: true),
    MaterialRoute(page: ControlsNavigatorView, children: [
      MaterialRoute(page: ControlsMainView),
      MaterialRoute(page: ControlsDeviceView),
      MaterialRoute(page: ControlsVacuumLevelView),
      MaterialRoute(page: ControlsStepRateView),
      MaterialRoute(page: ControlsMiscView),
      MaterialRoute(page: ControlsUnitsView),
    ]),
    MaterialRoute(page: InstructionsView, fullscreenDialog: true),
    MaterialRoute(page: UiView),
    MaterialRoute(page: BleView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: PackageInfoService),
    LazySingleton(classType: ControlsService),
    LazySingleton(classType: PdfService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: ManualsDialog),
    StackedDialog(classType: ConnectDialog),
    StackedDialog(classType: SurveyDialog),
    StackedDialog(classType: ControlsDialog),
    StackedDialog(classType: ActivateDialog),
// @stacked-dialog
  ],
)
class App {}
