import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:seal_gon_app/models/consumption.dart';
import 'package:stacked/stacked.dart';

class CostCalculatorService with ListenableServiceMixin {
  final ReactiveValue<double> firstDptoAmount = ReactiveValue<double>(0);
  final ReactiveValue<double> secondDptoAmount = ReactiveValue<double>(0);
  final ReactiveValue<double> thirdDptoAmount = ReactiveValue<double>(0);
  final ReactiveValue<double> quartDptoAmount = ReactiveValue<double>(0);
  final ReactiveValue<Consumption?> lastFirstDptoConsumption =
      ReactiveValue<Consumption?>(null);
  final ReactiveValue<Consumption?> lastSecondDptoConsumption =
      ReactiveValue<Consumption?>(null);
  final ReactiveValue<Consumption?> lastThirdDptoConsumption =
      ReactiveValue<Consumption?>(null);
  final ReactiveValue<Consumption?> lastQuartDptoConsumption =
      ReactiveValue<Consumption?>(null);

  Future<void> getConsumptions() async {
    CollectionReference consumptions =
        FirebaseFirestore.instance.collection('consumptions');
    consumptions.get().then((QuerySnapshot querySnapshot) {
      for (var consumption in querySnapshot.docs) {
        final consumptionModel = Consumption.fromFirestore(consumption);
        switch (consumption["ownerDpto"]) {
          case "firstDpto":
            lastFirstDptoConsumption.value = consumptionModel;
            break;
          case "secondDpto":
            lastSecondDptoConsumption.value = consumptionModel;
            break;
          case "thirdDpto":
            lastThirdDptoConsumption.value = consumptionModel;
            break;
          case "quartDpto":
            lastQuartDptoConsumption.value = consumptionModel;
            break;
          default:
        }
      }
    });
  }

  Future<void> saveConsumption(Consumption consumption) {
    CollectionReference consumptions =
        FirebaseFirestore.instance.collection('consumptions');

    return consumptions
        .where('ownerDpto', isEqualTo: consumption.ownerDpto)
        .get()
        .then((QuerySnapshot snapshot) {
      for (var consumptionFromFirebase in snapshot.docs) {
        consumptionFromFirebase.reference.update({
          'previousConsumption': consumption.previousConsumption,
          'currentConsumption': consumption.currentConsumption,
        });
      }
    }).catchError((error) => debugPrint("Failed to fetch users: $error"));
  }
}
