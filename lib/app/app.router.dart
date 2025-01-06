// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i14;
import 'package:flutter/material.dart';
import 'package:scioto_mobile/ui/views/ble/ble_view.dart' as _i13;
import 'package:scioto_mobile/ui/views/cadence_measure/cadence_measure_view.dart'
    as _i17;
import 'package:scioto_mobile/ui/views/cadence_measure_fast/cadence_measure_fast_view.dart'
    as _i19;
import 'package:scioto_mobile/ui/views/cadence_measure_slow/cadence_measure_slow_view.dart'
    as _i18;
import 'package:scioto_mobile/ui/views/connect_dialog/connect_dialog_view.dart'
    as _i15;
import 'package:scioto_mobile/ui/views/connect_help/connect_help_view.dart'
    as _i16;
import 'package:scioto_mobile/ui/views/connect_navigator/connect_navigator_view.dart'
    as _i5;
import 'package:scioto_mobile/ui/views/controls_device/controls_device_view.dart'
    as _i27;
import 'package:scioto_mobile/ui/views/controls_main/controls_main_view.dart'
    as _i26;
import 'package:scioto_mobile/ui/views/controls_misc/controls_misc_view.dart'
    as _i30;
import 'package:scioto_mobile/ui/views/controls_navigator/controls_navigator_view.dart'
    as _i10;
import 'package:scioto_mobile/ui/views/controls_step_rate/controls_step_rate_view.dart'
    as _i29;
import 'package:scioto_mobile/ui/views/controls_units/controls_units_view.dart'
    as _i31;
import 'package:scioto_mobile/ui/views/controls_vacuum_level/controls_vacuum_level_view.dart'
    as _i28;
import 'package:scioto_mobile/ui/views/device_overview/device_overview_view.dart'
    as _i6;
import 'package:scioto_mobile/ui/views/home/home_view.dart' as _i2;
import 'package:scioto_mobile/ui/views/instructions/instructions_view.dart'
    as _i11;
import 'package:scioto_mobile/ui/views/manuals_pdf/manuals_pdf_view.dart'
    as _i4;
import 'package:scioto_mobile/ui/views/startup/startup_view.dart' as _i3;
import 'package:scioto_mobile/ui/views/survey/survey_view.dart' as _i20;
import 'package:scioto_mobile/ui/views/survey_2/survey_2_view.dart' as _i21;
import 'package:scioto_mobile/ui/views/survey_3/survey_3_view.dart' as _i22;
import 'package:scioto_mobile/ui/views/survey_4/survey_4_view.dart' as _i23;
import 'package:scioto_mobile/ui/views/survey_5/survey_5_view.dart' as _i24;
import 'package:scioto_mobile/ui/views/survey_6/survey_6_view.dart' as _i25;
import 'package:scioto_mobile/ui/views/survey_navigator/survey_navigator_view.dart'
    as _i8;
import 'package:scioto_mobile/ui/views/ui/ui_view.dart' as _i12;
import 'package:scioto_mobile/ui/views/usage_report/usage_report_view.dart'
    as _i9;
import 'package:scioto_mobile/ui/views/water_mode/water_mode_view.dart' as _i7;
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i32;

class Routes {
  static const homeView = '/home-view';

  static const startupView = '/startup-view';

  static const manualsPdfView = '/manuals-pdf-view';

  static const connectNavigatorView = '/connect-navigator-view';

  static const deviceOverviewView = '/device-overview-view';

  static const waterModeView = '/water-mode-view';

  static const surveyNavigatorView = '/survey-navigator-view';

  static const usageReportView = '/usage-report-view';

  static const controlsNavigatorView = '/controls-navigator-view';

  static const instructionsView = '/instructions-view';

  static const uiView = '/ui-view';

  static const bleView = '/ble-view';

