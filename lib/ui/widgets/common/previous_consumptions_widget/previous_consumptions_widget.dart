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
          title: Text(
            'Ver lecturas del mes pasado',
          ),
          child: ShadCard(
            child: Column(
              spacing: 6,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Dpto. 101 F'),
                    Text('590 Khz.'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Dpto. 102 K'),
                    Text('590 Khz.'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Dpto. 103 P'),
                    Text('590 Khz.'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Dpto. 104 K'),
                    Text('590 Khz.'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Monto de Agua'),
                    Text('S/. 590'),
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
