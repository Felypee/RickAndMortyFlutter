import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/features/characters/domain/character_model.dart';
part 'character_state.freezed.dart';

///Run 'flutter pub run build_runner build or fvm flutter pub run build_runner build' to generate required files
///
///
///
enum CharacterStatus { initial, loading, success, failure }

@freezed
class CharacterState with _$CharacterState {
  const factory CharacterState({
    @Default(CharacterStatus.initial) characterStatus,
    @Default([]) List<CharacterModel> characterList,
    @Default(0) int nextPage,
  }) = _CharacterState;
}
