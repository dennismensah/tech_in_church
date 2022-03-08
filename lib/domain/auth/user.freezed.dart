// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {@HiveField(0) required int id,
      @HiveField(1) required String first_name,
      @HiveField(2) required String last_name,
      @HiveField(3) required String gender,
      @HiveField(4) required String email,
      @HiveField(5) required int type,
      @HiveField(6) required String telephone_number,
      @HiveField(7) required String dob,
      @HiveField(8) required String? image,
      @HiveField(9) required String image_filename,
      @HiveField(10) required String mask,
      @HiveField(11) required String fullname,
      @HiveField(12) required String created_at}) {
    return _User(
      id: id,
      first_name: first_name,
      last_name: last_name,
      gender: gender,
      email: email,
      type: type,
      telephone_number: telephone_number,
      dob: dob,
      image: image,
      image_filename: image_filename,
      mask: mask,
      fullname: fullname,
      created_at: created_at,
    );
  }

  User fromJson(Map<String, Object> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get first_name => throw _privateConstructorUsedError;
  @HiveField(2)
  String get last_name => throw _privateConstructorUsedError;
  @HiveField(3)
  String get gender => throw _privateConstructorUsedError;
  @HiveField(4)
  String get email => throw _privateConstructorUsedError;
  @HiveField(5)
  int get type => throw _privateConstructorUsedError;
  @HiveField(6)
  String get telephone_number => throw _privateConstructorUsedError;
  @HiveField(7)
  String get dob => throw _privateConstructorUsedError;
  @HiveField(8)
  String? get image => throw _privateConstructorUsedError;
  @HiveField(9)
  String get image_filename => throw _privateConstructorUsedError;
  @HiveField(10)
  String get mask => throw _privateConstructorUsedError;
  @HiveField(11)
  String get fullname => throw _privateConstructorUsedError;
  @HiveField(12)
  String get created_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String first_name,
      @HiveField(2) String last_name,
      @HiveField(3) String gender,
      @HiveField(4) String email,
      @HiveField(5) int type,
      @HiveField(6) String telephone_number,
      @HiveField(7) String dob,
      @HiveField(8) String? image,
      @HiveField(9) String image_filename,
      @HiveField(10) String mask,
      @HiveField(11) String fullname,
      @HiveField(12) String created_at});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? first_name = freezed,
    Object? last_name = freezed,
    Object? gender = freezed,
    Object? email = freezed,
    Object? type = freezed,
    Object? telephone_number = freezed,
    Object? dob = freezed,
    Object? image = freezed,
    Object? image_filename = freezed,
    Object? mask = freezed,
    Object? fullname = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      first_name: first_name == freezed
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String,
      last_name: last_name == freezed
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      telephone_number: telephone_number == freezed
          ? _value.telephone_number
          : telephone_number // ignore: cast_nullable_to_non_nullable
              as String,
      dob: dob == freezed
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      image_filename: image_filename == freezed
          ? _value.image_filename
          : image_filename // ignore: cast_nullable_to_non_nullable
              as String,
      mask: mask == freezed
          ? _value.mask
          : mask // ignore: cast_nullable_to_non_nullable
              as String,
      fullname: fullname == freezed
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String first_name,
      @HiveField(2) String last_name,
      @HiveField(3) String gender,
      @HiveField(4) String email,
      @HiveField(5) int type,
      @HiveField(6) String telephone_number,
      @HiveField(7) String dob,
      @HiveField(8) String? image,
      @HiveField(9) String image_filename,
      @HiveField(10) String mask,
      @HiveField(11) String fullname,
      @HiveField(12) String created_at});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? id = freezed,
    Object? first_name = freezed,
    Object? last_name = freezed,
    Object? gender = freezed,
    Object? email = freezed,
    Object? type = freezed,
    Object? telephone_number = freezed,
    Object? dob = freezed,
    Object? image = freezed,
    Object? image_filename = freezed,
    Object? mask = freezed,
    Object? fullname = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_User(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      first_name: first_name == freezed
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String,
      last_name: last_name == freezed
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      telephone_number: telephone_number == freezed
          ? _value.telephone_number
          : telephone_number // ignore: cast_nullable_to_non_nullable
              as String,
      dob: dob == freezed
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      image_filename: image_filename == freezed
          ? _value.image_filename
          : image_filename // ignore: cast_nullable_to_non_nullable
              as String,
      mask: mask == freezed
          ? _value.mask
          : mask // ignore: cast_nullable_to_non_nullable
              as String,
      fullname: fullname == freezed
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
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
class _$_User implements _User {
  const _$_User(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.first_name,
      @HiveField(2) required this.last_name,
      @HiveField(3) required this.gender,
      @HiveField(4) required this.email,
      @HiveField(5) required this.type,
      @HiveField(6) required this.telephone_number,
      @HiveField(7) required this.dob,
      @HiveField(8) required this.image,
      @HiveField(9) required this.image_filename,
      @HiveField(10) required this.mask,
      @HiveField(11) required this.fullname,
      @HiveField(12) required this.created_at});

  factory _$_User.fromJson(Map<String, dynamic> json) =>
      _$_$_UserFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final String first_name;
  @override
  @HiveField(2)
  final String last_name;
  @override
  @HiveField(3)
  final String gender;
  @override
  @HiveField(4)
  final String email;
  @override
  @HiveField(5)
  final int type;
  @override
  @HiveField(6)
  final String telephone_number;
  @override
  @HiveField(7)
  final String dob;
  @override
  @HiveField(8)
  final String? image;
  @override
  @HiveField(9)
  final String image_filename;
  @override
  @HiveField(10)
  final String mask;
  @override
  @HiveField(11)
  final String fullname;
  @override
  @HiveField(12)
  final String created_at;

  @override
  String toString() {
    return 'User(id: $id, first_name: $first_name, last_name: $last_name, gender: $gender, email: $email, type: $type, telephone_number: $telephone_number, dob: $dob, image: $image, image_filename: $image_filename, mask: $mask, fullname: $fullname, created_at: $created_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.first_name, first_name) ||
                const DeepCollectionEquality()
                    .equals(other.first_name, first_name)) &&
            (identical(other.last_name, last_name) ||
                const DeepCollectionEquality()
                    .equals(other.last_name, last_name)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.telephone_number, telephone_number) ||
                const DeepCollectionEquality()
                    .equals(other.telephone_number, telephone_number)) &&
            (identical(other.dob, dob) ||
                const DeepCollectionEquality().equals(other.dob, dob)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.image_filename, image_filename) ||
                const DeepCollectionEquality()
                    .equals(other.image_filename, image_filename)) &&
            (identical(other.mask, mask) ||
                const DeepCollectionEquality().equals(other.mask, mask)) &&
            (identical(other.fullname, fullname) ||
                const DeepCollectionEquality()
                    .equals(other.fullname, fullname)) &&
            (identical(other.created_at, created_at) ||
                const DeepCollectionEquality()
                    .equals(other.created_at, created_at)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(first_name) ^
      const DeepCollectionEquality().hash(last_name) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(telephone_number) ^
      const DeepCollectionEquality().hash(dob) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(image_filename) ^
      const DeepCollectionEquality().hash(mask) ^
      const DeepCollectionEquality().hash(fullname) ^
      const DeepCollectionEquality().hash(created_at);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserToJson(this);
  }
}

