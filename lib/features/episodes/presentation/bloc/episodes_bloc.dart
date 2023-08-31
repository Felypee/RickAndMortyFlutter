import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/features/episodes/domain/episodes_repo.dart';
import 'package:rick_and_morty/features/episodes/presentation/bloc/episodes_event.dart';
import 'package:rick_and_morty/features/episodes/presentation/bloc/episodes_state.dart';

class EpisodesBloc extends Bloc<EpisodeEvent, EpisodeState> {
  EpisodesRepo repo;
  EpisodesBloc({required this.repo}) : super(const EpisodeState()) {
    on<GetEpisodes>(_getEpisodes);
  }

  Future<void> _getEpisodes(GetEpisodes event, emit) async {
    if (state.episodeStatus == EpisodeStatus.initial) {
      emit(state.copyWith(episodeStatus: EpisodeStatus.loading));
    }
    final result = await repo.getEpisodes(page: state.nextPage);
    result.fold((error) {
      emit(state.copyWith(episodeStatus: EpisodeStatus.failure));
    }, (episodesResponse) {
      emit(state.copyWith(
          episodeStatus: EpisodeStatus.success,
          nextPage: episodesResponse.nextPage,
          episodeList: [
            ...state.episodeList,
            ...episodesResponse.episodesList ?? []
          ]));
    });
  }
}
