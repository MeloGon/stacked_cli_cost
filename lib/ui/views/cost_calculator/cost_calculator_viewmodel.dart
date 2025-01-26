import 'package:seal_gon_app/app/app.dialogs.dart';
import 'package:seal_gon_app/app/app.locator.dart';
import 'package:seal_gon_app/models/consumption.dart';
import 'package:seal_gon_app/services/cost_calculator_service.dart';
import 'package:seal_gon_app/ui/views/cost_calculator/cost_calculator_view.form.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class CostCalculatorViewModel extends ReactiveViewModel
    with $CostCalculatorView {
  final CostCalculatorService _costCalculatorService =
      locator<CostCalculatorService>();

  final DialogService _dialogService = locator<DialogService>();
  final SnackbarService _snackbarService = locator<SnackbarService>();

  Consumption? get lastFirstDptoConsumption =>
      _costCalculatorService.lastFirstDptoConsumption.value;

  Consumption? get lastSecondDptoConsumption =>
      _costCalculatorService.lastSecondDptoConsumption.value;

  Consumption? get lastThirdDptoConsumption =>
      _costCalculatorService.lastThirdDptoConsumption.value;

  Consumption? get lastFourthDptoConsumption =>
      _costCalculatorService.lastFourthDptoConsumption.value;

  bool get isLoading => _costCalculatorService.isLoading.value;

  bool get canConfirmConsumptions =>
      firstDptoController.text.isNotEmpty &&
      secondDptoController.text.isNotEmpty &&
      thirdDptoController.text.isNotEmpty &&
      quartDptoController.text.isNotEmpty &&
      totalAmountController.text.isNotEmpty &&
      totalConsumptionController.text.isNotEmpty &&
      waterAmountController.text.isNotEmpty;

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
              _costCalculatorService.fourthDptoAmount.value.toStringAsFixed(2)),
          ownerDpto: 'fourthDpto'),
    ];
    for (Consumption consumption in listConsumption) {
      // only if want add
      // await _costCalculatorService.addConsumption(consumption);
      await _costCalculatorService.updateConsumption(consumption);
    }
    await _costCalculatorService.getConsumptions();
  }

  void confirmConsumptions() async {
    if (canConfirmConsumptions) {
      var dialogResponse = await _dialogService.showCustomDialog(
        variant: DialogType.infoAlert,
        title: 'Las lecturas ingresadas son correctas ?',
        description: 'Give stacked  stars on Github',
      );

      if (dialogResponse?.confirmed ?? false) {
        calculate();
      }
    } else {
      showSimpleToast('Hay algunos campos que no has llenado para continuar');
    }
  }

  void showSimpleToast(String message) {
    _snackbarService.showSnackbar(
      message: message,
      duration: const Duration(seconds: 2),
      mainButtonTitle: 'OK',
      onMainButtonTapped: () => print("Toast dismissed"),
    );
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
    _costCalculatorService.fourthDptoAmount.value = calculateAmount(
        double.parse(quartDptoController.text) -
            (_costCalculatorService
                    .lastFourthDptoConsumption.value?.lastConsumptionReading ??
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
