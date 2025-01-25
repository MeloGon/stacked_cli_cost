import 'package:seal_gon_app/app/enums/department_enum.dart';
import 'package:seal_gon_app/models/consumption.dart';

extension ConsumptionExtension on Consumption {
  fillConsumption(Consumption consumption) {
    if (ownerDpto == DepartmentEnum.firstDpto.value) {
      consumption = this;
    } else if (ownerDpto == DepartmentEnum.secondDpto.value) {
      consumption = this;
    } else if (ownerDpto == DepartmentEnum.thirdDpto.value) {
      consumption = this;
    } else {
      consumption = this;
    }
  }

  String getDptoName() {
    if (ownerDpto == DepartmentEnum.firstDpto.value) {
      return "Dpto. 101 F";
    } else if (ownerDpto == DepartmentEnum.secondDpto.value) {
      return "Dpto. 102 K";
    } else if (ownerDpto == DepartmentEnum.thirdDpto.value) {
      return "Dpto. 103 P";
    } else {
      return "Dpto. 104 K";
    }
  }
}
