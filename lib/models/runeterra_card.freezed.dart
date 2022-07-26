// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'runeterra_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RuneterraCard {
  CardModel get cardDetails => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RuneterraCardCopyWith<RuneterraCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RuneterraCardCopyWith<$Res> {
  factory $RuneterraCardCopyWith(
          RuneterraCard value, $Res Function(RuneterraCard) then) =
      _$RuneterraCardCopyWithImpl<$Res>;
  $Res call({CardModel cardDetails, int amount});

  $CardModelCopyWith<$Res> get cardDetails;
}

/// @nodoc
class _$RuneterraCardCopyWithImpl<$Res>
    implements $RuneterraCardCopyWith<$Res> {
  _$RuneterraCardCopyWithImpl(this._value, this._then);

  final RuneterraCard _value;
  // ignore: unused_field
  final $Res Function(RuneterraCard) _then;

  @override
  $Res call({
    Object? cardDetails = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      cardDetails: cardDetails == freezed
          ? _value.cardDetails
          : cardDetails // ignore: cast_nullable_to_non_nullable
              as CardModel,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $CardModelCopyWith<$Res> get cardDetails {
    return $CardModelCopyWith<$Res>(_value.cardDetails, (value) {
      return _then(_value.copyWith(cardDetails: value));
    });
  }
}

/// @nodoc
abstract class _$$_RuneterraCardCopyWith<$Res>
    implements $RuneterraCardCopyWith<$Res> {
  factory _$$_RuneterraCardCopyWith(
          _$_RuneterraCard value, $Res Function(_$_RuneterraCard) then) =
      __$$_RuneterraCardCopyWithImpl<$Res>;
  @override
  $Res call({CardModel cardDetails, int amount});

  @override
  $CardModelCopyWith<$Res> get cardDetails;
}

/// @nodoc
class __$$_RuneterraCardCopyWithImpl<$Res>
    extends _$RuneterraCardCopyWithImpl<$Res>
    implements _$$_RuneterraCardCopyWith<$Res> {
  __$$_RuneterraCardCopyWithImpl(
      _$_RuneterraCard _value, $Res Function(_$_RuneterraCard) _then)
      : super(_value, (v) => _then(v as _$_RuneterraCard));

  @override
  _$_RuneterraCard get _value => super._value as _$_RuneterraCard;

  @override
  $Res call({
    Object? cardDetails = freezed,
    Object? amount = freezed,
  }) {
    return _then(_$_RuneterraCard(
      cardDetails: cardDetails == freezed
          ? _value.cardDetails
          : cardDetails // ignore: cast_nullable_to_non_nullable
              as CardModel,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RuneterraCard with DiagnosticableTreeMixin implements _RuneterraCard {
  const _$_RuneterraCard({required this.cardDetails, required this.amount});

  @override
  final CardModel cardDetails;
  @override
  final int amount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RuneterraCard(cardDetails: $cardDetails, amount: $amount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RuneterraCard'))
      ..add(DiagnosticsProperty('cardDetails', cardDetails))
      ..add(DiagnosticsProperty('amount', amount));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RuneterraCard &&
            const DeepCollectionEquality()
                .equals(other.cardDetails, cardDetails) &&
            const DeepCollectionEquality().equals(other.amount, amount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cardDetails),
      const DeepCollectionEquality().hash(amount));

  @JsonKey(ignore: true)
  @override
  _$$_RuneterraCardCopyWith<_$_RuneterraCard> get copyWith =>
      __$$_RuneterraCardCopyWithImpl<_$_RuneterraCard>(this, _$identity);
}

abstract class _RuneterraCard implements RuneterraCard {
  const factory _RuneterraCard(
      {required final CardModel cardDetails,
      required final int amount}) = _$_RuneterraCard;

  @override
  CardModel get cardDetails;
  @override
  int get amount;
  @override
  @JsonKey(ignore: true)
  _$$_RuneterraCardCopyWith<_$_RuneterraCard> get copyWith =>
      throw _privateConstructorUsedError;
}
