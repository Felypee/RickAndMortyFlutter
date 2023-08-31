// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'episodes_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EpisodeState {
  dynamic get episodeStatus => throw _privateConstructorUsedError;
  List<EpisodesModel> get episodeList => throw _privateConstructorUsedError;
  int get nextPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EpisodeStateCopyWith<EpisodeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeStateCopyWith<$Res> {
  factory $EpisodeStateCopyWith(
          EpisodeState value, $Res Function(EpisodeState) then) =
      _$EpisodeStateCopyWithImpl<$Res, EpisodeState>;
  @useResult
  $Res call(
      {dynamic episodeStatus, List<EpisodesModel> episodeList, int nextPage});
}

/// @nodoc
class _$EpisodeStateCopyWithImpl<$Res, $Val extends EpisodeState>
    implements $EpisodeStateCopyWith<$Res> {
  _$EpisodeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? episodeStatus = freezed,
    Object? episodeList = null,
    Object? nextPage = null,
  }) {
    return _then(_value.copyWith(
      episodeStatus: freezed == episodeStatus
          ? _value.episodeStatus
          : episodeStatus // ignore: cast_nullable_to_non_nullable
              as dynamic,
      episodeList: null == episodeList
          ? _value.episodeList
          : episodeList // ignore: cast_nullable_to_non_nullable
              as List<EpisodesModel>,
      nextPage: null == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EpisodeStateCopyWith<$Res>
    implements $EpisodeStateCopyWith<$Res> {
  factory _$$_EpisodeStateCopyWith(
          _$_EpisodeState value, $Res Function(_$_EpisodeState) then) =
      __$$_EpisodeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic episodeStatus, List<EpisodesModel> episodeList, int nextPage});
}

/// @nodoc
class __$$_EpisodeStateCopyWithImpl<$Res>
    extends _$EpisodeStateCopyWithImpl<$Res, _$_EpisodeState>
    implements _$$_EpisodeStateCopyWith<$Res> {
  __$$_EpisodeStateCopyWithImpl(
      _$_EpisodeState _value, $Res Function(_$_EpisodeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? episodeStatus = freezed,
    Object? episodeList = null,
    Object? nextPage = null,
  }) {
    return _then(_$_EpisodeState(
      episodeStatus:
          freezed == episodeStatus ? _value.episodeStatus! : episodeStatus,
      episodeList: null == episodeList
          ? _value._episodeList
          : episodeList // ignore: cast_nullable_to_non_nullable
              as List<EpisodesModel>,
      nextPage: null == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_EpisodeState implements _EpisodeState {
  const _$_EpisodeState(
      {this.episodeStatus = EpisodeStatus.initial,
      final List<EpisodesModel> episodeList = const [],
      this.nextPage = 0})
      : _episodeList = episodeList;

  @override
  @JsonKey()
  final dynamic episodeStatus;
  final List<EpisodesModel> _episodeList;
  @override
  @JsonKey()
  List<EpisodesModel> get episodeList {
    if (_episodeList is EqualUnmodifiableListView) return _episodeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_episodeList);
  }

  @override
  @JsonKey()
  final int nextPage;

  @override
  String toString() {
    return 'EpisodeState(episodeStatus: $episodeStatus, episodeList: $episodeList, nextPage: $nextPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EpisodeState &&
            const DeepCollectionEquality()
                .equals(other.episodeStatus, episodeStatus) &&
            const DeepCollectionEquality()
                .equals(other._episodeList, _episodeList) &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(episodeStatus),
      const DeepCollectionEquality().hash(_episodeList),
      nextPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EpisodeStateCopyWith<_$_EpisodeState> get copyWith =>
      __$$_EpisodeStateCopyWithImpl<_$_EpisodeState>(this, _$identity);
}

abstract class _EpisodeState implements EpisodeState {
  const factory _EpisodeState(
      {final dynamic episodeStatus,
      final List<EpisodesModel> episodeList,
      final int nextPage}) = _$_EpisodeState;

  @override
  dynamic get episodeStatus;
  @override
  List<EpisodesModel> get episodeList;
  @override
  int get nextPage;
  @override
  @JsonKey(ignore: true)
  _$$_EpisodeStateCopyWith<_$_EpisodeState> get copyWith =>
      throw _privateConstructorUsedError;
}
