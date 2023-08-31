import 'package:dio/dio.dart';
import 'package:either_dart/src/either.dart';
import 'package:rick_and_morty/features/characters/domain/character_repo.dart';
import 'package:rick_and_morty/features/characters/domain/character_response.dart';
import 'package:rick_and_morty/features/common/domain/error_model.dart';
import 'package:rick_and_morty/utils/dio_config.dart';

class CharacterService extends CharacterRepo {
  @override
  Future<Either<HttpAppError, CharacterResponse>> getCharacters(
      {required int page}) async {
    try {
      final response = await DioClient.dio.get('/character/?page=$page');

      return Right(CharacterResponse.fromJson(response.data));
    } on DioException catch (error) {
      if (error.response != null) {
        return Left(
            HttpAppError(message: error.response!.data["message"].toString()));
      }
      return Left(HttpAppError(message: error.toString() ?? "No message"));
    }
  }
}
