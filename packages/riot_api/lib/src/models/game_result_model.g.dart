// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GameResultModel _$$_GameResultModelFromJson(Map<String, dynamic> json) =>
    _$_GameResultModel(
      gameID: json['GameID'] as int,
      localPlayerWon: json['LocalPlayerWon'] as bool,
    );

Map<String, dynamic> _$$_GameResultModelToJson(_$_GameResultModel instance) =>
    <String, dynamic>{
      'GameID': instance.gameID,
      'LocalPlayerWon': instance.localPlayerWon,
    };
