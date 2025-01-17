import 'package:flutter/material.dart';
import 'package:seal_gon_app/ui/common/app_strings.dart';
import 'package:seal_gon_app/ui/widgets/common/consumption_form/consumption_form_widget.dart';
import 'package:seal_gon_app/ui/widgets/common/total_metrics_form/total_metrics_form_widget.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import './cost_calculator_view.form.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'cost_calculator_viewmodel.dart';

@FormView(fields: [
  FormTextField(name: 'totalAmount'),
  FormTextField(name: 'totalConsumption'),
  FormTextField(name: 'firstDpto'),
  FormTextField(name: 'secondDpto'),
  FormTextField(name: 'thirdDpto'),
  FormTextField(name: 'quartDpto'),
  FormTextField(name: 'waterAmount'),
])
class CostCalculatorView extends StackedView<CostCalculatorViewModel>
    with $CostCalculatorView {
  const CostCalculatorView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CostCalculatorViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text(ksCostCalculator),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0),
          child: const Column(
            spacing: 15,
            children: <Widget>[
              TotalMetricsFormWidget(),
              Divider(),
              ConsumptionFormWidget(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(15.0),
        child: ShadButton(
          onPressed: viewModel.calculate,
          child: const Text(ksConsult),
        ),
      ),
    );
  }

  @override
  CostCalculatorViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CostCalculatorViewModel();
}
