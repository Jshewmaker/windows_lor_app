// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

// required: associates our `main.dart` with the code generated by Freezed
part 'game_result_model.freezed.dart';
// optional: Since our Person class is serializable, we must add this line.
// But if Person was not serializable, we could skip it.
part 'game_result_model.g.dart';

@Freezed()
class GameResultModel with _$GameResultModel {
  @JsonSerializable(fieldRename: FieldRename.pascal)
  const factory GameResultModel({
    required int gameID,
    required bool localPlayerWon,
  }) = _GameResultModel;

  factory GameResultModel.fromJson(Map<String, Object?> json) => _$GameResultModelFromJson(json);
}
