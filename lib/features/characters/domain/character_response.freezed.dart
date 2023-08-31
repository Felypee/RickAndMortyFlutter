// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CharacterResponse {
  int get maxPages => throw _privateConstructorUsedError;
  int get nextPage => throw _privateConstructorUsedError;
  List<CharacterModel>? get characterList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CharacterResponseCopyWith<CharacterResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterResponseCopyWith<$Res> {
  factory $CharacterResponseCopyWith(
          CharacterResponse value, $Res Function(CharacterResponse) then) =
      _$CharacterResponseCopyWithImpl<$Res, CharacterResponse>;
  @useResult
  $Res call({int maxPages, int nextPage, List<CharacterModel>? characterList});
}

/// @nodoc
class _$CharacterResponseCopyWithImpl<$Res, $Val extends CharacterResponse>
    implements $CharacterResponseCopyWith<$Res> {
  _$CharacterResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxPages = null,
    Object? nextPage = null,
    Object? characterList = freezed,
  }) {
    return _then(_value.copyWith(
      maxPages: null == maxPages
          ? _value.maxPages
          : maxPages // ignore: cast_nullable_to_non_nullable
              as int,
      nextPage: null == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int,
      characterList: freezed == characterList
          ? _value.characterList
          : characterList // ignore: cast_nullable_to_non_nullable
              as List<CharacterModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CharacterResponseCopyWith<$Res>
    implements $CharacterResponseCopyWith<$Res> {
  factory _$$_CharacterResponseCopyWith(_$_CharacterResponse value,
          $Res Function(_$_CharacterResponse) then) =
      __$$_CharacterResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int maxPages, int nextPage, List<CharacterModel>? characterList});
}

/// @nodoc
class __$$_CharacterResponseCopyWithImpl<$Res>
    extends _$CharacterResponseCopyWithImpl<$Res, _$_CharacterResponse>
    implements _$$_CharacterResponseCopyWith<$Res> {
  __$$_CharacterResponseCopyWithImpl(
      _$_CharacterResponse _value, $Res Function(_$_CharacterResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxPages = null,
    Object? nextPage = null,
    Object? characterList = freezed,
  }) {
    return _then(_$_CharacterResponse(
      maxPages: null == maxPages
          ? _value.maxPages
          : maxPages // ignore: cast_nullable_to_non_nullable
              as int,
      nextPage: null == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int,
      characterList: freezed == characterList
          ? _value._characterList
          : characterList // ignore: cast_nullable_to_non_nullable
              as List<CharacterModel>?,
    ));
  }
}

/// @nodoc

class _$_CharacterResponse implements _CharacterResponse {
  const _$_CharacterResponse(
      {required this.maxPages,
      required this.nextPage,
      final List<CharacterModel>? characterList})
      : _characterList = characterList;

  @override
  final int maxPages;
  @override
  final int nextPage;
  final List<CharacterModel>? _characterList;
  @override
  List<CharacterModel>? get characterList {
    final value = _characterList;
    if (value == null) return null;
    if (_characterList is EqualUnmodifiableListView) return _characterList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CharacterResponse(maxPages: $maxPages, nextPage: $nextPage, characterList: $characterList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharacterResponse &&
            (identical(other.maxPages, maxPages) ||
                other.maxPages == maxPages) &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage) &&
            const DeepCollectionEquality()
                .equals(other._characterList, _characterList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, maxPages, nextPage,
      const DeepCollectionEquality().hash(_characterList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CharacterResponseCopyWith<_$_CharacterResponse> get copyWith =>
      __$$_CharacterResponseCopyWithImpl<_$_CharacterResponse>(
          this, _$identity);
}

abstract class _CharacterResponse implements CharacterResponse {
  const factory _CharacterResponse(
      {required final int maxPages,
      required final int nextPage,
      final List<CharacterModel>? characterList}) = _$_CharacterResponse;

  @override
  int get maxPages;
  @override
  int get nextPage;
  @override
  List<CharacterModel>? get characterList;
  @override
  @JsonKey(ignore: true)
  _$$_CharacterResponseCopyWith<_$_CharacterResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
