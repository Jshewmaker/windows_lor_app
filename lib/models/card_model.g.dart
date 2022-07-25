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
      name: json['name'] as String,
      cardCode: json['cardCode'] as String,
      keywordRefs: (json['keywordRefs'] as List<dynamic>)
          .map((e) => $enumDecode(_$KeywordsEnumMap, e))
          .toList(),
      spellSpeed: $enumDecodeNullable(_$SpellSpeedEnumMap, json['spellSpeed']),
      type: $enumDecode(_$CardTypeEnumMap, json['type']),
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
      'name': instance.name,
      'cardCode': instance.cardCode,
      'keywordRefs':
          instance.keywordRefs.map((e) => _$KeywordsEnumMap[e]!).toList(),
      'spellSpeed': _$SpellSpeedEnumMap[instance.spellSpeed],
      'type': _$CardTypeEnumMap[instance.type]!,
    };

const _$RegionEnumMap = {
  Region.BandleCity: 'Bandle City',
  Region.Bilgewater: 'Bilgewater',
  Region.Demacia: 'Demacia',
  Region.Freljord: 'Freljord',
  Region.Ionia: 'Ionia',
  Region.Noxus: 'Noxus',
  Region.PiltoverAndZaun: 'Piltover & Zaun',
  Region.Runeterra: 'Runeterra',
  Region.ShadowIsles: 'Shadow Isles',
  Region.Shurima: 'Shurima',
  Region.Targon: 'Targon',
};

const _$KeywordsEnumMap = {
  Keywords.Attach: 'Attach',
  Keywords.Attune: 'Attune',
  Keywords.Augment: 'Augment',
  Keywords.Autoplay: 'Autoplay',
  Keywords.Burst: 'Burst',
  Keywords.Barrier: 'Barrier',
  Keywords.Challenger: 'Challenger',
  Keywords.Countdown: 'Countdown',
  Keywords.Deep: 'Deep',
  Keywords.DoubleStrike: 'DoubleStrike',
  Keywords.Elusive: 'Elusive',
  Keywords.Ephemeral: 'Ephemeral',
  Keywords.Fast: 'Fast',
  Keywords.Fearsome: 'Fearsome',
  Keywords.Fleeting: 'Fleeting',
  Keywords.Focus: 'Focus',
  Keywords.Formidable: 'Formidable',
  Keywords.Fury: 'Fury',
  Keywords.Imbue: 'Imbue',
  Keywords.Immobile: 'Immobile',
  Keywords.Impact: 'Impact',
  Keywords.Landmark: 'Landmark',
  Keywords.LandmarkVisualOnly: 'LandmarkVisualOnly',
  Keywords.LastBreath: 'LastBreath',
  Keywords.Lifesteal: 'Lifesteal',
  Keywords.Lurker: 'Lurker',
  Keywords.MissingTranslation: 'MissingTranslation',
  Keywords.Overwhelm: 'Overwhelm',
  Keywords.QuickStrike: 'QuickStrike',
  Keywords.Regeneration: 'Regeneration',
  Keywords.Scout: 'Scout',
  Keywords.Skill: 'Skill',
  Keywords.Slow: 'Slow',
  Keywords.SpellShield: 'SpellShield',
  Keywords.Support: 'Support',
  Keywords.Tough: 'Tough',
  Keywords.Trap: 'Trap',
  Keywords.Vulnerable: 'Vulnerable',
  Keywords.None: 'AuraVisualFakeKeyword',
};

const _$SpellSpeedEnumMap = {
  SpellSpeed.None: '',
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
