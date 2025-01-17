import 'package:flutter/material.dart';
import 'package:seal_gon_app/ui/views/cost_calculator/cost_calculator_view.form.dart';
import 'package:seal_gon_app/ui/views/cost_calculator/cost_calculator_viewmodel.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:stacked/stacked.dart';

class TotalMetricsFormWidget extends ViewModelWidget<CostCalculatorViewModel>
    with $CostCalculatorView {
  const TotalMetricsFormWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, CostCalculatorViewModel viewModel) {
    // Implement your build method here
    return Column(
      spacing: 15,
      children: <Widget>[
        ShadInputFormField(
          controller: totalAmountController,
          placeholder: Text('590'),
          label: Text('Monto total soles'),
          prefix: Text('S/.'),
          keyboardType: TextInputType.number,
        ),
        ShadInputFormField(
          controller: totalConsumptionController,
          placeholder: Text('590'),
          label: Text('Consumo total khz'),
          prefix: Text('Khz.'),
          keyboardType: TextInputType.number,
        ),
      ],
    );
  }
}
