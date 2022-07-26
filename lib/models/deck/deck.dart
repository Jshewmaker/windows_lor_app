// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

// required: associates our `main.dart` with the code generated by Freezed
part 'deck.freezed.dart';

@Freezed()
class Deck with _$Deck {
  const factory Deck({
    required String deckCode,
    required Map<String, int> cardsInDeck,
  }) = _Deck;
}
