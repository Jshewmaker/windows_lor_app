// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deck_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeckModel _$$_DeckModelFromJson(Map<String, dynamic> json) => _$_DeckModel(
      deckCode: json['deckCode'] as String,
      cardsInDeck: Map<String, int>.from(json['cardsInDeck'] as Map),
    );

Map<String, dynamic> _$$_DeckModelToJson(_$_DeckModel instance) =>
    <String, dynamic>{
      'deckCode': instance.deckCode,
      'cardsInDeck': instance.cardsInDeck,
    };