  static const all = <String>{
    homeView,
    startupView,
    manualsPdfView,
    connectNavigatorView,
    deviceOverviewView,
    waterModeView,
    surveyNavigatorView,
    usageReportView,
    controlsNavigatorView,
    instructionsView,
    uiView,
    bleView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.homeView,
      page: _i2.HomeView,
    ),
    _i1.RouteDef(
      Routes.startupView,
      page: _i3.StartupView,
    ),
    _i1.RouteDef(
      Routes.manualsPdfView,
      page: _i4.ManualsPdfView,
    ),
    _i1.RouteDef(
      Routes.connectNavigatorView,
      page: _i5.ConnectNavigatorView,
    ),
    _i1.RouteDef(
      Routes.deviceOverviewView,
      page: _i6.DeviceOverviewView,
    ),
    _i1.RouteDef(
      Routes.waterModeView,
      page: _i7.WaterModeView,
    ),
    _i1.RouteDef(
      Routes.surveyNavigatorView,
      page: _i8.SurveyNavigatorView,
    ),
    _i1.RouteDef(
      Routes.usageReportView,
      page: _i9.UsageReportView,
    ),
    _i1.RouteDef(
      Routes.controlsNavigatorView,
      page: _i10.ControlsNavigatorView,
    ),
    _i1.RouteDef(
      Routes.instructionsView,
      page: _i11.InstructionsView,
    ),
    _i1.RouteDef(
      Routes.uiView,
      page: _i12.UiView,
    ),
    _i1.RouteDef(
      Routes.bleView,
      page: _i13.BleView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.HomeView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.HomeView(),
        settings: data,
      );
    },
    _i3.StartupView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.StartupView(),
        settings: data,
      );
    },
    _i4.ManualsPdfView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.ManualsPdfView(),
        settings: data,
        fullscreenDialog: true,
      );
    },
    _i5.ConnectNavigatorView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.ConnectNavigatorView(),
        settings: data,
      );
    },
    _i6.DeviceOverviewView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.DeviceOverviewView(),
        settings: data,
      );
    },
    _i7.WaterModeView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i7.WaterModeView(),
        settings: data,
        fullscreenDialog: true,
      );
    },
    _i8.SurveyNavigatorView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i8.SurveyNavigatorView(),
        settings: data,
      );
    },
    _i9.UsageReportView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i9.UsageReportView(),
        settings: data,
        fullscreenDialog: true,
      );
    },
    _i10.ControlsNavigatorView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i10.ControlsNavigatorView(),
        settings: data,
      );
    },
    _i11.InstructionsView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i11.InstructionsView(),
        settings: data,
        fullscreenDialog: true,
      );
    },
    _i12.UiView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i12.UiView(),
        settings: data,
      );
    },
    _i13.BleView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i13.BleView(),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class ConnectNavigatorViewRoutes {
  static const connectDialogView = 'connect-dialog-view';

  static const connectHelpView = 'connect-help-view';

  static const all = <String>{
    connectDialogView,
    connectHelpView,
  };
}

class ConnectNavigatorViewRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      ConnectNavigatorViewRoutes.connectDialogView,
      page: _i15.ConnectDialogView,
    ),
    _i1.RouteDef(
      ConnectNavigatorViewRoutes.connectHelpView,
      page: _i16.ConnectHelpView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i15.ConnectDialogView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i15.ConnectDialogView(),
        settings: data,
      );
    },
    _i16.ConnectHelpView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i16.ConnectHelpView(),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class SurveyNavigatorViewRoutes {
  static const cadenceMeasureView = 'cadence-measure-view';

  static const cadenceMeasureSlowView = 'cadence-measure-slow-view';

  static const cadenceMeasureFastView = 'cadence-measure-fast-view';

  static const surveyView = 'survey-view';

  static const survey2View = 'survey2-view';

  static const survey3View = 'survey3-view';

  static const survey4View = 'survey4-view';

  static const survey5View = 'survey5-view';

  static const survey6View = 'survey6-view';

  static const all = <String>{
    cadenceMeasureView,
    cadenceMeasureSlowView,
    cadenceMeasureFastView,
    surveyView,
    survey2View,
    survey3View,
    survey4View,
    survey5View,
    survey6View,
  };
}

class SurveyNavigatorViewRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      SurveyNavigatorViewRoutes.cadenceMeasureView,
      page: _i17.CadenceMeasureView,
    ),
    _i1.RouteDef(
      SurveyNavigatorViewRoutes.cadenceMeasureSlowView,
      page: _i18.CadenceMeasureSlowView,
    ),
    _i1.RouteDef(
      SurveyNavigatorViewRoutes.cadenceMeasureFastView,
      page: _i19.CadenceMeasureFastView,
    ),
    _i1.RouteDef(
      SurveyNavigatorViewRoutes.surveyView,
      page: _i20.SurveyView,
    ),
    _i1.RouteDef(
      SurveyNavigatorViewRoutes.survey2View,
      page: _i21.Survey2View,
    ),
    _i1.RouteDef(
      SurveyNavigatorViewRoutes.survey3View,
      page: _i22.Survey3View,
    ),
    _i1.RouteDef(
      SurveyNavigatorViewRoutes.survey4View,
      page: _i23.Survey4View,
    ),
    _i1.RouteDef(
      SurveyNavigatorViewRoutes.survey5View,
      page: _i24.Survey5View,
    ),
    _i1.RouteDef(
      SurveyNavigatorViewRoutes.survey6View,
      page: _i25.Survey6View,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i17.CadenceMeasureView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i17.CadenceMeasureView(),
        settings: data,
      );
    },
    _i18.CadenceMeasureSlowView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i18.CadenceMeasureSlowView(),
        settings: data,
      );
    },
    _i19.CadenceMeasureFastView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i19.CadenceMeasureFastView(),
        settings: data,
      );
    },
    _i20.SurveyView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i20.SurveyView(),
        settings: data,
      );
    },
    _i21.Survey2View: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i21.Survey2View(),
        settings: data,
      );
    },
    _i22.Survey3View: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i22.Survey3View(),
        settings: data,
      );
    },
    _i23.Survey4View: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i23.Survey4View(),
        settings: data,
      );
    },
    _i24.Survey5View: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i24.Survey5View(),
        settings: data,
      );
    },
    _i25.Survey6View: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i25.Survey6View(),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class ControlsNavigatorViewRoutes {
  static const controlsMainView = 'controls-main-view';

  static const controlsDeviceView = 'controls-device-view';

  static const controlsVacuumLevelView = 'controls-vacuum-level-view';

  static const controlsStepRateView = 'controls-step-rate-view';

  static const controlsMiscView = 'controls-misc-view';

  static const controlsUnitsView = 'controls-units-view';

  static const all = <String>{
    controlsMainView,
    controlsDeviceView,
    controlsVacuumLevelView,
    controlsStepRateView,
    controlsMiscView,
    controlsUnitsView,
  };
}

class ControlsNavigatorViewRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      ControlsNavigatorViewRoutes.controlsMainView,
      page: _i26.ControlsMainView,
    ),
    _i1.RouteDef(
      ControlsNavigatorViewRoutes.controlsDeviceView,
      page: _i27.ControlsDeviceView,
    ),
    _i1.RouteDef(
      ControlsNavigatorViewRoutes.controlsVacuumLevelView,
      page: _i28.ControlsVacuumLevelView,
    ),
    _i1.RouteDef(
      ControlsNavigatorViewRoutes.controlsStepRateView,
      page: _i29.ControlsStepRateView,
    ),
    _i1.RouteDef(
      ControlsNavigatorViewRoutes.controlsMiscView,
      page: _i30.ControlsMiscView,
    ),
    _i1.RouteDef(
      ControlsNavigatorViewRoutes.controlsUnitsView,
      page: _i31.ControlsUnitsView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i26.ControlsMainView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i26.ControlsMainView(),
        settings: data,
      );
    },
    _i27.ControlsDeviceView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i27.ControlsDeviceView(),
        settings: data,
      );
    },
    _i28.ControlsVacuumLevelView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i28.ControlsVacuumLevelView(),
        settings: data,
      );
    },
    _i29.ControlsStepRateView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i29.ControlsStepRateView(),
        settings: data,
      );
    },
    _i30.ControlsMiscView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i30.ControlsMiscView(),
        settings: data,
      );
    },
    _i31.ControlsUnitsView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i31.ControlsUnitsView(),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

