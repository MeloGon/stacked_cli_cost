import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'consumption.freezed.dart';

@freezed
@JsonSerializable(explicitToJson: true)
class Consumption with _$Consumption {
  const factory Consumption({
    required double previousConsumption,
    required double currentConsumption,
    required String ownerDpto,
  }) = _Consumption;

  factory Consumption.fromFirestore(DocumentSnapshot doc) {
    return Consumption(
      previousConsumption: doc['previousConsumption'],
      currentConsumption: doc['currentConsumption'],
      ownerDpto: doc['ownerDpto'],
    );
  }
}
