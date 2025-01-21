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
  final ReactiveValue<bool> isLoading = ReactiveValue<bool>(false);

  CostCalculatorService() {
    listenToReactiveValues([
      firstDptoAmount,
      secondDptoAmount,
      thirdDptoAmount,
      quartDptoAmount,
      lastFirstDptoConsumption,
      lastSecondDptoConsumption,
      lastThirdDptoConsumption,
      lastQuartDptoConsumption,
      isLoading
    ]);
  }

  Future<void> getConsumptions() async {
    isLoading.value = true;
    try {
      CollectionReference consumptions =
          FirebaseFirestore.instance.collection('consumptions');
      await consumptions.get().then((QuerySnapshot querySnapshot) {
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
      isLoading.value = false;
      notifyListeners();
    } catch (e) {
      debugPrint("Failed to fetch consumosssss***: $e");
    }
  }

  Future<void> updateConsumption(Consumption consumption) {
    CollectionReference consumptions =
        FirebaseFirestore.instance.collection('consumptions');

    return consumptions
        .where('ownerDpto', isEqualTo: consumption.ownerDpto)
        .get()
        .then((QuerySnapshot snapshot) {
      for (var consumptionFromFirebase in snapshot.docs) {
        consumptionFromFirebase.reference.update({
          'lastConsumptionReading': consumption.lastConsumptionReading,
          'lastConsumptionAmount': consumption.lastConsumptionAmount,
        });
      }
    }).catchError((error) => debugPrint("Failed to fetch users: $error"));
  }

  Future<void> addConsumption(Consumption consumption) {
    CollectionReference consumptions =
        FirebaseFirestore.instance.collection('consumptions');

    return consumptions
        .add({
          'lastConsumptionReading': consumption.lastConsumptionReading,
          'lastConsumptionAmount': consumption.lastConsumptionAmount,
          'ownerDpto': consumption.ownerDpto,
        })
        .then((value) => debugPrint("User added successfully!"))
        .catchError((error) => debugPrint("Failed to add user: $error"));
  }
}
