import 'package:bloc/bloc.dart';
import 'package:riot_api/riot_api.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:windows_lor_app/models/runeterra_card.dart';
import 'package:windows_lor_app/repository/card_repository.dart';

part 'card_event.dart';
part 'card_state.dart';

class CardBloc extends Bloc<CardEvent, CardState> {
  CardBloc(this._cardRepository) : super(CardLoading()) {
    on<CardRequested>(_fetchAllCards);
  }

  final CardRepository _cardRepository;

  Future<void> _fetchAllCards(CardRequested event, Emitter<CardState> emit) async {
    emit(CardLoading());
    try {
      final cards = await _cardRepository.fetchAllCards();
      cards.sort(((a, b) => a.cardDetails.name.toLowerCase().compareTo(b.cardDetails.name.toLowerCase())));
      emit(CardLoadSuccess(card: cards));
    } catch (_) {
      emit(CardLoadError());
    }
  }
}
