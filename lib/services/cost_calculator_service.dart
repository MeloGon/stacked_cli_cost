import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class CostCalculatorService with ListenableServiceMixin {
  //final ReactiveValue<>

  Future<void> addConsumption() {
    CollectionReference lecturas =
        FirebaseFirestore.instance.collection('lecturas');

    return lecturas
        .add({
          'name': 'Fiorella',
          'lectura': 100,
        })
        .then((value) => debugPrint("User added successfully!"))
        .catchError((error) => debugPrint("Failed to add user: $error"));
  }
}
