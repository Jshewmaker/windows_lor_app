part of 'card_bloc.dart';

@immutable
abstract class CardState extends Equatable {
  const CardState();
}

class CardLoading extends CardState {
  @override
  List<Object> get props => [];
}

class CardLoadSuccess extends CardState {
  const CardLoadSuccess({required this.card});

  final List<RuneterraCard> card;

  @override
  List<Object> get props => [card];
}

class CardLoadError extends CardState {
  @override
  List<Object> get props => [];
}
