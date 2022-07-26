import 'package:bloc/bloc.dart';
import 'package:riot_api/riot_api.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:windows_lor_app/models/runeterra_card.dart';
import 'package:windows_lor_app/repository/card_repository.dart';
import 'package:windows_lor_app/repository/game_repository.dart';

part 'game_event.dart';
part 'game_state.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  GameBloc(this._gameRepository) : super(GameLoading()) {
    on<GameRequested>(_fetchGameState);
    on<GameStatusUpdated>(_fetchDeck);
    on<LiveDeckRequested>(((event, emit) async {
      emit(GameLoading());
      try {
        final deck = await _gameRepository.fetchDeck();
        emit(DeckLoadSuccess(deck: deck));
      } catch (_) {
        emit(GameLoadError());
      }
    }));
  }

  final GameRepository _gameRepository;

  void _fetchGameState(GameRequested event, Emitter<GameState> emit) async {
    emit(GameLoading());
    await emit.onEach<String>(_gameRepository.fetchGameState().distinct(),
        onData: (onData) => add(GameStatusUpdated(status: onData)));
  }

  void _fetchDeck(event, emit) {
    if (event.status == 'InProgress') {
      add(const LiveDeckRequested());
    } else {
      emit(GameLoadSuccess(status: event.status));
    }
  }
}
