import 'package:either_dart/either.dart';
import 'package:rick_and_morty/features/common/domain/error_model.dart';
import 'dart:async';

import 'package:rick_and_morty/features/episodes/domain/episodes_response.dart';

abstract class EpisodesRepo {
  Future<Either<HttpAppError, EpisodesResponse>> getEpisodes(
      {required int page});
}
