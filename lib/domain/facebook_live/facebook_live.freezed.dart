// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'facebook_live.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FacebookLive _$FacebookLiveFromJson(Map<String, dynamic> json) {
  return _FacebookLive.fromJson(json);
}

/// @nodoc
class _$FacebookLiveTearOff {
  const _$FacebookLiveTearOff();

  _FacebookLive call(
      {required int id,
      required String title,
      required String link,
      required String creator,
      required String mask,
      required String created_at,
      required String startname}) {
    return _FacebookLive(
      id: id,
      title: title,
      link: link,
      creator: creator,
      mask: mask,
      created_at: created_at,
      startname: startname,
    );
  }

  FacebookLive fromJson(Map<String, Object> json) {
    return FacebookLive.fromJson(json);
  }
}

/// @nodoc
const $FacebookLive = _$FacebookLiveTearOff();

/// @nodoc
mixin _$FacebookLive {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  String get creator => throw _privateConstructorUsedError;
  String get mask => throw _privateConstructorUsedError;
  String get created_at => throw _privateConstructorUsedError;
  String get startname => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FacebookLiveCopyWith<FacebookLive> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacebookLiveCopyWith<$Res> {
  factory $FacebookLiveCopyWith(
          FacebookLive value, $Res Function(FacebookLive) then) =
      _$FacebookLiveCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String title,
      String link,
      String creator,
      String mask,
      String created_at,
      String startname});
}

/// @nodoc
class _$FacebookLiveCopyWithImpl<$Res> implements $FacebookLiveCopyWith<$Res> {
  _$FacebookLiveCopyWithImpl(this._value, this._then);

  final FacebookLive _value;
  // ignore: unused_field
  final $Res Function(FacebookLive) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? link = freezed,
    Object? creator = freezed,
    Object? mask = freezed,
    Object? created_at = freezed,
    Object? startname = freezed,
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
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
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
      startname: startname == freezed
          ? _value.startname
          : startname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$FacebookLiveCopyWith<$Res>
    implements $FacebookLiveCopyWith<$Res> {
  factory _$FacebookLiveCopyWith(
          _FacebookLive value, $Res Function(_FacebookLive) then) =
      __$FacebookLiveCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      String link,
      String creator,
      String mask,
      String created_at,
      String startname});
}

/// @nodoc
class __$FacebookLiveCopyWithImpl<$Res> extends _$FacebookLiveCopyWithImpl<$Res>
    implements _$FacebookLiveCopyWith<$Res> {
  __$FacebookLiveCopyWithImpl(
      _FacebookLive _value, $Res Function(_FacebookLive) _then)
      : super(_value, (v) => _then(v as _FacebookLive));

  @override
  _FacebookLive get _value => super._value as _FacebookLive;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? link = freezed,
    Object? creator = freezed,
    Object? mask = freezed,
    Object? created_at = freezed,
    Object? startname = freezed,
  }) {
    return _then(_FacebookLive(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
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
      startname: startname == freezed
          ? _value.startname
          : startname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_FacebookLive implements _FacebookLive {
  const _$_FacebookLive(
      {required this.id,
      required this.title,
      required this.link,
      required this.creator,
      required this.mask,
      required this.created_at,
      required this.startname});

  factory _$_FacebookLive.fromJson(Map<String, dynamic> json) =>
      _$_$_FacebookLiveFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String link;
  @override
  final String creator;
  @override
  final String mask;
  @override
  final String created_at;
  @override
  final String startname;

  @override
  String toString() {
    return 'FacebookLive(id: $id, title: $title, link: $link, creator: $creator, mask: $mask, created_at: $created_at, startname: $startname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FacebookLive &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.link, link) ||
                const DeepCollectionEquality().equals(other.link, link)) &&
            (identical(other.creator, creator) ||
                const DeepCollectionEquality()
                    .equals(other.creator, creator)) &&
            (identical(other.mask, mask) ||
                const DeepCollectionEquality().equals(other.mask, mask)) &&
            (identical(other.created_at, created_at) ||
                const DeepCollectionEquality()
                    .equals(other.created_at, created_at)) &&
            (identical(other.startname, startname) ||
                const DeepCollectionEquality()
                    .equals(other.startname, startname)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(link) ^
      const DeepCollectionEquality().hash(creator) ^
      const DeepCollectionEquality().hash(mask) ^
      const DeepCollectionEquality().hash(created_at) ^
      const DeepCollectionEquality().hash(startname);

  @JsonKey(ignore: true)
  @override
  _$FacebookLiveCopyWith<_FacebookLive> get copyWith =>
      __$FacebookLiveCopyWithImpl<_FacebookLive>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FacebookLiveToJson(this);
  }
}

abstract class _FacebookLive implements FacebookLive {
  const factory _FacebookLive(
      {required int id,
      required String title,
      required String link,
      required String creator,
      required String mask,
      required String created_at,
      required String startname}) = _$_FacebookLive;

  factory _FacebookLive.fromJson(Map<String, dynamic> json) =
      _$_FacebookLive.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get link => throw _privateConstructorUsedError;
  @override
  String get creator => throw _privateConstructorUsedError;
  @override
  String get mask => throw _privateConstructorUsedError;
  @override
  String get created_at => throw _privateConstructorUsedError;
  @override
  String get startname => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FacebookLiveCopyWith<_FacebookLive> get copyWith =>
      throw _privateConstructorUsedError;
}
