// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GameModel _$GameModelFromJson(Map<String, dynamic> json) {
  return _GameModel.fromJson(json);
}

/// @nodoc
mixin _$GameModel {
  String? get playerName => throw _privateConstructorUsedError;
  String? get opponentName => throw _privateConstructorUsedError;
  String? get gameState => throw _privateConstructorUsedError;
  Map<String, int>? get screen => throw _privateConstructorUsedError;
  List<Map<String, dynamic>>? get rectangles =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameModelCopyWith<GameModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameModelCopyWith<$Res> {
  factory $GameModelCopyWith(GameModel value, $Res Function(GameModel) then) =
      _$GameModelCopyWithImpl<$Res>;
  $Res call(
      {String? playerName,
      String? opponentName,
      String? gameState,
      Map<String, int>? screen,
      List<Map<String, dynamic>>? rectangles});
}

/// @nodoc
class _$GameModelCopyWithImpl<$Res> implements $GameModelCopyWith<$Res> {
  _$GameModelCopyWithImpl(this._value, this._then);

  final GameModel _value;
  // ignore: unused_field
  final $Res Function(GameModel) _then;

  @override
  $Res call({
    Object? playerName = freezed,
    Object? opponentName = freezed,
    Object? gameState = freezed,
    Object? screen = freezed,
    Object? rectangles = freezed,
  }) {
    return _then(_value.copyWith(
      playerName: playerName == freezed
          ? _value.playerName
          : playerName // ignore: cast_nullable_to_non_nullable
              as String?,
      opponentName: opponentName == freezed
          ? _value.opponentName
          : opponentName // ignore: cast_nullable_to_non_nullable
              as String?,
      gameState: gameState == freezed
          ? _value.gameState
          : gameState // ignore: cast_nullable_to_non_nullable
              as String?,
      screen: screen == freezed
          ? _value.screen
          : screen // ignore: cast_nullable_to_non_nullable
              as Map<String, int>?,
      rectangles: rectangles == freezed
          ? _value.rectangles
          : rectangles // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
    ));
  }
}

/// @nodoc
abstract class _$$_GameModelCopyWith<$Res> implements $GameModelCopyWith<$Res> {
  factory _$$_GameModelCopyWith(
          _$_GameModel value, $Res Function(_$_GameModel) then) =
      __$$_GameModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? playerName,
      String? opponentName,
      String? gameState,
      Map<String, int>? screen,
      List<Map<String, dynamic>>? rectangles});
}

/// @nodoc
class __$$_GameModelCopyWithImpl<$Res> extends _$GameModelCopyWithImpl<$Res>
    implements _$$_GameModelCopyWith<$Res> {
  __$$_GameModelCopyWithImpl(
      _$_GameModel _value, $Res Function(_$_GameModel) _then)
      : super(_value, (v) => _then(v as _$_GameModel));

  @override
  _$_GameModel get _value => super._value as _$_GameModel;

  @override
  $Res call({
    Object? playerName = freezed,
    Object? opponentName = freezed,
    Object? gameState = freezed,
    Object? screen = freezed,
    Object? rectangles = freezed,
  }) {
    return _then(_$_GameModel(
      playerName: playerName == freezed
          ? _value.playerName
          : playerName // ignore: cast_nullable_to_non_nullable
              as String?,
      opponentName: opponentName == freezed
          ? _value.opponentName
          : opponentName // ignore: cast_nullable_to_non_nullable
              as String?,
      gameState: gameState == freezed
          ? _value.gameState
          : gameState // ignore: cast_nullable_to_non_nullable
              as String?,
      screen: screen == freezed
          ? _value._screen
          : screen // ignore: cast_nullable_to_non_nullable
              as Map<String, int>?,
      rectangles: rectangles == freezed
          ? _value._rectangles
          : rectangles // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.pascal)
class _$_GameModel with DiagnosticableTreeMixin implements _GameModel {
  const _$_GameModel(
      {required this.playerName,
      required this.opponentName,
      required this.gameState,
      required final Map<String, int>? screen,
      required final List<Map<String, dynamic>>? rectangles})
      : _screen = screen,
        _rectangles = rectangles;

  factory _$_GameModel.fromJson(Map<String, dynamic> json) =>
      _$$_GameModelFromJson(json);

  @override
  final String? playerName;
  @override
  final String? opponentName;
  @override
  final String? gameState;
  final Map<String, int>? _screen;
  @override
  Map<String, int>? get screen {
    final value = _screen;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<Map<String, dynamic>>? _rectangles;
  @override
  List<Map<String, dynamic>>? get rectangles {
    final value = _rectangles;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameModel(playerName: $playerName, opponentName: $opponentName, gameState: $gameState, screen: $screen, rectangles: $rectangles)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GameModel'))
      ..add(DiagnosticsProperty('playerName', playerName))
      ..add(DiagnosticsProperty('opponentName', opponentName))
      ..add(DiagnosticsProperty('gameState', gameState))
      ..add(DiagnosticsProperty('screen', screen))
      ..add(DiagnosticsProperty('rectangles', rectangles));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameModel &&
            const DeepCollectionEquality()
                .equals(other.playerName, playerName) &&
            const DeepCollectionEquality()
                .equals(other.opponentName, opponentName) &&
            const DeepCollectionEquality().equals(other.gameState, gameState) &&
            const DeepCollectionEquality().equals(other._screen, _screen) &&
            const DeepCollectionEquality()
                .equals(other._rectangles, _rectangles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(playerName),
      const DeepCollectionEquality().hash(opponentName),
      const DeepCollectionEquality().hash(gameState),
      const DeepCollectionEquality().hash(_screen),
      const DeepCollectionEquality().hash(_rectangles));

  @JsonKey(ignore: true)
  @override
  _$$_GameModelCopyWith<_$_GameModel> get copyWith =>
      __$$_GameModelCopyWithImpl<_$_GameModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GameModelToJson(
      this,
    );
  }
}

abstract class _GameModel implements GameModel {
  const factory _GameModel(
      {required final String? playerName,
      required final String? opponentName,
      required final String? gameState,
      required final Map<String, int>? screen,
      required final List<Map<String, dynamic>>? rectangles}) = _$_GameModel;

  factory _GameModel.fromJson(Map<String, dynamic> json) =
      _$_GameModel.fromJson;

  @override
  String? get playerName;
  @override
  String? get opponentName;
  @override
  String? get gameState;
  @override
  Map<String, int>? get screen;
  @override
  List<Map<String, dynamic>>? get rectangles;
  @override
  @JsonKey(ignore: true)
  _$$_GameModelCopyWith<_$_GameModel> get copyWith =>
      throw _privateConstructorUsedError;
}
