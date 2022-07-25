import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:windows_lor_app/models/card_model.dart';
import 'package:http/http.dart' as http;

final setRepositoryProvider = Provider((ref) => SetRepository(ref.read));

class SetRepository {
  SetRepository(
    this._read, {
    int Function()? getCurrentTimestamp,
  }) : _getCurrentTimestamp = getCurrentTimestamp ?? (() => DateTime.now().millisecondsSinceEpoch);

  final Reader _read;
  final int Function() _getCurrentTimestamp;

  Future<List<CardModel>> fetchAllCardsByAttack({required int set, required int attack}) async {
    final String response = await rootBundle.loadString('assets/set_bundles/set_$set/en_us/data/set$set-en_us.json');
    final List<dynamic> jsonRes = jsonDecode(response);
    final newData = jsonRes.where((element) => element['attack'] == attack);
    final List<CardModel> data = [];
    for (var value in newData) {
      data.add(CardModel.fromJson(value));
    }

    return data;
  }

  Future<CardModel?> fetchCardByCode({required String code}) async {
    var allCards = [];
    for (int i = 1; i < 7; i++) {
      final String response = await rootBundle.loadString('assets/set_bundles/set_$i/en_us/data/set$i-en_us.json');
      final List<dynamic> jsonRes = jsonDecode(response);
      allCards.addAll(jsonRes);
    }

    final cardList = allCards.where((element) => element['cardCode'] == code).toList();

    return CardModel.fromJson(cardList.first);
  }

  Future<List<CardModel?>> liveDeck() async {
    final http.Response response = await http.get(Uri.parse('http://127.0.0.1:21337/static-decklist'));
    final List<CardModel?> data = [];
    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonRes = jsonDecode(response.body);
      final Map newData = jsonRes['CardsInDeck'];
      newData.forEach((key, value) async {
        final card = await fetchCardByCode(code: key);
        for (int i = 0; i < value; i++) data.add(card);
      });
      return data;
    }
    return data;
  }

  Future<String> gmaeState() async {
    final http.Response response = await http.get(Uri.parse('http://127.0.0.1:21337/positional-rectangles'));

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonRes = jsonDecode(response.body);
      final String newData = jsonRes['GameState'];

      return newData;
    }
    return 'Error';
  }
}
