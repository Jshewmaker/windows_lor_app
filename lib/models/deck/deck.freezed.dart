// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'deck.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Deck {
  String get deckCode => throw _privateConstructorUsedError;
  Map<String, int> get cardsInDeck => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeckCopyWith<Deck> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeckCopyWith<$Res> {
  factory $DeckCopyWith(Deck value, $Res Function(Deck) then) =
      _$DeckCopyWithImpl<$Res>;
  $Res call({String deckCode, Map<String, int> cardsInDeck});
}

/// @nodoc
class _$DeckCopyWithImpl<$Res> implements $DeckCopyWith<$Res> {
  _$DeckCopyWithImpl(this._value, this._then);

  final Deck _value;
  // ignore: unused_field
  final $Res Function(Deck) _then;

  @override
  $Res call({
    Object? deckCode = freezed,
    Object? cardsInDeck = freezed,
  }) {
    return _then(_value.copyWith(
      deckCode: deckCode == freezed
          ? _value.deckCode
          : deckCode // ignore: cast_nullable_to_non_nullable
              as String,
      cardsInDeck: cardsInDeck == freezed
          ? _value.cardsInDeck
          : cardsInDeck // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ));
  }
}

/// @nodoc
abstract class _$$_DeckCopyWith<$Res> implements $DeckCopyWith<$Res> {
  factory _$$_DeckCopyWith(_$_Deck value, $Res Function(_$_Deck) then) =
      __$$_DeckCopyWithImpl<$Res>;
  @override
  $Res call({String deckCode, Map<String, int> cardsInDeck});
}

/// @nodoc
class __$$_DeckCopyWithImpl<$Res> extends _$DeckCopyWithImpl<$Res>
    implements _$$_DeckCopyWith<$Res> {
  __$$_DeckCopyWithImpl(_$_Deck _value, $Res Function(_$_Deck) _then)
      : super(_value, (v) => _then(v as _$_Deck));

  @override
  _$_Deck get _value => super._value as _$_Deck;

  @override
  $Res call({
    Object? deckCode = freezed,
    Object? cardsInDeck = freezed,
  }) {
    return _then(_$_Deck(
      deckCode: deckCode == freezed
          ? _value.deckCode
          : deckCode // ignore: cast_nullable_to_non_nullable
              as String,
      cardsInDeck: cardsInDeck == freezed
          ? _value._cardsInDeck
          : cardsInDeck // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ));
  }
}

/// @nodoc

class _$_Deck with DiagnosticableTreeMixin implements _Deck {
  const _$_Deck(
      {required this.deckCode, required final Map<String, int> cardsInDeck})
      : _cardsInDeck = cardsInDeck;

  @override
  final String deckCode;
  final Map<String, int> _cardsInDeck;
  @override
  Map<String, int> get cardsInDeck {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_cardsInDeck);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Deck(deckCode: $deckCode, cardsInDeck: $cardsInDeck)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Deck'))
      ..add(DiagnosticsProperty('deckCode', deckCode))
      ..add(DiagnosticsProperty('cardsInDeck', cardsInDeck));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Deck &&
            const DeepCollectionEquality().equals(other.deckCode, deckCode) &&
            const DeepCollectionEquality()
                .equals(other._cardsInDeck, _cardsInDeck));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(deckCode),
      const DeepCollectionEquality().hash(_cardsInDeck));

  @JsonKey(ignore: true)
  @override
  _$$_DeckCopyWith<_$_Deck> get copyWith =>
      __$$_DeckCopyWithImpl<_$_Deck>(this, _$identity);
}

abstract class _Deck implements Deck {
  const factory _Deck(
      {required final String deckCode,
      required final Map<String, int> cardsInDeck}) = _$_Deck;

  @override
  String get deckCode;
  @override
  Map<String, int> get cardsInDeck;
  @override
  @JsonKey(ignore: true)
  _$$_DeckCopyWith<_$_Deck> get copyWith => throw _privateConstructorUsedError;
}
