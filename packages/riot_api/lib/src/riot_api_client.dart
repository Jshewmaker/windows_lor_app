import 'dart:convert';
import 'dart:math';

import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

import 'models/models.dart';

class RiotApiClient {
  RiotApiClient();

  static const _baseUrl = 'http://127.0.0.1:21337/';

  Future<List<CardModel>> liveDeck() async {
    final http.Response response = await http.get(Uri.parse('${_baseUrl}static-decklist'));
    final List<CardModel> data = [];
    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonRes = jsonDecode(response.body);
      final Map newData = jsonRes['CardsInDeck'];

      await Future.forEach(newData.entries, (MapEntry entry) async {
        final card = await _fetchCardByCode(code: entry.key);
        for (int i = 0; i < entry.value; i++) {
          data.add(card);
        }
      });

      return data;
    }
    return data;
  }

  Future<String> gameState() async {
    final http.Response response = await http.get(Uri.parse('${_baseUrl}positional-rectangles'));

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonRes = jsonDecode(response.body);
      final String? newData = jsonRes['GameState'];

      return newData ?? 'Error getting state';
    }
    return 'Error';
  }

  Future<CardModel> _fetchCardByCode({required String code}) async {
    var allCards = [];
    for (int i = 1; i < 7; i++) {
      final String response = await rootBundle.loadString('assets/set_bundles/set_$i/en_us/data/set$i-en_us.json');
      final List<dynamic> jsonRes = jsonDecode(response);
      allCards.addAll(jsonRes);
    }

    final cardList = allCards.where((element) => element['cardCode'] == code).toList();

    return CardModel.fromJson(cardList.first);
  }
}
