part of 'card_bloc.dart';

@immutable
abstract class CardEvent extends Equatable {
  const CardEvent();
}

class CardRequested extends CardEvent {
  // final CardModel card;

  // const CardRequested({required this.card});
  @override
  List<Object> get props => [];
}
