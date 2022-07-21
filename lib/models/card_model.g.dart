// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CardModel _$$_CardModelFromJson(Map<String, dynamic> json) => _$_CardModel(
      regions: (json['regions'] as List<dynamic>)
          .map((e) => $enumDecode(_$RegionEnumMap, e))
          .toList(),
      attack: json['attack'] as int,
      cost: json['cost'] as int,
      health: json['health'] as int,
      descriptionRaw: json['descriptionRaw'] as String,
      levelupDescriptionRaw: json['levelupDescriptionRaw'] as String,
      flavorText: json['flavorText'] as String,
      artistName: json['artistName'] as String,
      cardName: json['cardName'] as String,
      cardCode: json['cardCode'] as String,
      keywords: (json['keywords'] as List<dynamic>)
          .map((e) => $enumDecode(_$KeywordsEnumMap, e))
          .toList(),
      spellSpeed: $enumDecode(_$SpellSpeedEnumMap, json['spellSpeed']),
      cardType: $enumDecode(_$CardTypeEnumMap, json['cardType']),
    );

Map<String, dynamic> _$$_CardModelToJson(_$_CardModel instance) =>
    <String, dynamic>{
      'regions': instance.regions.map((e) => _$RegionEnumMap[e]!).toList(),
      'attack': instance.attack,
      'cost': instance.cost,
      'health': instance.health,
      'descriptionRaw': instance.descriptionRaw,
      'levelupDescriptionRaw': instance.levelupDescriptionRaw,
      'flavorText': instance.flavorText,
      'artistName': instance.artistName,
      'cardName': instance.cardName,
      'cardCode': instance.cardCode,
      'keywords': instance.keywords.map((e) => _$KeywordsEnumMap[e]!).toList(),
      'spellSpeed': _$SpellSpeedEnumMap[instance.spellSpeed]!,
      'cardType': _$CardTypeEnumMap[instance.cardType]!,
    };

const _$RegionEnumMap = {
  Region.BandleCity: 'BandleCity',
  Region.Bilgewater: 'Bilgewater',
  Region.Demacia: 'Demacia',
  Region.Freljord: 'Freljord',
  Region.Ionia: 'Ionia',
  Region.Noxus: 'Noxus',
  Region.PiltoverAndZaun: 'PiltoverAndZaun',
  Region.ShadowIsles: 'ShadowIsles',
  Region.Shurima: 'Shurima',
  Region.Targon: 'Targon',
};

const _$KeywordsEnumMap = {
  Keywords.Attach: 'Attach',
  Keywords.Attune: 'Attune',
  Keywords.Augment: 'Augment',
  Keywords.Burst: 'Burst',
  Keywords.Challenger: 'Challenger',
  Keywords.Countdown: 'Countdown',
  Keywords.DoubleAttack: 'DoubleAttack',
  Keywords.Elusive: 'Elusive',
  Keywords.Ephemeral: 'Ephemeral',
  Keywords.Fast: 'Fast',
  Keywords.Fearsome: 'Fearsome',
  Keywords.Fleeting: 'Fleeting',
  Keywords.Focus: 'Focus',
  Keywords.Formidable: 'Formidable',
  Keywords.Fury: 'Fury',
  Keywords.Imbue: 'Imbue',
  Keywords.Impact: 'Impact',
  Keywords.Landmark: 'Landmark',
  Keywords.LastBreath: 'LastBreath',
  Keywords.Lifesteal: 'Lifesteal',
  Keywords.MissingTranslation: 'MissingTranslation',
  Keywords.Overwhelm: 'Overwhelm',
  Keywords.QuickAttack: 'QuickAttack',
  Keywords.Regeneration: 'Regeneration',
  Keywords.Scout: 'Scout',
  Keywords.Skill: 'Skill',
  Keywords.Slow: 'Slow',
  Keywords.SpellShield: 'SpellShield',
  Keywords.Tough: 'Tough',
  Keywords.Trap: 'Trap',
};

const _$SpellSpeedEnumMap = {
  SpellSpeed.Burst: 'Burst',
  SpellSpeed.Fast: 'Fast',
  SpellSpeed.Slow: 'Slow',
};

const _$CardTypeEnumMap = {
  CardType.Ability: 'Ability',
  CardType.Landmark: 'Landmark',
  CardType.Spell: 'Spell',
  CardType.Trap: 'Trap',
  CardType.Unit: 'Unit',
};
