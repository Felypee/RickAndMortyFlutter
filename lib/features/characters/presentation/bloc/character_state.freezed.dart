// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CharacterState {
  dynamic get characterStatus => throw _privateConstructorUsedError;
  List<CharacterModel> get characterList => throw _privateConstructorUsedError;
  int get nextPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CharacterStateCopyWith<CharacterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterStateCopyWith<$Res> {
  factory $CharacterStateCopyWith(
          CharacterState value, $Res Function(CharacterState) then) =
      _$CharacterStateCopyWithImpl<$Res, CharacterState>;
  @useResult
  $Res call(
      {dynamic characterStatus,
      List<CharacterModel> characterList,
      int nextPage});
}

/// @nodoc
class _$CharacterStateCopyWithImpl<$Res, $Val extends CharacterState>
    implements $CharacterStateCopyWith<$Res> {
  _$CharacterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characterStatus = freezed,
    Object? characterList = null,
    Object? nextPage = null,
  }) {
    return _then(_value.copyWith(
      characterStatus: freezed == characterStatus
          ? _value.characterStatus
          : characterStatus // ignore: cast_nullable_to_non_nullable
              as dynamic,
      characterList: null == characterList
          ? _value.characterList
          : characterList // ignore: cast_nullable_to_non_nullable
              as List<CharacterModel>,
      nextPage: null == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CharacterStateCopyWith<$Res>
    implements $CharacterStateCopyWith<$Res> {
  factory _$$_CharacterStateCopyWith(
          _$_CharacterState value, $Res Function(_$_CharacterState) then) =
      __$$_CharacterStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic characterStatus,
      List<CharacterModel> characterList,
      int nextPage});
}

/// @nodoc
class __$$_CharacterStateCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res, _$_CharacterState>
    implements _$$_CharacterStateCopyWith<$Res> {
  __$$_CharacterStateCopyWithImpl(
      _$_CharacterState _value, $Res Function(_$_CharacterState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characterStatus = freezed,
    Object? characterList = null,
    Object? nextPage = null,
  }) {
    return _then(_$_CharacterState(
      characterStatus: freezed == characterStatus
          ? _value.characterStatus!
          : characterStatus,
      characterList: null == characterList
          ? _value._characterList
          : characterList // ignore: cast_nullable_to_non_nullable
              as List<CharacterModel>,
      nextPage: null == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CharacterState implements _CharacterState {
  const _$_CharacterState(
      {this.characterStatus = CharacterStatus.initial,
      final List<CharacterModel> characterList = const [],
      this.nextPage = 0})
      : _characterList = characterList;

  @override
  @JsonKey()
  final dynamic characterStatus;
  final List<CharacterModel> _characterList;
  @override
  @JsonKey()
  List<CharacterModel> get characterList {
    if (_characterList is EqualUnmodifiableListView) return _characterList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characterList);
  }

  @override
  @JsonKey()
  final int nextPage;

  @override
  String toString() {
    return 'CharacterState(characterStatus: $characterStatus, characterList: $characterList, nextPage: $nextPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharacterState &&
            const DeepCollectionEquality()
                .equals(other.characterStatus, characterStatus) &&
            const DeepCollectionEquality()
                .equals(other._characterList, _characterList) &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(characterStatus),
      const DeepCollectionEquality().hash(_characterList),
      nextPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CharacterStateCopyWith<_$_CharacterState> get copyWith =>
      __$$_CharacterStateCopyWithImpl<_$_CharacterState>(this, _$identity);
}

abstract class _CharacterState implements CharacterState {
  const factory _CharacterState(
      {final dynamic characterStatus,
      final List<CharacterModel> characterList,
      final int nextPage}) = _$_CharacterState;

  @override
  dynamic get characterStatus;
  @override
  List<CharacterModel> get characterList;
  @override
  int get nextPage;
  @override
  @JsonKey(ignore: true)
  _$$_CharacterStateCopyWith<_$_CharacterState> get copyWith =>
      throw _privateConstructorUsedError;
}
