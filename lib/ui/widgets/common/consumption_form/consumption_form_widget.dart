import 'package:flutter/material.dart';
import 'package:seal_gon_app/ui/views/cost_calculator/cost_calculator_view.form.dart';
import 'package:seal_gon_app/ui/views/cost_calculator/cost_calculator_viewmodel.dart';
import 'package:seal_gon_app/ui/widgets/common/previous_consumptions_widget/previous_consumptions_widget.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:stacked/stacked.dart';

class ConsumptionFormWidget extends ViewModelWidget<CostCalculatorViewModel>
    with $CostCalculatorView {
  const ConsumptionFormWidget({Key? key}) : super(key: key);
  @override
  Widget build(
    BuildContext context,
    CostCalculatorViewModel viewModel,
  ) {
    return Column(
      spacing: 10,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
                flex: 1,
                child: Text(
                  'Dpto. 101 F',
                  style:
                      ShadTheme.of(context).textTheme.h3.copyWith(fontSize: 14),
                )),
            Flexible(
                flex: 1,
                child: ShadInputFormField(
                  controller: firstDptoController,
                  placeholder: const Text('590'),
                  prefix: const Text('Khz.'),
                  keyboardType: TextInputType.number,
                )),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
                flex: 1,
                child: Text(
                  'Dpto. 102 K',
                  style:
                      ShadTheme.of(context).textTheme.h3.copyWith(fontSize: 14),
                )),
            Flexible(
                flex: 1,
                child: ShadInputFormField(
                  controller: secondDptoController,
                  placeholder: const Text('590'),
                  prefix: const Text('Khz.'),
                  keyboardType: TextInputType.number,
                )),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
                flex: 1,
                child: Text(
                  'Dpto. 103 P',
                  style:
                      ShadTheme.of(context).textTheme.h3.copyWith(fontSize: 14),
                )),
            Flexible(
                flex: 1,
                child: ShadInputFormField(
                  controller: thirdDptoController,
                  placeholder: const Text('590'),
                  prefix: const Text('Khz.'),
                  keyboardType: TextInputType.number,
                )),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
                flex: 1,
                child: Text(
                  'Dpto. 104 K',
                  style:
                      ShadTheme.of(context).textTheme.h3.copyWith(fontSize: 14),
                )),
            Flexible(
                flex: 1,
                child: ShadInputFormField(
                  controller: quartDptoController,
                  placeholder: const Text('590'),
                  prefix: const Text('Khz.'),
                  keyboardType: TextInputType.number,
                )),
          ],
        ),
        ShadInputFormField(
          controller: waterAmountController,
          placeholder: const Text('590'),
          label: const Text('Monto de Agua'),
          prefix: const Text('S/.'),
          keyboardType: TextInputType.number,
        ),
        const Divider(),
        const PreviousConsumptionsWidget(),
      ],
    );
  }

  CostCalculatorViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CostCalculatorViewModel();
}
