import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_model.freezed.dart';

@freezed
class LocationModel with _$LocationModel {
  const factory LocationModel({
    required int id,
    required String name,
    required String type,
    required String dimension,
    required int residentsNumber,
  }) = _LocationModel;

  factory LocationModel.fromJson(Map<String, dynamic> json) {
    return LocationModel(
      id: json["id"],
      name: json["name"],
      type: json["type"],
      dimension: json["dimension"],
      residentsNumber: json["residents"].length,
    );
  }
}
