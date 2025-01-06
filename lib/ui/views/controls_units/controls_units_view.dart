import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../common/ui_helpers.dart';
import 'controls_units_viewmodel.dart';

class ControlsUnitsView extends StackedView<ControlsUnitsViewModel> {
  const ControlsUnitsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ControlsUnitsViewModel viewModel,
    Widget? child,
  ) {
    final List<String> units = ['inHg', 'mmHg'];

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.white,
          leading: TextButton(
            onPressed: viewModel.back,
            child: const Row(
              children: [
                Icon(Icons.chevron_left),
                Text(
                  'Back',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
          leadingWidth: 90,
          title: const Text('Units', style: TextStyle(color: Colors.black)),
          centerTitle: true,
        ),
        verticalSpaceMedium,
        Column(
          children: List.generate(units.length, (index) {
            return Column(
              children: [
                Container(
                  decoration: const BoxDecoration(color: Colors.white),
                  child: ListTile(
                    onTap: () => viewModel.selectMeasurement(index),
                    title: Text(units[index]),
                    trailing: viewModel.isSelected[index]
                        ? const Icon(
                            Icons.check,
                            color: Colors.blue,
                          )
                        : null,
                    visualDensity: VisualDensity.compact,
                  ),
                ),
                if (index < units.length - 1)
                  const Divider(height: 0, indent: 20),
              ],
            );
          }),
        )
        // ListView(
        //   shrinkWrap: true,
        //   children: [
        //     Container(
        //       decoration: const BoxDecoration(color: Colors.white),
        //       child: ListTile(
        //         onTap: viewModel.selectInHg,
        //         title: const Text('inHg'),
        //         trailing: viewModel.isSelected[0]
        //             ? const Icon(
        //                 Icons.check,
        //                 color: Colors.blue,
        //               )
        //             : null,
        //         visualDensity: VisualDensity.compact,
        //       ),
        //     ),
        //     const Divider(height: 0, indent: 20),
        //     Container(
        //       decoration: const BoxDecoration(color: Colors.white),
        //       child: ListTile(
        //         onTap: viewModel.selectMmHg,
        //         title: const Text('mmHg'),
        //         trailing: viewModel.isSelected[1]
        //             ? const Icon(
        //           Icons.check,
        //           color: Colors.blue,
        //         )
        //             : null,
        //         visualDensity: VisualDensity.compact,
        //       ),
        //     ),
        //   ],
        // ),
      ],
    );
  }

  @override
  ControlsUnitsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ControlsUnitsViewModel();
}
