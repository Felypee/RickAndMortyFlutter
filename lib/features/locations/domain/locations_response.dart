import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/features/locations/domain/location_model.dart';

part 'locations_response.freezed.dart';

@freezed
class LocationResponse with _$LocationResponse {
  const factory LocationResponse({
    required int maxPages,
    required int nextPage,
    List<LocationModel>? locationsList,
  }) = _LocationResponse;

  factory LocationResponse.fromJson(Map<String, dynamic> json) {
    List<LocationModel> locations = (json["results"] as List).map(
      (location) {
        return LocationModel.fromJson(location);
      },
    ).toList();
    return LocationResponse(
      maxPages: json["info"]["pages"],
      nextPage: int.parse(Uri.dataFromString(json["info"]["next"])
          .queryParameters["page"]
          .toString()),
      locationsList: locations,
    );
  }
}
