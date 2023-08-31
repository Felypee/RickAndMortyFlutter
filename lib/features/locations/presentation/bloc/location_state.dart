import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/features/locations/domain/location_model.dart';
part 'location_state.freezed.dart';

///Run 'flutter pub run build_runner build or fvm flutter pub run build_runner build' to generate required files
///
///
///
enum LocationStatus { initial, loading, success, failure }

@freezed
class LocationState with _$LocationState {
  const factory LocationState({
    @Default(LocationStatus.initial) locationStatus,
    @Default([]) List<LocationModel> locationList,
    @Default(0) nextPage,
  }) = _LocationState;
}
