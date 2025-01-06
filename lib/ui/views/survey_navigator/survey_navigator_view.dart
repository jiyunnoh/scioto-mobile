import 'package:flutter/material.dart';
import 'package:scioto_mobile/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'survey_navigator_viewmodel.dart';

class SurveyNavigatorView extends StackedView<SurveyNavigatorViewModel> {
  const SurveyNavigatorView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SurveyNavigatorViewModel viewModel,
    Widget? child,
  ) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      child: SizedBox(
        height: 600,
        width: 650,
        child: Navigator(
          initialRoute: SurveyNavigatorViewRoutes.cadenceMeasureView,
          observers: [StackedService.routeObserver],
          onGenerateRoute: SurveyNavigatorViewRouter(),
          key: StackedService.nestedNavigationKey(2),
        ),
      ),
    );
  }

  @override
  SurveyNavigatorViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SurveyNavigatorViewModel();
}
