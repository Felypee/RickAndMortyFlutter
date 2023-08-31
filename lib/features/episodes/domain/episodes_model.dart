import 'package:freezed_annotation/freezed_annotation.dart';

part 'episodes_model.freezed.dart';

@freezed
class EpisodesModel with _$EpisodesModel {
  const factory EpisodesModel({
    required int id,
    required String name,
    required String airDate,
    required String episode,
    required int charactersNumber,
  }) = _EpisodesModel;

  factory EpisodesModel.fromJson(Map<String, dynamic> json) {
    return EpisodesModel(
      id: json["id"],
      name: json["name"],
      airDate: json["air_date"],
      episode: json["episode"],
      charactersNumber: json["characters"].length,
    );
  }
}
