import 'dart:convert';
import 'dart:math';

import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:riot_api/src/models/deck/deck_model.dart';
import 'package:riot_api/src/models/game/game_model.dart';

import 'models/models.dart';

class GameStateRequestFailure implements Exception {}

class CardNotFoundFailure implements Exception {}

class RiotApiClient {
  RiotApiClient();

  static const _baseUrl = 'http://127.0.0.1:21337/';

  Future<List<CardModel>> liveDeck() async {
    final http.Response response = await http.get(Uri.parse('${_baseUrl}static-decklist'));
    final List<CardModel> cardList = [];
    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonRes = jsonDecode(response.body);
      final Map newData = jsonRes['CardsInDeck'];

      await Future.forEach(newData.entries, (MapEntry entry) async {
        final card = await _fetchCardByCode(code: entry.key);
        for (int i = 0; i < entry.value; i++) {
          cardList.add(card);
        }
      });

      return cardList;
    }
    return cardList;
  }

  Future<GameModel> gameState() async {
    final http.Response response = await http.get(Uri.parse('${_baseUrl}positional-rectangles'));

    if (response.statusCode != 200) {
      throw GameStateRequestFailure();
    }

    final Map<String, dynamic> jsonRes = jsonDecode(response.body);
    return GameModel.fromJson(jsonRes);
  }

  Future<CardModel> _fetchCardByCode({required String code}) async {
    final List<CardModel> cards = [];
    for (int i = 1; i < 7; i++) {
      final String response = await rootBundle.loadString('assets/set_bundles/set_$i/en_us/data/set$i-en_us.json');
      final List<CardModel> listModel = List<CardModel>.from(jsonDecode(response).map((x) => CardModel.fromJson(x)));
      cards.addAll(listModel);
    }
    return cards.firstWhere((element) {
      return element.cardCode == code;
    }, orElse: (() => throw CardNotFoundFailure()));
  }
}
