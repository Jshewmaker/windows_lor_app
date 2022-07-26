part of 'game_bloc.dart';

@immutable
abstract class GameState extends Equatable {
  const GameState();
}

class GameLoading extends GameState {
  @override
  List<Object> get props => [];
}

class GameLoadSuccess extends GameState {
  const GameLoadSuccess({required this.status});

  final String status;

  @override
  List<Object> get props => [status];
}

class GameLoadError extends GameState {
  @override
  List<Object> get props => [];
}

class DeckLoadSuccess extends GameState {
  const DeckLoadSuccess({required this.deck});

  final List<RuneterraCard> deck;

  @override
  List<Object> get props => [deck];
}
