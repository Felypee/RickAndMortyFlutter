import 'package:dio/dio.dart';
import 'package:either_dart/src/either.dart';
import 'package:rick_and_morty/features/common/domain/error_model.dart';
import 'package:rick_and_morty/features/episodes/domain/episodes_repo.dart';
import 'package:rick_and_morty/features/episodes/domain/episodes_response.dart';
import 'package:rick_and_morty/utils/dio_config.dart';

class EpisodesService extends EpisodesRepo {
  @override
  Future<Either<HttpAppError, EpisodesResponse>> getEpisodes(
      {required int page}) async {
    try {
      final response = await DioClient.dio.get('/episode/?page=$page');

      return Right(EpisodesResponse.fromJson(response.data));
    } on DioException catch (error) {
      if (error.response != null) {
        return Left(
            HttpAppError(message: error.response!.data["message"].toString()));
      }
      return Left(HttpAppError(message: error.toString() ?? "No message"));
    }
  }
}
