import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/features/characters/domain/character_repo.dart';
import 'package:rick_and_morty/features/characters/presentation/bloc/character_event.dart';
import 'package:rick_and_morty/features/characters/presentation/bloc/character_state.dart';

class CharacterBloc extends Bloc<CharacterEvent, CharacterState> {
  CharacterRepo repo;
  CharacterBloc({required this.repo}) : super(const CharacterState()) {
    on<GetCharacters>(_getCharacters);
  }

  Future<void> _getCharacters(GetCharacters event, emit) async {
    if (state.characterStatus == CharacterStatus.initial) {
      emit(state.copyWith(characterStatus: CharacterStatus.loading));
    }
    final result = await repo.getCharacters(page: state.nextPage);
    result.fold((error) {
      emit(state.copyWith(characterStatus: CharacterStatus.failure));
    }, (characterResponse) {
      emit(state.copyWith(
          characterStatus: CharacterStatus.success,
          nextPage: characterResponse.nextPage,
          characterList: [
            ...state.characterList,
            ...characterResponse.characterList ?? []
          ]));
    });
  }
}
