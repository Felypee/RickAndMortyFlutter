import 'package:freezed_annotation/freezed_annotation.dart';
part 'episodes_event.freezed.dart';

///Run 'flutter pub run build_runner build or fvm flutter pub run build_runner build' to generate required files
///
///
@freezed
class EpisodeEvent {
  const factory EpisodeEvent() = _Episode;
  factory EpisodeEvent.getEpisodes() = GetEpisodes;
}
