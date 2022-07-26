part of 'game_bloc.dart';

@immutable
abstract class GameEvent extends Equatable {
  const GameEvent();
}

class GameRequested extends GameEvent {
  const GameRequested();
  @override
  List<Object> get props => [];
}

class GameStatusUpdated extends GameEvent {
  final Game game;

  const GameStatusUpdated({required this.game});
  @override
  List<Object> get props => [];
}

class LiveDeckRequested extends GameEvent {
  const LiveDeckRequested();
  @override
  List<Object> get props => [];
}

class LiveDeckLoaded extends GameEvent {
  final List<CardModel> deck;

  const LiveDeckLoaded({required this.deck});
  @override
  List<Object> get props => [];
}
