import 'package:flutter/material.dart';
import 'package:scioto_mobile/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'controls_navigator_viewmodel.dart';

class ControlsNavigatorView extends StackedView<ControlsNavigatorViewModel> {
  const ControlsNavigatorView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ControlsNavigatorViewModel viewModel,
    Widget? child,
  ) {
    return Dialog(
      insetPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      child: Navigator(
        initialRoute: ControlsNavigatorViewRoutes.controlsMainView,
        observers: [StackedService.routeObserver],
        onGenerateRoute: ControlsNavigatorViewRouter(),
        key: StackedService.nestedNavigationKey(3),
      ),
    );
  }

  @override
  ControlsNavigatorViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ControlsNavigatorViewModel();
}
