// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

// required: associates our `main.dart` with the code generated by Freezed
part 'game.freezed.dart';
// optional: Since our Person class is serializable, we must add this line.
// But if Person was not serializable, we could skip it.

@Freezed()
class Game with _$Game {
  const factory Game({
    required String? playerName,
    required String? opponentName,
    required String? gameState,
    required Map<String, int>? screen,
    required List<Map<String, dynamic>>? rectangles,
  }) = _Game;
}