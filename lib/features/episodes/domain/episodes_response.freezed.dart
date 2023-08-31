// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'episodes_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EpisodesResponse {
  int get maxPages => throw _privateConstructorUsedError;
  int get nextPage => throw _privateConstructorUsedError;
  List<EpisodesModel>? get episodesList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EpisodesResponseCopyWith<EpisodesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodesResponseCopyWith<$Res> {
  factory $EpisodesResponseCopyWith(
          EpisodesResponse value, $Res Function(EpisodesResponse) then) =
      _$EpisodesResponseCopyWithImpl<$Res, EpisodesResponse>;
  @useResult
  $Res call({int maxPages, int nextPage, List<EpisodesModel>? episodesList});
}

/// @nodoc
class _$EpisodesResponseCopyWithImpl<$Res, $Val extends EpisodesResponse>
    implements $EpisodesResponseCopyWith<$Res> {
  _$EpisodesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxPages = null,
    Object? nextPage = null,
    Object? episodesList = freezed,
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
      episodesList: freezed == episodesList
          ? _value.episodesList
          : episodesList // ignore: cast_nullable_to_non_nullable
              as List<EpisodesModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EpisodesResponseCopyWith<$Res>
    implements $EpisodesResponseCopyWith<$Res> {
  factory _$$_EpisodesResponseCopyWith(
          _$_EpisodesResponse value, $Res Function(_$_EpisodesResponse) then) =
      __$$_EpisodesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int maxPages, int nextPage, List<EpisodesModel>? episodesList});
}

/// @nodoc
class __$$_EpisodesResponseCopyWithImpl<$Res>
    extends _$EpisodesResponseCopyWithImpl<$Res, _$_EpisodesResponse>
    implements _$$_EpisodesResponseCopyWith<$Res> {
  __$$_EpisodesResponseCopyWithImpl(
      _$_EpisodesResponse _value, $Res Function(_$_EpisodesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxPages = null,
    Object? nextPage = null,
    Object? episodesList = freezed,
  }) {
    return _then(_$_EpisodesResponse(
      maxPages: null == maxPages
          ? _value.maxPages
          : maxPages // ignore: cast_nullable_to_non_nullable
              as int,
      nextPage: null == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int,
      episodesList: freezed == episodesList
          ? _value._episodesList
          : episodesList // ignore: cast_nullable_to_non_nullable
              as List<EpisodesModel>?,
    ));
  }
}

/// @nodoc

class _$_EpisodesResponse implements _EpisodesResponse {
  const _$_EpisodesResponse(
      {required this.maxPages,
      required this.nextPage,
      final List<EpisodesModel>? episodesList})
      : _episodesList = episodesList;

  @override
  final int maxPages;
  @override
  final int nextPage;
  final List<EpisodesModel>? _episodesList;
  @override
  List<EpisodesModel>? get episodesList {
    final value = _episodesList;
    if (value == null) return null;
    if (_episodesList is EqualUnmodifiableListView) return _episodesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'EpisodesResponse(maxPages: $maxPages, nextPage: $nextPage, episodesList: $episodesList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EpisodesResponse &&
            (identical(other.maxPages, maxPages) ||
                other.maxPages == maxPages) &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage) &&
            const DeepCollectionEquality()
                .equals(other._episodesList, _episodesList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, maxPages, nextPage,
      const DeepCollectionEquality().hash(_episodesList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EpisodesResponseCopyWith<_$_EpisodesResponse> get copyWith =>
      __$$_EpisodesResponseCopyWithImpl<_$_EpisodesResponse>(this, _$identity);
}

abstract class _EpisodesResponse implements EpisodesResponse {
  const factory _EpisodesResponse(
      {required final int maxPages,
      required final int nextPage,
      final List<EpisodesModel>? episodesList}) = _$_EpisodesResponse;

  @override
  int get maxPages;
  @override
  int get nextPage;
  @override
  List<EpisodesModel>? get episodesList;
  @override
  @JsonKey(ignore: true)
  _$$_EpisodesResponseCopyWith<_$_EpisodesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
