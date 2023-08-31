import 'package:freezed_annotation/freezed_annotation.dart';
part 'location_event.freezed.dart';

///Run 'flutter pub run build_runner build or fvm flutter pub run build_runner build' to generate required files
///
///
@freezed
class LocationEvent {
  const factory LocationEvent() = _Location;
  factory LocationEvent.getLocations() = GetLocations;
}
