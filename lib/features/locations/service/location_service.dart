import 'package:dio/dio.dart';
import 'package:either_dart/src/either.dart';
import 'package:rick_and_morty/features/common/domain/error_model.dart';
import 'package:rick_and_morty/features/locations/domain/locations_repo.dart';
import 'package:rick_and_morty/features/locations/domain/locations_response.dart';
import 'package:rick_and_morty/utils/dio_config.dart';

class LocationService extends LocationRepo {
  @override
  Future<Either<HttpAppError, LocationResponse>> getLocations(
      {required int page}) async {
    try {
      final response = await DioClient.dio.get('/location/?page=$page');

      return Right(LocationResponse.fromJson(response.data));
    } on DioException catch (error) {
      if (error.response != null) {
        return Left(
            HttpAppError(message: error.response!.data["message"].toString()));
      }
      return Left(HttpAppError(message: error.toString() ?? "No message"));
    }
  }
}
