// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'locations_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocationResponse {
  int get maxPages => throw _privateConstructorUsedError;
  int get nextPage => throw _privateConstructorUsedError;
  List<LocationModel>? get locationsList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationResponseCopyWith<LocationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationResponseCopyWith<$Res> {
  factory $LocationResponseCopyWith(
          LocationResponse value, $Res Function(LocationResponse) then) =
      _$LocationResponseCopyWithImpl<$Res, LocationResponse>;
  @useResult
  $Res call({int maxPages, int nextPage, List<LocationModel>? locationsList});
}

/// @nodoc
class _$LocationResponseCopyWithImpl<$Res, $Val extends LocationResponse>
    implements $LocationResponseCopyWith<$Res> {
  _$LocationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxPages = null,
    Object? nextPage = null,
    Object? locationsList = freezed,
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
      locationsList: freezed == locationsList
          ? _value.locationsList
          : locationsList // ignore: cast_nullable_to_non_nullable
              as List<LocationModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocationResponseCopyWith<$Res>
    implements $LocationResponseCopyWith<$Res> {
  factory _$$_LocationResponseCopyWith(
          _$_LocationResponse value, $Res Function(_$_LocationResponse) then) =
      __$$_LocationResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int maxPages, int nextPage, List<LocationModel>? locationsList});
}

/// @nodoc
class __$$_LocationResponseCopyWithImpl<$Res>
    extends _$LocationResponseCopyWithImpl<$Res, _$_LocationResponse>
    implements _$$_LocationResponseCopyWith<$Res> {
  __$$_LocationResponseCopyWithImpl(
      _$_LocationResponse _value, $Res Function(_$_LocationResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxPages = null,
    Object? nextPage = null,
    Object? locationsList = freezed,
  }) {
    return _then(_$_LocationResponse(
      maxPages: null == maxPages
          ? _value.maxPages
          : maxPages // ignore: cast_nullable_to_non_nullable
              as int,
      nextPage: null == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int,
      locationsList: freezed == locationsList
          ? _value._locationsList
          : locationsList // ignore: cast_nullable_to_non_nullable
              as List<LocationModel>?,
    ));
  }
}

/// @nodoc

class _$_LocationResponse implements _LocationResponse {
  const _$_LocationResponse(
      {required this.maxPages,
      required this.nextPage,
      final List<LocationModel>? locationsList})
      : _locationsList = locationsList;

  @override
  final int maxPages;
  @override
  final int nextPage;
  final List<LocationModel>? _locationsList;
  @override
  List<LocationModel>? get locationsList {
    final value = _locationsList;
    if (value == null) return null;
    if (_locationsList is EqualUnmodifiableListView) return _locationsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LocationResponse(maxPages: $maxPages, nextPage: $nextPage, locationsList: $locationsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationResponse &&
            (identical(other.maxPages, maxPages) ||
                other.maxPages == maxPages) &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage) &&
            const DeepCollectionEquality()
                .equals(other._locationsList, _locationsList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, maxPages, nextPage,
      const DeepCollectionEquality().hash(_locationsList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationResponseCopyWith<_$_LocationResponse> get copyWith =>
      __$$_LocationResponseCopyWithImpl<_$_LocationResponse>(this, _$identity);
}

abstract class _LocationResponse implements LocationResponse {
  const factory _LocationResponse(
      {required final int maxPages,
      required final int nextPage,
      final List<LocationModel>? locationsList}) = _$_LocationResponse;

  @override
  int get maxPages;
  @override
  int get nextPage;
  @override
  List<LocationModel>? get locationsList;
  @override
  @JsonKey(ignore: true)
  _$$_LocationResponseCopyWith<_$_LocationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
