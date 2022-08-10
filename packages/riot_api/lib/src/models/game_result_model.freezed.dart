// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GameResultModel _$GameResultModelFromJson(Map<String, dynamic> json) {
  return _GameResultModel.fromJson(json);
}

/// @nodoc
mixin _$GameResultModel {
  int get gameID => throw _privateConstructorUsedError;
  bool get localPlayerWon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameResultModelCopyWith<GameResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameResultModelCopyWith<$Res> {
  factory $GameResultModelCopyWith(
          GameResultModel value, $Res Function(GameResultModel) then) =
      _$GameResultModelCopyWithImpl<$Res>;
  $Res call({int gameID, bool localPlayerWon});
}

/// @nodoc
class _$GameResultModelCopyWithImpl<$Res>
    implements $GameResultModelCopyWith<$Res> {
  _$GameResultModelCopyWithImpl(this._value, this._then);

  final GameResultModel _value;
  // ignore: unused_field
  final $Res Function(GameResultModel) _then;

  @override
  $Res call({
    Object? gameID = freezed,
    Object? localPlayerWon = freezed,
  }) {
    return _then(_value.copyWith(
      gameID: gameID == freezed
          ? _value.gameID
          : gameID // ignore: cast_nullable_to_non_nullable
              as int,
      localPlayerWon: localPlayerWon == freezed
          ? _value.localPlayerWon
          : localPlayerWon // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_GameResultModelCopyWith<$Res>
    implements $GameResultModelCopyWith<$Res> {
  factory _$$_GameResultModelCopyWith(
          _$_GameResultModel value, $Res Function(_$_GameResultModel) then) =
      __$$_GameResultModelCopyWithImpl<$Res>;
  @override
  $Res call({int gameID, bool localPlayerWon});
}

/// @nodoc
class __$$_GameResultModelCopyWithImpl<$Res>
    extends _$GameResultModelCopyWithImpl<$Res>
    implements _$$_GameResultModelCopyWith<$Res> {
  __$$_GameResultModelCopyWithImpl(
      _$_GameResultModel _value, $Res Function(_$_GameResultModel) _then)
      : super(_value, (v) => _then(v as _$_GameResultModel));

  @override
  _$_GameResultModel get _value => super._value as _$_GameResultModel;

  @override
  $Res call({
    Object? gameID = freezed,
    Object? localPlayerWon = freezed,
  }) {
    return _then(_$_GameResultModel(
      gameID: gameID == freezed
          ? _value.gameID
          : gameID // ignore: cast_nullable_to_non_nullable
              as int,
      localPlayerWon: localPlayerWon == freezed
          ? _value.localPlayerWon
          : localPlayerWon // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.pascal)
class _$_GameResultModel
    with DiagnosticableTreeMixin
    implements _GameResultModel {
  const _$_GameResultModel(
      {required this.gameID, required this.localPlayerWon});

  factory _$_GameResultModel.fromJson(Map<String, dynamic> json) =>
      _$$_GameResultModelFromJson(json);

  @override
  final int gameID;
  @override
  final bool localPlayerWon;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameResultModel(gameID: $gameID, localPlayerWon: $localPlayerWon)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GameResultModel'))
      ..add(DiagnosticsProperty('gameID', gameID))
      ..add(DiagnosticsProperty('localPlayerWon', localPlayerWon));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameResultModel &&
            const DeepCollectionEquality().equals(other.gameID, gameID) &&
            const DeepCollectionEquality()
                .equals(other.localPlayerWon, localPlayerWon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(gameID),
      const DeepCollectionEquality().hash(localPlayerWon));

  @JsonKey(ignore: true)
  @override
  _$$_GameResultModelCopyWith<_$_GameResultModel> get copyWith =>
      __$$_GameResultModelCopyWithImpl<_$_GameResultModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GameResultModelToJson(
      this,
    );
  }
}

abstract class _GameResultModel implements GameResultModel {
  const factory _GameResultModel(
      {required final int gameID,
      required final bool localPlayerWon}) = _$_GameResultModel;

  factory _GameResultModel.fromJson(Map<String, dynamic> json) =
      _$_GameResultModel.fromJson;

  @override
  int get gameID;
  @override
  bool get localPlayerWon;
  @override
  @JsonKey(ignore: true)
  _$$_GameResultModelCopyWith<_$_GameResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}
