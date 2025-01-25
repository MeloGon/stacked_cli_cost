import 'package:seal_gon_app/app/extension/consumption_extension.dart';
import 'package:seal_gon_app/ui/views/cost_calculator/cost_calculator_viewmodel.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import 'package:stacked/stacked.dart';

import 'package:flutter/material.dart';

class PreviousConsumptionsWidget
    extends ViewModelWidget<CostCalculatorViewModel> {
  const PreviousConsumptionsWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, CostCalculatorViewModel viewModel) {
    return ShadAccordion<String>(
      children: [
        ShadAccordionItem(
          value: 'past_readings',
          title: const Text(
            'Precios de los servicios del último mes',
          ),
          child: ShadCard(
            child: viewModel.isLoading
                ? const Center(child: CircularProgressIndicator())
                : Column(
                    spacing: 6,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(viewModel.lastFirstDptoConsumption
                                  ?.getDptoName() ??
                              ''),
                          Text(
                              's/.${viewModel.lastFirstDptoConsumption?.lastConsumptionAmount ?? 0}'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(viewModel.lastSecondDptoConsumption
                                  ?.getDptoName() ??
                              ''),
                          Text(
                              's/.${viewModel.lastSecondDptoConsumption?.lastConsumptionAmount ?? 0}'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(viewModel.lastThirdDptoConsumption
                                  ?.getDptoName() ??
                              ''),
                          Text(
                              's/.${viewModel.lastThirdDptoConsumption?.lastConsumptionAmount ?? 0}'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(viewModel.lastFourthDptoConsumption
                                  ?.getDptoName() ??
                              ''),
                          Text(
                              's/.${viewModel.lastFourthDptoConsumption?.lastConsumptionAmount ?? 0}'),
                        ],
                      ),
                    ],
                  ),
          ),
        ),
      ],
    );
  }
}
