// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'counselling_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CounsellingGroups _$CounsellingGroupsFromJson(Map<String, dynamic> json) {
  return _CounsellingGroups.fromJson(json);
}

/// @nodoc
class _$CounsellingGroupsTearOff {
  const _$CounsellingGroupsTearOff();

  _CounsellingGroups call({required int id, required String title}) {
    return _CounsellingGroups(
      id: id,
      title: title,
    );
  }

  CounsellingGroups fromJson(Map<String, Object> json) {
    return CounsellingGroups.fromJson(json);
  }
}

/// @nodoc
const $CounsellingGroups = _$CounsellingGroupsTearOff();

/// @nodoc
mixin _$CounsellingGroups {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CounsellingGroupsCopyWith<CounsellingGroups> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounsellingGroupsCopyWith<$Res> {
  factory $CounsellingGroupsCopyWith(
          CounsellingGroups value, $Res Function(CounsellingGroups) then) =
      _$CounsellingGroupsCopyWithImpl<$Res>;
  $Res call({int id, String title});
}

/// @nodoc
class _$CounsellingGroupsCopyWithImpl<$Res>
    implements $CounsellingGroupsCopyWith<$Res> {
  _$CounsellingGroupsCopyWithImpl(this._value, this._then);

  final CounsellingGroups _value;
  // ignore: unused_field
  final $Res Function(CounsellingGroups) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$CounsellingGroupsCopyWith<$Res>
    implements $CounsellingGroupsCopyWith<$Res> {
  factory _$CounsellingGroupsCopyWith(
          _CounsellingGroups value, $Res Function(_CounsellingGroups) then) =
      __$CounsellingGroupsCopyWithImpl<$Res>;
  @override
  $Res call({int id, String title});
}

/// @nodoc
class __$CounsellingGroupsCopyWithImpl<$Res>
    extends _$CounsellingGroupsCopyWithImpl<$Res>
    implements _$CounsellingGroupsCopyWith<$Res> {
  __$CounsellingGroupsCopyWithImpl(
      _CounsellingGroups _value, $Res Function(_CounsellingGroups) _then)
      : super(_value, (v) => _then(v as _CounsellingGroups));

  @override
  _CounsellingGroups get _value => super._value as _CounsellingGroups;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_CounsellingGroups(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CounsellingGroups implements _CounsellingGroups {
  const _$_CounsellingGroups({required this.id, required this.title});

  factory _$_CounsellingGroups.fromJson(Map<String, dynamic> json) =>
      _$_$_CounsellingGroupsFromJson(json);

  @override
  final int id;
  @override
  final String title;

  @override
  String toString() {
    return 'CounsellingGroups(id: $id, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CounsellingGroups &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title);

  @JsonKey(ignore: true)
  @override
  _$CounsellingGroupsCopyWith<_CounsellingGroups> get copyWith =>
      __$CounsellingGroupsCopyWithImpl<_CounsellingGroups>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CounsellingGroupsToJson(this);
  }
}

abstract class _CounsellingGroups implements CounsellingGroups {
  const factory _CounsellingGroups({required int id, required String title}) =
      _$_CounsellingGroups;

  factory _CounsellingGroups.fromJson(Map<String, dynamic> json) =
      _$_CounsellingGroups.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CounsellingGroupsCopyWith<_CounsellingGroups> get copyWith =>
      throw _privateConstructorUsedError;
}
