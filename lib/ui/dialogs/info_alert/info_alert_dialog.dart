import 'package:flutter/material.dart';
import 'package:seal_gon_app/app/extension/consumption_extension.dart';
import 'package:seal_gon_app/ui/common/ui_helpers.dart';
import 'package:seal_gon_app/ui/views/cost_calculator/cost_calculator_view.form.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'info_alert_dialog_model.dart';

const double _graphicSize = 60;

class InfoAlertDialog extends StackedView<InfoAlertDialogModel>
    with $CostCalculatorView {
  final DialogRequest request;
  final Function(DialogResponse) completer;

  const InfoAlertDialog({
    Key? key,
    required this.request,
    required this.completer,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    InfoAlertDialogModel viewModel,
    Widget? child,
  ) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        request.title!,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w900),
                      ),
                      verticalSpaceTiny,
                      ShadCard(
                        child: viewModel.isLoading
                            ? const Center(child: CircularProgressIndicator())
                            : Column(
                                spacing: 6,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(viewModel.lastFirstDptoConsumption
                                              ?.getDptoName() ??
                                          ''),
                                      Text('${firstDptoController.text} khz '),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(viewModel.lastSecondDptoConsumption
                                              ?.getDptoName() ??
                                          ''),
                                      Text('${secondDptoController.text} khz '),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(viewModel.lastThirdDptoConsumption
                                              ?.getDptoName() ??
                                          ''),
                                      Text('${thirdDptoController.text} khz '),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(viewModel.lastFourthDptoConsumption
                                              ?.getDptoName() ??
                                          ''),
                                      Text('${quartDptoController.text} khz '),
                                    ],
                                  ),
                                ],
                              ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            verticalSpaceMedium,
            ShadButton(
              width: double.infinity,
              child: const Text('Si'),
              onPressed: () => completer(
                DialogResponse(
                  confirmed: true,
                ),
              ),
            ),
            ShadButton.ghost(
              child: const Text('No'),
              onPressed: () => completer(
                DialogResponse(
                  confirmed: false,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  InfoAlertDialogModel viewModelBuilder(BuildContext context) =>
      InfoAlertDialogModel();
}
