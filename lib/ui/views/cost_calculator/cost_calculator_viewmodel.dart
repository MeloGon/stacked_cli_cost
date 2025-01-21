import 'package:seal_gon_app/app/app.locator.dart';
import 'package:seal_gon_app/models/consumption.dart';
import 'package:seal_gon_app/services/cost_calculator_service.dart';
import 'package:seal_gon_app/ui/views/cost_calculator/cost_calculator_view.form.dart';
import 'package:stacked/stacked.dart';

class CostCalculatorViewModel extends ReactiveViewModel
    with $CostCalculatorView {
  final CostCalculatorService _costCalculatorService =
      locator<CostCalculatorService>();

  // double get firstDptoAmount => _costCalculatorService.firstDptoAmount.value;
  // double get secondDptoAmount => _costCalculatorService.secondDptoAmount.value;
  // double get thirdDptoAmount => _costCalculatorService.thirdDptoAmount.value;
  // double get quartDptoAmount => _costCalculatorService.quartDptoAmount.value;

  // double get firstDptoPreviousConsumption =>
  //     _costCalculatorService
  //         .lastFirstDptoConsumption.value?.previousConsumption ??
  //     0;
  // double get secondDptoPreviousConsumption =>
  //     _costCalculatorService
  //         .lastSecondDptoConsumption.value?.previousConsumption ??
  //     0;
  // double get thirdDptoPreviousConsumption =>
  //     _costCalculatorService
  //         .lastThirdDptoConsumption.value?.previousConsumption ??
  //     0;
  // double get quartDptoPreviousConsumption =>
  //     _costCalculatorService
  //         .lastQuartDptoConsumption.value?.previousConsumption ??
  //     0;

  bool get isLoading => _costCalculatorService.isLoading.value;

  @override
  List<ListenableServiceMixin> get listenableServices =>
      [_costCalculatorService];

  Future init() async {
    await _costCalculatorService.getConsumptions();
    notifyListeners();
  }

  void updateConsumption() async {
    final listConsumption = [
      Consumption(
          lastConsumptionReading: double.parse(firstDptoController.text),
          lastConsumptionAmount: double.parse(
              _costCalculatorService.firstDptoAmount.value.toStringAsFixed(2)),
          ownerDpto: 'firstDpto'),
      Consumption(
          lastConsumptionReading: double.parse(secondDptoController.text),
          lastConsumptionAmount: double.parse(
              _costCalculatorService.secondDptoAmount.value.toStringAsFixed(2)),
          ownerDpto: 'secondDpto'),
      Consumption(
          lastConsumptionReading: double.parse(thirdDptoController.text),
          lastConsumptionAmount: double.parse(
              _costCalculatorService.thirdDptoAmount.value.toStringAsFixed(2)),
          ownerDpto: 'thirdDpto'),
      Consumption(
          lastConsumptionReading: double.parse(quartDptoController.text),
          lastConsumptionAmount: double.parse(
              _costCalculatorService.quartDptoAmount.value.toStringAsFixed(2)),
          ownerDpto: 'quartDpto'),
    ];
    for (Consumption consumption in listConsumption) {
      // only if want add
      // await _costCalculatorService.addConsumption(consumption);
      await _costCalculatorService.updateConsumption(consumption);
    }
  }

  void calculate() async {
    _costCalculatorService.firstDptoAmount.value = calculateAmount(
        double.parse(firstDptoController.text) -
            (_costCalculatorService
                    .lastFirstDptoConsumption.value?.lastConsumptionReading ??
                0));
    _costCalculatorService.secondDptoAmount.value = calculateAmount(
        double.parse(secondDptoController.text) -
            (_costCalculatorService
                    .lastSecondDptoConsumption.value?.lastConsumptionReading ??
                0));
    _costCalculatorService.thirdDptoAmount.value = calculateAmount(
        double.parse(thirdDptoController.text) -
            (_costCalculatorService
                    .lastThirdDptoConsumption.value?.lastConsumptionReading ??
                0));
    _costCalculatorService.quartDptoAmount.value = calculateAmount(
        double.parse(quartDptoController.text) -
            (_costCalculatorService
                    .lastQuartDptoConsumption.value?.lastConsumptionReading ??
                0));

    updateConsumption();
  }

  double calculateAmount(double value) {
    return (((value * 100) / double.parse(totalConsumptionController.text)) *
            double.parse(totalAmountController.text) /
            100) +
        (double.parse(waterAmountController.text) / 5);
  }
}
