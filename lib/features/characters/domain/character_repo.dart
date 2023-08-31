import 'package:either_dart/either.dart';
import 'package:rick_and_morty/features/characters/domain/character_response.dart';
import 'package:rick_and_morty/features/common/domain/error_model.dart';
import 'dart:async';

abstract class CharacterRepo {
  Future<Either<HttpAppError, CharacterResponse>> getCharacters(
      {required int page});
}
