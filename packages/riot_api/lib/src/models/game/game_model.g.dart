// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GameModel _$$_GameModelFromJson(Map<String, dynamic> json) => _$_GameModel(
      playerName: json['PlayerName'] as String?,
      opponentName: json['OpponentName'] as String?,
      gameState: json['GameState'] as String?,
      screen: (json['Screen'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as int),
      ),
      rectangles: (json['Rectangles'] as List<dynamic>?)?.map((e) => e as Map<String, dynamic>).toList(),
    );

Map<String, dynamic> _$$_GameModelToJson(_$_GameModel instance) => <String, dynamic>{
      'PlayerName': instance.playerName,
      'OpponentName': instance.opponentName,
      'GameState': instance.gameState,
      'Screen': instance.screen,
      'Rectangles': instance.rectangles,
    };
