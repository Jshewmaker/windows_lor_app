import 'package:riot_api/riot_api.dart';
import 'package:windows_lor_app/models/game/game.dart';
import 'package:windows_lor_app/models/runeterra_card.dart';

class GameRepository {
  GameRepository({RiotApiClient? riotApiClient}) : _riotApiClient = riotApiClient ?? RiotApiClient();

  final RiotApiClient _riotApiClient;

  Stream<Game> fetchGameState() async* {
    while (true) {
      await Future.delayed(const Duration(milliseconds: 1000));
      final response = await _riotApiClient.gameState();
      print('value: ${response.gameState}');
      yield Game(
          playerName: response.playerName,
          opponentName: response.opponentName,
          gameState: response.gameState,
          screen: response.screen,
          rectangles: response.rectangles);
    }
  }

  Future<List<RuneterraCard>> fetchDeck() async {
    final rawDeck = await _riotApiClient.liveDeck();
    final List<RuneterraCard> deck = [];

    for (int i = 0; i < rawDeck.length; i++) {
      if (deck.any((element) => element.cardDetails == rawDeck[i])) {
        final card = deck.firstWhere((element) => element.cardDetails == rawDeck[i]);
        int amount = card.amount;

        deck.remove(card);
        deck.add(card.copyWith(amount: amount + 1));
      } else {
        deck.add(RuneterraCard(cardDetails: rawDeck[i], amount: 1));
      }
    }
    return deck;
  }
}
