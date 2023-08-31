// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocationState {
  dynamic get locationStatus => throw _privateConstructorUsedError;
  List<LocationModel> get locationList => throw _privateConstructorUsedError;
  dynamic get nextPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationStateCopyWith<LocationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
          LocationState value, $Res Function(LocationState) then) =
      _$LocationStateCopyWithImpl<$Res, LocationState>;
  @useResult
  $Res call(
      {dynamic locationStatus,
      List<LocationModel> locationList,
      dynamic nextPage});
}

/// @nodoc
class _$LocationStateCopyWithImpl<$Res, $Val extends LocationState>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationStatus = freezed,
    Object? locationList = null,
    Object? nextPage = freezed,
  }) {
    return _then(_value.copyWith(
      locationStatus: freezed == locationStatus
          ? _value.locationStatus
          : locationStatus // ignore: cast_nullable_to_non_nullable
              as dynamic,
      locationList: null == locationList
          ? _value.locationList
          : locationList // ignore: cast_nullable_to_non_nullable
              as List<LocationModel>,
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocationStateCopyWith<$Res>
    implements $LocationStateCopyWith<$Res> {
  factory _$$_LocationStateCopyWith(
          _$_LocationState value, $Res Function(_$_LocationState) then) =
      __$$_LocationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic locationStatus,
      List<LocationModel> locationList,
      dynamic nextPage});
}

/// @nodoc
class __$$_LocationStateCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$_LocationState>
    implements _$$_LocationStateCopyWith<$Res> {
  __$$_LocationStateCopyWithImpl(
      _$_LocationState _value, $Res Function(_$_LocationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationStatus = freezed,
    Object? locationList = null,
    Object? nextPage = freezed,
  }) {
    return _then(_$_LocationState(
      locationStatus:
          freezed == locationStatus ? _value.locationStatus! : locationStatus,
      locationList: null == locationList
          ? _value._locationList
          : locationList // ignore: cast_nullable_to_non_nullable
              as List<LocationModel>,
      nextPage: freezed == nextPage ? _value.nextPage! : nextPage,
    ));
  }
}

/// @nodoc

class _$_LocationState implements _LocationState {
  const _$_LocationState(
      {this.locationStatus = LocationStatus.initial,
      final List<LocationModel> locationList = const [],
      this.nextPage = 0})
      : _locationList = locationList;

  @override
  @JsonKey()
  final dynamic locationStatus;
  final List<LocationModel> _locationList;
  @override
  @JsonKey()
  List<LocationModel> get locationList {
    if (_locationList is EqualUnmodifiableListView) return _locationList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_locationList);
  }

  @override
  @JsonKey()
  final dynamic nextPage;

  @override
  String toString() {
    return 'LocationState(locationStatus: $locationStatus, locationList: $locationList, nextPage: $nextPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationState &&
            const DeepCollectionEquality()
                .equals(other.locationStatus, locationStatus) &&
            const DeepCollectionEquality()
                .equals(other._locationList, _locationList) &&
            const DeepCollectionEquality().equals(other.nextPage, nextPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(locationStatus),
      const DeepCollectionEquality().hash(_locationList),
      const DeepCollectionEquality().hash(nextPage));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationStateCopyWith<_$_LocationState> get copyWith =>
      __$$_LocationStateCopyWithImpl<_$_LocationState>(this, _$identity);
}

abstract class _LocationState implements LocationState {
  const factory _LocationState(
      {final dynamic locationStatus,
      final List<LocationModel> locationList,
      final dynamic nextPage}) = _$_LocationState;

  @override
  dynamic get locationStatus;
  @override
  List<LocationModel> get locationList;
  @override
  dynamic get nextPage;
  @override
  @JsonKey(ignore: true)
  _$$_LocationStateCopyWith<_$_LocationState> get copyWith =>
      throw _privateConstructorUsedError;
}
