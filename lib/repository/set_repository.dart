import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:riot_api/riot_api.dart';

class CardRepository {
  CardRepository({RiotApiClient? riotApiClient}) : _riotApiClient = riotApiClient ?? RiotApiClient();

  final RiotApiClient _riotApiClient;

  Future<List<CardModel>> fetchAllCards() async {
    List allCards = [];

    for (int i = 1; i < 7; i++) {
      final String response = await rootBundle.loadString('assets/set_bundles/set_$i/en_us/data/set$i-en_us.json');
      final List<dynamic> jsonRes = jsonDecode(response);
      allCards.addAll(jsonRes);
    }

    final List<CardModel> cardList = [];
    for (var value in allCards) {
      cardList.add(CardModel.fromJson(value));
    }

    return cardList;
  }

  Future<List<CardModel>> fetchCardImage(String code) async {
    List allCards = [];

    for (int i = 1; i < 7; i++) {
      final String response = await rootBundle.loadString('assets/set_bundles/set_$i/en_us/data/set$i-en_us.json');
      final List<dynamic> jsonRes = jsonDecode(response);
      allCards.addAll(jsonRes);
    }

    final List<CardModel> cardList = [];
    for (var value in allCards) {
      cardList.add(CardModel.fromJson(value));
    }

    return cardList;
  }
}
