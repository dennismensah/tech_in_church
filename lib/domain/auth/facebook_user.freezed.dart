// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'facebook_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FacebookUser _$FacebookUserFromJson(Map<String, dynamic> json) {
  return _FacebookUser.fromJson(json);
}

/// @nodoc
class _$FacebookUserTearOff {
  const _$FacebookUserTearOff();

  _FacebookUser call(
      {required int id,
      required String name,
      required String first_name,
      required String last_name,
      required String email}) {
    return _FacebookUser(
      id: id,
      name: name,
      first_name: first_name,
      last_name: last_name,
      email: email,
    );
  }

  FacebookUser fromJson(Map<String, Object> json) {
    return FacebookUser.fromJson(json);
  }
}

/// @nodoc
const $FacebookUser = _$FacebookUserTearOff();

/// @nodoc
mixin _$FacebookUser {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get first_name => throw _privateConstructorUsedError;
  String get last_name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FacebookUserCopyWith<FacebookUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacebookUserCopyWith<$Res> {
  factory $FacebookUserCopyWith(
          FacebookUser value, $Res Function(FacebookUser) then) =
      _$FacebookUserCopyWithImpl<$Res>;
  $Res call(
      {int id, String name, String first_name, String last_name, String email});
}

/// @nodoc
class _$FacebookUserCopyWithImpl<$Res> implements $FacebookUserCopyWith<$Res> {
  _$FacebookUserCopyWithImpl(this._value, this._then);

  final FacebookUser _value;
  // ignore: unused_field
  final $Res Function(FacebookUser) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? first_name = freezed,
    Object? last_name = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      first_name: first_name == freezed
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String,
      last_name: last_name == freezed
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$FacebookUserCopyWith<$Res>
    implements $FacebookUserCopyWith<$Res> {
  factory _$FacebookUserCopyWith(
          _FacebookUser value, $Res Function(_FacebookUser) then) =
      __$FacebookUserCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id, String name, String first_name, String last_name, String email});
}

/// @nodoc
class __$FacebookUserCopyWithImpl<$Res> extends _$FacebookUserCopyWithImpl<$Res>
    implements _$FacebookUserCopyWith<$Res> {
  __$FacebookUserCopyWithImpl(
      _FacebookUser _value, $Res Function(_FacebookUser) _then)
      : super(_value, (v) => _then(v as _FacebookUser));

  @override
  _FacebookUser get _value => super._value as _FacebookUser;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? first_name = freezed,
    Object? last_name = freezed,
    Object? email = freezed,
  }) {
    return _then(_FacebookUser(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      first_name: first_name == freezed
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String,
      last_name: last_name == freezed
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_FacebookUser implements _FacebookUser {
  const _$_FacebookUser(
      {required this.id,
      required this.name,
      required this.first_name,
      required this.last_name,
      required this.email});

  factory _$_FacebookUser.fromJson(Map<String, dynamic> json) =>
      _$_$_FacebookUserFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String first_name;
  @override
  final String last_name;
  @override
  final String email;

  @override
  String toString() {
    return 'FacebookUser(id: $id, name: $name, first_name: $first_name, last_name: $last_name, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FacebookUser &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.first_name, first_name) ||
                const DeepCollectionEquality()
                    .equals(other.first_name, first_name)) &&
            (identical(other.last_name, last_name) ||
                const DeepCollectionEquality()
                    .equals(other.last_name, last_name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(first_name) ^
      const DeepCollectionEquality().hash(last_name) ^
      const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  _$FacebookUserCopyWith<_FacebookUser> get copyWith =>
      __$FacebookUserCopyWithImpl<_FacebookUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FacebookUserToJson(this);
  }
}

abstract class _FacebookUser implements FacebookUser {
  const factory _FacebookUser(
      {required int id,
      required String name,
      required String first_name,
      required String last_name,
      required String email}) = _$_FacebookUser;

  factory _FacebookUser.fromJson(Map<String, dynamic> json) =
      _$_FacebookUser.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get first_name => throw _privateConstructorUsedError;
  @override
  String get last_name => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FacebookUserCopyWith<_FacebookUser> get copyWith =>
      throw _privateConstructorUsedError;
}
