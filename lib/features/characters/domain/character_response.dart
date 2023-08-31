import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/features/characters/domain/character_model.dart';

part 'character_response.freezed.dart';

@freezed
class CharacterResponse with _$CharacterResponse {
  const factory CharacterResponse({
    required int maxPages,
    required int nextPage,
    List<CharacterModel>? characterList,
  }) = _CharacterResponse;

  factory CharacterResponse.fromJson(Map<String, dynamic> json) {
    List<CharacterModel> characters = (json["results"] as List).map(
      (character) {
        return CharacterModel.fromJson(character);
      },
    ).toList();
    return CharacterResponse(
      maxPages: json["info"]["pages"],
      nextPage: int.parse(Uri.dataFromString(json["info"]["next"])
          .queryParameters["page"]
          .toString()),
      characterList: characters,
    );
  }
}