extension NavigatorStateExtension on _i32.NavigationService {
  Future<dynamic> navigateToHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToManualsPdfView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.manualsPdfView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToConnectNavigatorView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.connectNavigatorView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToDeviceOverviewView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.deviceOverviewView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToWaterModeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.waterModeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSurveyNavigatorView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.surveyNavigatorView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToUsageReportView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.usageReportView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToControlsNavigatorView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.controlsNavigatorView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToInstructionsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.instructionsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToUiView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.uiView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToBleView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.bleView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic>
      navigateToNestedConnectDialogViewInConnectNavigatorViewRouter([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(ConnectNavigatorViewRoutes.connectDialogView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToNestedConnectHelpViewInConnectNavigatorViewRouter([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(ConnectNavigatorViewRoutes.connectHelpView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic>
      navigateToNestedCadenceMeasureViewInSurveyNavigatorViewRouter([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(SurveyNavigatorViewRoutes.cadenceMeasureView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic>
      navigateToNestedCadenceMeasureSlowViewInSurveyNavigatorViewRouter([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(SurveyNavigatorViewRoutes.cadenceMeasureSlowView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic>
      navigateToNestedCadenceMeasureFastViewInSurveyNavigatorViewRouter([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(SurveyNavigatorViewRoutes.cadenceMeasureFastView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToNestedSurveyViewInSurveyNavigatorViewRouter([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(SurveyNavigatorViewRoutes.surveyView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToNestedSurvey2ViewInSurveyNavigatorViewRouter([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(SurveyNavigatorViewRoutes.survey2View,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToNestedSurvey3ViewInSurveyNavigatorViewRouter([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(SurveyNavigatorViewRoutes.survey3View,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToNestedSurvey4ViewInSurveyNavigatorViewRouter([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(SurveyNavigatorViewRoutes.survey4View,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToNestedSurvey5ViewInSurveyNavigatorViewRouter([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(SurveyNavigatorViewRoutes.survey5View,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToNestedSurvey6ViewInSurveyNavigatorViewRouter([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(SurveyNavigatorViewRoutes.survey6View,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic>
      navigateToNestedControlsMainViewInControlsNavigatorViewRouter([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(ControlsNavigatorViewRoutes.controlsMainView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic>
      navigateToNestedControlsDeviceViewInControlsNavigatorViewRouter([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(ControlsNavigatorViewRoutes.controlsDeviceView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic>
      navigateToNestedControlsVacuumLevelViewInControlsNavigatorViewRouter([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(
        ControlsNavigatorViewRoutes.controlsVacuumLevelView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic>
      navigateToNestedControlsStepRateViewInControlsNavigatorViewRouter([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(ControlsNavigatorViewRoutes.controlsStepRateView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic>
      navigateToNestedControlsMiscViewInControlsNavigatorViewRouter([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(ControlsNavigatorViewRoutes.controlsMiscView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic>
      navigateToNestedControlsUnitsViewInControlsNavigatorViewRouter([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(ControlsNavigatorViewRoutes.controlsUnitsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithManualsPdfView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.manualsPdfView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithConnectNavigatorView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.connectNavigatorView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithDeviceOverviewView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.deviceOverviewView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithWaterModeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.waterModeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSurveyNavigatorView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.surveyNavigatorView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithUsageReportView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.usageReportView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithControlsNavigatorView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.controlsNavigatorView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithInstructionsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.instructionsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithUiView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.uiView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithBleView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.bleView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic>
      replaceWithNestedConnectDialogViewInConnectNavigatorViewRouter([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(ConnectNavigatorViewRoutes.connectDialogView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithNestedConnectHelpViewInConnectNavigatorViewRouter([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(ConnectNavigatorViewRoutes.connectHelpView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic>
      replaceWithNestedCadenceMeasureViewInSurveyNavigatorViewRouter([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(SurveyNavigatorViewRoutes.cadenceMeasureView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic>
      replaceWithNestedCadenceMeasureSlowViewInSurveyNavigatorViewRouter([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(
        SurveyNavigatorViewRoutes.cadenceMeasureSlowView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic>
      replaceWithNestedCadenceMeasureFastViewInSurveyNavigatorViewRouter([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(
        SurveyNavigatorViewRoutes.cadenceMeasureFastView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithNestedSurveyViewInSurveyNavigatorViewRouter([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(SurveyNavigatorViewRoutes.surveyView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithNestedSurvey2ViewInSurveyNavigatorViewRouter([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(SurveyNavigatorViewRoutes.survey2View,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithNestedSurvey3ViewInSurveyNavigatorViewRouter([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(SurveyNavigatorViewRoutes.survey3View,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithNestedSurvey4ViewInSurveyNavigatorViewRouter([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(SurveyNavigatorViewRoutes.survey4View,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithNestedSurvey5ViewInSurveyNavigatorViewRouter([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(SurveyNavigatorViewRoutes.survey5View,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithNestedSurvey6ViewInSurveyNavigatorViewRouter([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(SurveyNavigatorViewRoutes.survey6View,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic>
      replaceWithNestedControlsMainViewInControlsNavigatorViewRouter([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(ControlsNavigatorViewRoutes.controlsMainView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic>
      replaceWithNestedControlsDeviceViewInControlsNavigatorViewRouter([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(ControlsNavigatorViewRoutes.controlsDeviceView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic>
      replaceWithNestedControlsVacuumLevelViewInControlsNavigatorViewRouter([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(
        ControlsNavigatorViewRoutes.controlsVacuumLevelView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic>
      replaceWithNestedControlsStepRateViewInControlsNavigatorViewRouter([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(
        ControlsNavigatorViewRoutes.controlsStepRateView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic>
      replaceWithNestedControlsMiscViewInControlsNavigatorViewRouter([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(ControlsNavigatorViewRoutes.controlsMiscView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic>
      replaceWithNestedControlsUnitsViewInControlsNavigatorViewRouter([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(ControlsNavigatorViewRoutes.controlsUnitsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
