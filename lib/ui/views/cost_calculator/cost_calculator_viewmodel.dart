import 'package:seal_gon_app/app/app.locator.dart';
import 'package:seal_gon_app/models/consumption.dart';
import 'package:seal_gon_app/services/cost_calculator_service.dart';
import 'package:seal_gon_app/ui/views/cost_calculator/cost_calculator_view.form.dart';
import 'package:stacked/stacked.dart';

class CostCalculatorViewModel extends BaseViewModel with $CostCalculatorView {
  final CostCalculatorService _costCalculatorService =
      locator<CostCalculatorService>();

  void saveConsumption(Consumption consumption) {
    //_costCalculatorService.saveConsumption();
  }

  List<ListenableServiceMixin> get listenableServices =>
      [_costCalculatorService];

  void calculate() async {
    await _costCalculatorService.getConsumptions();

    _costCalculatorService.firstDptoAmount.value = calculateAmount(
        double.parse(firstDptoController.text) -
            (_costCalculatorService
                    .lastFirstDptoConsumption.value?.previousConsumption ??
                0));
    _costCalculatorService.secondDptoAmount.value = calculateAmount(
        double.parse(secondDptoController.text) -
            (_costCalculatorService
                    .lastSecondDptoConsumption.value?.previousConsumption ??
                0));
    _costCalculatorService.thirdDptoAmount.value = calculateAmount(
        double.parse(thirdDptoController.text) -
            (_costCalculatorService
                    .lastThirdDptoConsumption.value?.previousConsumption ??
                0));
    _costCalculatorService.quartDptoAmount.value = calculateAmount(
        double.parse(quartDptoController.text) -
            (_costCalculatorService
                    .lastQuartDptoConsumption.value?.previousConsumption ??
                0));

    final listConsumption = [
      Consumption(
          previousConsumption: double.parse(firstDptoController.text),
          currentConsumption: _costCalculatorService.firstDptoAmount.value,
          ownerDpto: 'firstDpto'),
      Consumption(
          previousConsumption: double.parse(secondDptoController.text),
          currentConsumption: _costCalculatorService.secondDptoAmount.value,
          ownerDpto: 'secondDpto'),
      Consumption(
          previousConsumption: double.parse(thirdDptoController.text),
          currentConsumption: _costCalculatorService.thirdDptoAmount.value,
          ownerDpto: 'thirdDpto'),
      Consumption(
          previousConsumption: double.parse(quartDptoController.text),
          currentConsumption: _costCalculatorService.quartDptoAmount.value,
          ownerDpto: 'quartDpto'),
    ];

    for (Consumption consumption in listConsumption) {
      _costCalculatorService.saveConsumption(consumption);
    }
  }

  double calculateAmount(double value) {
    return (((value * 100) / double.parse(totalConsumptionController.text)) *
            double.parse(totalAmountController.text) /
            100) +
        (double.parse(waterAmountController.text) / 5);
  }
}
