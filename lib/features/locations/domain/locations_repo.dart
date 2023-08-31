import 'package:either_dart/either.dart';
import 'package:rick_and_morty/features/common/domain/error_model.dart';
import 'dart:async';

import 'package:rick_and_morty/features/locations/domain/locations_response.dart';

abstract class LocationRepo {
  Future<Either<HttpAppError, LocationResponse>> getLocations(
      {required int page});
}
