import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/features/episodes/domain/episodes_model.dart';
part 'episodes_state.freezed.dart';

///Run 'flutter pub run build_runner build or fvm flutter pub run build_runner build' to generate required files
///
///
///
enum EpisodeStatus { initial, loading, success, failure }

@freezed
class EpisodeState with _$EpisodeState {
  const factory EpisodeState({
    @Default(EpisodeStatus.initial) episodeStatus,
    @Default([]) List<EpisodesModel> episodeList,
    @Default(0) int nextPage,
  }) = _EpisodeState;
}
