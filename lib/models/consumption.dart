import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'consumption.freezed.dart';

@freezed
@JsonSerializable(explicitToJson: true)
class Consumption with _$Consumption {
  const factory Consumption({
    required double lastConsumptionReading,
    required double lastConsumptionAmount,
    required String ownerDpto,
  }) = _Consumption;

  factory Consumption.fromFirestore(DocumentSnapshot doc) {
    return Consumption(
      lastConsumptionReading: doc['lastConsumptionReading'],
      lastConsumptionAmount: doc['lastConsumptionAmount'],
      ownerDpto: doc['ownerDpto'],
    );
  }
}
