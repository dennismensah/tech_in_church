// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'church_today.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChurchToday _$ChurchTodayFromJson(Map<String, dynamic> json) {
  return _ChurchToday.fromJson(json);
}

/// @nodoc
class _$ChurchTodayTearOff {
  const _$ChurchTodayTearOff();

  _ChurchToday call(
      {required int id,
      required String title,
      required String details,
      required String day,
      required String dayname,
      required String creator,
      required String mask,
      required String created_at}) {
    return _ChurchToday(
      id: id,
      title: title,
      details: details,
      day: day,
      dayname: dayname,
      creator: creator,
      mask: mask,
      created_at: created_at,
    );
  }

  ChurchToday fromJson(Map<String, Object> json) {
    return ChurchToday.fromJson(json);
  }
}

/// @nodoc
const $ChurchToday = _$ChurchTodayTearOff();

/// @nodoc
mixin _$ChurchToday {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get details => throw _privateConstructorUsedError;
  String get day => throw _privateConstructorUsedError;
  String get dayname => throw _privateConstructorUsedError;
  String get creator => throw _privateConstructorUsedError;
  String get mask => throw _privateConstructorUsedError;
  String get created_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChurchTodayCopyWith<ChurchToday> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChurchTodayCopyWith<$Res> {
  factory $ChurchTodayCopyWith(
          ChurchToday value, $Res Function(ChurchToday) then) =
      _$ChurchTodayCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String title,
      String details,
      String day,
      String dayname,
      String creator,
      String mask,
      String created_at});
}

/// @nodoc
class _$ChurchTodayCopyWithImpl<$Res> implements $ChurchTodayCopyWith<$Res> {
  _$ChurchTodayCopyWithImpl(this._value, this._then);

  final ChurchToday _value;
  // ignore: unused_field
  final $Res Function(ChurchToday) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? details = freezed,
    Object? day = freezed,
    Object? dayname = freezed,
    Object? creator = freezed,
    Object? mask = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      dayname: dayname == freezed
          ? _value.dayname
          : dayname // ignore: cast_nullable_to_non_nullable
              as String,
      creator: creator == freezed
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as String,
      mask: mask == freezed
          ? _value.mask
          : mask // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ChurchTodayCopyWith<$Res>
    implements $ChurchTodayCopyWith<$Res> {
  factory _$ChurchTodayCopyWith(
          _ChurchToday value, $Res Function(_ChurchToday) then) =
      __$ChurchTodayCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      String details,
      String day,
      String dayname,
      String creator,
      String mask,
      String created_at});
}

/// @nodoc
class __$ChurchTodayCopyWithImpl<$Res> extends _$ChurchTodayCopyWithImpl<$Res>
    implements _$ChurchTodayCopyWith<$Res> {
  __$ChurchTodayCopyWithImpl(
      _ChurchToday _value, $Res Function(_ChurchToday) _then)
      : super(_value, (v) => _then(v as _ChurchToday));

  @override
  _ChurchToday get _value => super._value as _ChurchToday;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? details = freezed,
    Object? day = freezed,
    Object? dayname = freezed,
    Object? creator = freezed,
    Object? mask = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_ChurchToday(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      dayname: dayname == freezed
          ? _value.dayname
          : dayname // ignore: cast_nullable_to_non_nullable
              as String,
      creator: creator == freezed
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as String,
      mask: mask == freezed
          ? _value.mask
          : mask // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ChurchToday implements _ChurchToday {
  const _$_ChurchToday(
      {required this.id,
      required this.title,
      required this.details,
      required this.day,
      required this.dayname,
      required this.creator,
      required this.mask,
      required this.created_at});

  factory _$_ChurchToday.fromJson(Map<String, dynamic> json) =>
      _$_$_ChurchTodayFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String details;
  @override
  final String day;
  @override
  final String dayname;
  @override
  final String creator;
  @override
  final String mask;
  @override
  final String created_at;

  @override
  String toString() {
    return 'ChurchToday(id: $id, title: $title, details: $details, day: $day, dayname: $dayname, creator: $creator, mask: $mask, created_at: $created_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChurchToday &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.details, details) ||
                const DeepCollectionEquality()
                    .equals(other.details, details)) &&
            (identical(other.day, day) ||
                const DeepCollectionEquality().equals(other.day, day)) &&
            (identical(other.dayname, dayname) ||
                const DeepCollectionEquality()
                    .equals(other.dayname, dayname)) &&
            (identical(other.creator, creator) ||
                const DeepCollectionEquality()
                    .equals(other.creator, creator)) &&
            (identical(other.mask, mask) ||
                const DeepCollectionEquality().equals(other.mask, mask)) &&
            (identical(other.created_at, created_at) ||
                const DeepCollectionEquality()
                    .equals(other.created_at, created_at)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(details) ^
      const DeepCollectionEquality().hash(day) ^
      const DeepCollectionEquality().hash(dayname) ^
      const DeepCollectionEquality().hash(creator) ^
      const DeepCollectionEquality().hash(mask) ^
      const DeepCollectionEquality().hash(created_at);

  @JsonKey(ignore: true)
  @override
  _$ChurchTodayCopyWith<_ChurchToday> get copyWith =>
      __$ChurchTodayCopyWithImpl<_ChurchToday>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ChurchTodayToJson(this);
  }
}

abstract class _ChurchToday implements ChurchToday {
  const factory _ChurchToday(
      {required int id,
      required String title,
      required String details,
      required String day,
      required String dayname,
      required String creator,
      required String mask,
      required String created_at}) = _$_ChurchToday;

  factory _ChurchToday.fromJson(Map<String, dynamic> json) =
      _$_ChurchToday.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get details => throw _privateConstructorUsedError;
  @override
  String get day => throw _privateConstructorUsedError;
  @override
  String get dayname => throw _privateConstructorUsedError;
  @override
  String get creator => throw _privateConstructorUsedError;
  @override
  String get mask => throw _privateConstructorUsedError;
  @override
  String get created_at => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChurchTodayCopyWith<_ChurchToday> get copyWith =>
      throw _privateConstructorUsedError;
}
