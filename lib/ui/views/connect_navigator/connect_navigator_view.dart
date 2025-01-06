import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.router.dart';
import 'connect_navigator_viewmodel.dart';

class ConnectNavigatorView extends StackedView<ConnectNavigatorViewModel> {
  const ConnectNavigatorView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ConnectNavigatorViewModel viewModel,
    Widget? child,
  ) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      child: SizedBox(
        height: 600,
        width: 650,
        child: Navigator(
          initialRoute: ConnectNavigatorViewRoutes.connectDialogView,
          observers: [StackedService.routeObserver],
          onGenerateRoute: ConnectNavigatorViewRouter(),
          key: StackedService.nestedNavigationKey(1),
        ),
      ),
    );
  }

  @override
  ConnectNavigatorViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ConnectNavigatorViewModel();
}
