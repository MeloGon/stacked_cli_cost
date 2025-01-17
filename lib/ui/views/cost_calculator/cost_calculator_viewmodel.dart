import 'package:seal_gon_app/app/app.locator.dart';
import 'package:seal_gon_app/services/cost_calculator_service.dart';
import 'package:stacked/stacked.dart';

class CostCalculatorViewModel extends BaseViewModel {
  final CostCalculatorService _costCalculatorService =
      locator<CostCalculatorService>();

  void calculate() {
    _costCalculatorService.addConsumption();
  }
}
