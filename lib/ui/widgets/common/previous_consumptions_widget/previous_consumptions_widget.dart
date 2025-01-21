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
            'Precios de los servicios del mes pasado',
          ),
          child: ShadCard(
            child: viewModel.isLoading
                ? const Center(child: CircularProgressIndicator())
                : Column(
                    spacing: 6,
                    children: [
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      //     const Text('Dpto. 101 F'),
                      //     Text(
                      //         's/.${viewModel.firstDptoLastAmount.toString()}'),
                      //   ],
                      // ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      //     const Text('Dpto. 102 K'),
                      //     Text(
                      //         's/.${viewModel.secondDptoLastAmount.toString()}'),
                      //   ],
                      // ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      //     const Text('Dpto. 103 P'),
                      //     Text(
                      //         's/.${viewModel.thirdDptoLastAmount.toString()}'),
                      //   ],
                      // ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      //     const Text('Dpto. 104 K'),
                      //     Text(
                      //         's/.${viewModel.quartDptoLastAmount.toString()}'),
                      //   ],
                      // ),
                    ],
                  ),
          ),
        ),
      ],
    );
  }
}
