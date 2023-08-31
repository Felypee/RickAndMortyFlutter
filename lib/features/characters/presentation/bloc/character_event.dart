import 'package:freezed_annotation/freezed_annotation.dart';
part 'character_event.freezed.dart';

///Run 'flutter pub run build_runner build or fvm flutter pub run build_runner build' to generate required files
///
///
@freezed
class CharacterEvent {
  const factory CharacterEvent() = _Character;
  factory CharacterEvent.getCharacters() = GetCharacters;
}
