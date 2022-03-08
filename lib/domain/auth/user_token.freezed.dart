// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserToken _$UserTokenFromJson(Map<String, dynamic> json) {
  return _UserToken.fromJson(json);
}

/// @nodoc
class _$UserTokenTearOff {
  const _$UserTokenTearOff();

  _UserToken call(
      {@HiveField(13) required User user,
      @HiveField(14) required String token,
      @HiveField(15) required int counsellor}) {
    return _UserToken(
      user: user,
      token: token,
      counsellor: counsellor,
    );
  }

  UserToken fromJson(Map<String, Object> json) {
    return UserToken.fromJson(json);
  }
}

/// @nodoc
const $UserToken = _$UserTokenTearOff();

/// @nodoc
mixin _$UserToken {
  @HiveField(13)
  User get user => throw _privateConstructorUsedError;
  @HiveField(14)
  String get token => throw _privateConstructorUsedError;
  @HiveField(15)
  int get counsellor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserTokenCopyWith<UserToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserTokenCopyWith<$Res> {
  factory $UserTokenCopyWith(UserToken value, $Res Function(UserToken) then) =
      _$UserTokenCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(13) User user,
      @HiveField(14) String token,
      @HiveField(15) int counsellor});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$UserTokenCopyWithImpl<$Res> implements $UserTokenCopyWith<$Res> {
  _$UserTokenCopyWithImpl(this._value, this._then);

  final UserToken _value;
  // ignore: unused_field
  final $Res Function(UserToken) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? token = freezed,
    Object? counsellor = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      counsellor: counsellor == freezed
          ? _value.counsellor
          : counsellor // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$UserTokenCopyWith<$Res> implements $UserTokenCopyWith<$Res> {
  factory _$UserTokenCopyWith(
          _UserToken value, $Res Function(_UserToken) then) =
      __$UserTokenCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(13) User user,
      @HiveField(14) String token,
      @HiveField(15) int counsellor});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$UserTokenCopyWithImpl<$Res> extends _$UserTokenCopyWithImpl<$Res>
    implements _$UserTokenCopyWith<$Res> {
  __$UserTokenCopyWithImpl(_UserToken _value, $Res Function(_UserToken) _then)
      : super(_value, (v) => _then(v as _UserToken));

  @override
  _UserToken get _value => super._value as _UserToken;

  @override
  $Res call({
    Object? user = freezed,
    Object? token = freezed,
    Object? counsellor = freezed,
  }) {
    return _then(_UserToken(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      counsellor: counsellor == freezed
          ? _value.counsellor
          : counsellor // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UserToken implements _UserToken {
  const _$_UserToken(
      {@HiveField(13) required this.user,
      @HiveField(14) required this.token,
      @HiveField(15) required this.counsellor});

  factory _$_UserToken.fromJson(Map<String, dynamic> json) =>
      _$_$_UserTokenFromJson(json);

  @override
  @HiveField(13)
  final User user;
  @override
  @HiveField(14)
  final String token;
  @override
  @HiveField(15)
  final int counsellor;

  @override
  String toString() {
    return 'UserToken(user: $user, token: $token, counsellor: $counsellor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserToken &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.counsellor, counsellor) ||
                const DeepCollectionEquality()
                    .equals(other.counsellor, counsellor)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(counsellor);

  @JsonKey(ignore: true)
  @override
  _$UserTokenCopyWith<_UserToken> get copyWith =>
      __$UserTokenCopyWithImpl<_UserToken>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserTokenToJson(this);
  }
}

abstract class _UserToken implements UserToken {
  const factory _UserToken(
      {@HiveField(13) required User user,
      @HiveField(14) required String token,
      @HiveField(15) required int counsellor}) = _$_UserToken;

  factory _UserToken.fromJson(Map<String, dynamic> json) =
      _$_UserToken.fromJson;

  @override
  @HiveField(13)
  User get user => throw _privateConstructorUsedError;
  @override
  @HiveField(14)
  String get token => throw _privateConstructorUsedError;
  @override
  @HiveField(15)
  int get counsellor => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserTokenCopyWith<_UserToken> get copyWith =>
      throw _privateConstructorUsedError;
}
