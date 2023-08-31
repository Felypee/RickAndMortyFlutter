import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/features/locations/domain/locations_repo.dart';
import 'package:rick_and_morty/features/locations/presentation/bloc/location_event.dart';
import 'package:rick_and_morty/features/locations/presentation/bloc/location_state.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  LocationRepo repo;
  LocationBloc({required this.repo}) : super(const LocationState()) {
    on<GetLocations>(_getLocations);
  }

  Future<void> _getLocations(event, emit) async {
    if (state.locationStatus == LocationStatus.initial) {
      emit(state.copyWith(locationStatus: LocationStatus.loading));
    }
    final result = await repo.getLocations(page: state.nextPage);
    result.fold((error) {
      emit(state.copyWith(locationStatus: LocationStatus.failure));
    }, (locationResponse) {
      emit(state.copyWith(
          locationStatus: LocationStatus.success,
          nextPage: locationResponse.nextPage,
          locationList: [
            ...state.locationList,
            ...locationResponse.locationsList ?? []
          ]));
    });
  }
}
