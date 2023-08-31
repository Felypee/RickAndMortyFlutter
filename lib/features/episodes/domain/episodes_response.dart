import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/features/episodes/domain/episodes_model.dart';

part 'episodes_response.freezed.dart';

@freezed
class EpisodesResponse with _$EpisodesResponse {
  const factory EpisodesResponse({
    required int maxPages,
    required int nextPage,
    List<EpisodesModel>? episodesList,
  }) = _EpisodesResponse;

  factory EpisodesResponse.fromJson(Map<String, dynamic> json) {
    List<EpisodesModel> episodes = (json["results"] as List).map(
      (episode) {
        return EpisodesModel.fromJson(episode);
      },
    ).toList();
    return EpisodesResponse(
      maxPages: json["info"]["pages"],
      nextPage: int.parse(Uri.dataFromString(json["info"]["next"])
          .queryParameters["page"]
          .toString()),
      episodesList: episodes,
    );
  }
}
