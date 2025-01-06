import 'package:flutter/material.dart';
import 'package:scioto_mobile/ui/common/app_colors.dart';
import 'package:scioto_mobile/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'activate_dialog_model.dart';

class ActivateDialog extends StackedView<ActivateDialogModel> {
  final DialogRequest request;
  final Function(DialogResponse) completer;

  const ActivateDialog({
    Key? key,
    required this.request,
    required this.completer,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ActivateDialogModel viewModel,
    Widget? child,
  ) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SizedBox(
          width: 100,
          height: 300,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      request.title ?? 'Hello Stacked Dialog!!',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    if (request.description != null) ...[
                      verticalSpaceTiny,
                      Text(
                        request.description!,
                        style: const TextStyle(
                          fontSize: 14,
                          color: kcMediumGrey,
                        ),
                        softWrap: true,
                      ),
                    ],
                  ],
                ),
              ),
              SizedBox(
                height: 40,
                child: TextField(
                  controller: viewModel.textEditingController,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 0.0, horizontal: 8.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Colors.blue),
                    ),
                  ),
                ),
              ),
              verticalSpaceMedium,
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => completer(DialogResponse(confirmed: false)),
                      child: Container(
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black)),
                        child: const Text(
                          'Cancel',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                  horizontalSpaceSmall,
                  Expanded(
                    child: GestureDetector(
                      onTap: () => viewModel
                          .validateCode((response) => completer(response)),
                      child: Container(
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.red)),
                        child: const Text(
                          'Activate',
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  ActivateDialogModel viewModelBuilder(BuildContext context) =>
      ActivateDialogModel();
}
