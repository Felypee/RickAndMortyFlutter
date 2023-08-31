// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'episodes_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EpisodesModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get airDate => throw _privateConstructorUsedError;
  String get episode => throw _privateConstructorUsedError;
  int get charactersNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EpisodesModelCopyWith<EpisodesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodesModelCopyWith<$Res> {
  factory $EpisodesModelCopyWith(
          EpisodesModel value, $Res Function(EpisodesModel) then) =
      _$EpisodesModelCopyWithImpl<$Res, EpisodesModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String airDate,
      String episode,
      int charactersNumber});
}

/// @nodoc
class _$EpisodesModelCopyWithImpl<$Res, $Val extends EpisodesModel>
    implements $EpisodesModelCopyWith<$Res> {
  _$EpisodesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? airDate = null,
    Object? episode = null,
    Object? charactersNumber = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      airDate: null == airDate
          ? _value.airDate
          : airDate // ignore: cast_nullable_to_non_nullable
              as String,
      episode: null == episode
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as String,
      charactersNumber: null == charactersNumber
          ? _value.charactersNumber
          : charactersNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EpisodesModelCopyWith<$Res>
    implements $EpisodesModelCopyWith<$Res> {
  factory _$$_EpisodesModelCopyWith(
          _$_EpisodesModel value, $Res Function(_$_EpisodesModel) then) =
      __$$_EpisodesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String airDate,
      String episode,
      int charactersNumber});
}

/// @nodoc
class __$$_EpisodesModelCopyWithImpl<$Res>
    extends _$EpisodesModelCopyWithImpl<$Res, _$_EpisodesModel>
    implements _$$_EpisodesModelCopyWith<$Res> {
  __$$_EpisodesModelCopyWithImpl(
      _$_EpisodesModel _value, $Res Function(_$_EpisodesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? airDate = null,
    Object? episode = null,
    Object? charactersNumber = null,
  }) {
    return _then(_$_EpisodesModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      airDate: null == airDate
          ? _value.airDate
          : airDate // ignore: cast_nullable_to_non_nullable
              as String,
      episode: null == episode
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as String,
      charactersNumber: null == charactersNumber
          ? _value.charactersNumber
          : charactersNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_EpisodesModel implements _EpisodesModel {
  const _$_EpisodesModel(
      {required this.id,
      required this.name,
      required this.airDate,
      required this.episode,
      required this.charactersNumber});

  @override
  final int id;
  @override
  final String name;
  @override
  final String airDate;
  @override
  final String episode;
  @override
  final int charactersNumber;

  @override
  String toString() {
    return 'EpisodesModel(id: $id, name: $name, airDate: $airDate, episode: $episode, charactersNumber: $charactersNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EpisodesModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.airDate, airDate) || other.airDate == airDate) &&
            (identical(other.episode, episode) || other.episode == episode) &&
            (identical(other.charactersNumber, charactersNumber) ||
                other.charactersNumber == charactersNumber));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, airDate, episode, charactersNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EpisodesModelCopyWith<_$_EpisodesModel> get copyWith =>
      __$$_EpisodesModelCopyWithImpl<_$_EpisodesModel>(this, _$identity);
}

abstract class _EpisodesModel implements EpisodesModel {
  const factory _EpisodesModel(
      {required final int id,
      required final String name,
      required final String airDate,
      required final String episode,
      required final int charactersNumber}) = _$_EpisodesModel;

  @override
  int get id;
  @override
  String get name;
  @override
  String get airDate;
  @override
  String get episode;
  @override
  int get charactersNumber;
  @override
  @JsonKey(ignore: true)
  _$$_EpisodesModelCopyWith<_$_EpisodesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
