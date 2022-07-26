// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'deck_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeckModel _$DeckModelFromJson(Map<String, dynamic> json) {
  return _DeckModel.fromJson(json);
}

/// @nodoc
mixin _$DeckModel {
  String get deckCode => throw _privateConstructorUsedError;
  Map<String, int> get cardsInDeck => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeckModelCopyWith<DeckModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeckModelCopyWith<$Res> {
  factory $DeckModelCopyWith(DeckModel value, $Res Function(DeckModel) then) =
      _$DeckModelCopyWithImpl<$Res>;
  $Res call({String deckCode, Map<String, int> cardsInDeck});
}

/// @nodoc
class _$DeckModelCopyWithImpl<$Res> implements $DeckModelCopyWith<$Res> {
  _$DeckModelCopyWithImpl(this._value, this._then);

  final DeckModel _value;
  // ignore: unused_field
  final $Res Function(DeckModel) _then;

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
abstract class _$$_DeckModelCopyWith<$Res> implements $DeckModelCopyWith<$Res> {
  factory _$$_DeckModelCopyWith(
          _$_DeckModel value, $Res Function(_$_DeckModel) then) =
      __$$_DeckModelCopyWithImpl<$Res>;
  @override
  $Res call({String deckCode, Map<String, int> cardsInDeck});
}

/// @nodoc
class __$$_DeckModelCopyWithImpl<$Res> extends _$DeckModelCopyWithImpl<$Res>
    implements _$$_DeckModelCopyWith<$Res> {
  __$$_DeckModelCopyWithImpl(
      _$_DeckModel _value, $Res Function(_$_DeckModel) _then)
      : super(_value, (v) => _then(v as _$_DeckModel));

  @override
  _$_DeckModel get _value => super._value as _$_DeckModel;

  @override
  $Res call({
    Object? deckCode = freezed,
    Object? cardsInDeck = freezed,
  }) {
    return _then(_$_DeckModel(
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
@JsonSerializable()
class _$_DeckModel with DiagnosticableTreeMixin implements _DeckModel {
  const _$_DeckModel(
      {required this.deckCode, required final Map<String, int> cardsInDeck})
      : _cardsInDeck = cardsInDeck;

  factory _$_DeckModel.fromJson(Map<String, dynamic> json) =>
      _$$_DeckModelFromJson(json);

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
    return 'DeckModel(deckCode: $deckCode, cardsInDeck: $cardsInDeck)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DeckModel'))
      ..add(DiagnosticsProperty('deckCode', deckCode))
      ..add(DiagnosticsProperty('cardsInDeck', cardsInDeck));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeckModel &&
            const DeepCollectionEquality().equals(other.deckCode, deckCode) &&
            const DeepCollectionEquality()
                .equals(other._cardsInDeck, _cardsInDeck));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(deckCode),
      const DeepCollectionEquality().hash(_cardsInDeck));

  @JsonKey(ignore: true)
  @override
  _$$_DeckModelCopyWith<_$_DeckModel> get copyWith =>
      __$$_DeckModelCopyWithImpl<_$_DeckModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeckModelToJson(
      this,
    );
  }
}

abstract class _DeckModel implements DeckModel {
  const factory _DeckModel(
      {required final String deckCode,
      required final Map<String, int> cardsInDeck}) = _$_DeckModel;

  factory _DeckModel.fromJson(Map<String, dynamic> json) =
      _$_DeckModel.fromJson;

  @override
  String get deckCode;
  @override
  Map<String, int> get cardsInDeck;
  @override
  @JsonKey(ignore: true)
  _$$_DeckModelCopyWith<_$_DeckModel> get copyWith =>
      throw _privateConstructorUsedError;
}