abstract class _User implements User {
  const factory _User(
      {@HiveField(0) required int id,
      @HiveField(1) required String first_name,
      @HiveField(2) required String last_name,
      @HiveField(3) required String gender,
      @HiveField(4) required String email,
      @HiveField(5) required int type,
      @HiveField(6) required String telephone_number,
      @HiveField(7) required String dob,
      @HiveField(8) required String? image,
      @HiveField(9) required String image_filename,
      @HiveField(10) required String mask,
      @HiveField(11) required String fullname,
      @HiveField(12) required String created_at}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  String get first_name => throw _privateConstructorUsedError;
  @override
  @HiveField(2)
  String get last_name => throw _privateConstructorUsedError;
  @override
  @HiveField(3)
  String get gender => throw _privateConstructorUsedError;
  @override
  @HiveField(4)
  String get email => throw _privateConstructorUsedError;
  @override
  @HiveField(5)
  int get type => throw _privateConstructorUsedError;
  @override
  @HiveField(6)
  String get telephone_number => throw _privateConstructorUsedError;
  @override
  @HiveField(7)
  String get dob => throw _privateConstructorUsedError;
  @override
  @HiveField(8)
  String? get image => throw _privateConstructorUsedError;
  @override
  @HiveField(9)
  String get image_filename => throw _privateConstructorUsedError;
  @override
  @HiveField(10)
  String get mask => throw _privateConstructorUsedError;
  @override
  @HiveField(11)
  String get fullname => throw _privateConstructorUsedError;
  @override
  @HiveField(12)
  String get created_at => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}
