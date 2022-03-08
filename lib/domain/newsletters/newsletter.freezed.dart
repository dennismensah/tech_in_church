// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'newsletter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Newsletter _$NewsletterFromJson(Map<String, dynamic> json) {
  return _Newsletter.fromJson(json);
}

/// @nodoc
class _$NewsletterTearOff {
  const _$NewsletterTearOff();

  _Newsletter call(
      {required int id,
      required String title,
      required String message,
      required String creator,
      required String mask,
      required String created_at}) {
    return _Newsletter(
      id: id,
      title: title,
      message: message,
      creator: creator,
      mask: mask,
      created_at: created_at,
    );
  }

  Newsletter fromJson(Map<String, Object> json) {
    return Newsletter.fromJson(json);
  }
}

/// @nodoc
const $Newsletter = _$NewsletterTearOff();

/// @nodoc
mixin _$Newsletter {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get creator => throw _privateConstructorUsedError;
  String get mask => throw _privateConstructorUsedError;
  String get created_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsletterCopyWith<Newsletter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsletterCopyWith<$Res> {
  factory $NewsletterCopyWith(
          Newsletter value, $Res Function(Newsletter) then) =
      _$NewsletterCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String title,
      String message,
      String creator,
      String mask,
      String created_at});
}

/// @nodoc
class _$NewsletterCopyWithImpl<$Res> implements $NewsletterCopyWith<$Res> {
  _$NewsletterCopyWithImpl(this._value, this._then);

  final Newsletter _value;
  // ignore: unused_field
  final $Res Function(Newsletter) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? message = freezed,
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
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
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
abstract class _$NewsletterCopyWith<$Res> implements $NewsletterCopyWith<$Res> {
  factory _$NewsletterCopyWith(
          _Newsletter value, $Res Function(_Newsletter) then) =
      __$NewsletterCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      String message,
      String creator,
      String mask,
      String created_at});
}

/// @nodoc
class __$NewsletterCopyWithImpl<$Res> extends _$NewsletterCopyWithImpl<$Res>
    implements _$NewsletterCopyWith<$Res> {
  __$NewsletterCopyWithImpl(
      _Newsletter _value, $Res Function(_Newsletter) _then)
      : super(_value, (v) => _then(v as _Newsletter));

  @override
  _Newsletter get _value => super._value as _Newsletter;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? message = freezed,
    Object? creator = freezed,
    Object? mask = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_Newsletter(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
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
class _$_Newsletter implements _Newsletter {
  const _$_Newsletter(
      {required this.id,
      required this.title,
      required this.message,
      required this.creator,
      required this.mask,
      required this.created_at});

  factory _$_Newsletter.fromJson(Map<String, dynamic> json) =>
      _$_$_NewsletterFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String message;
  @override
  final String creator;
  @override
  final String mask;
  @override
  final String created_at;

  @override
  String toString() {
    return 'Newsletter(id: $id, title: $title, message: $message, creator: $creator, mask: $mask, created_at: $created_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Newsletter &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
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
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(creator) ^
      const DeepCollectionEquality().hash(mask) ^
      const DeepCollectionEquality().hash(created_at);

  @JsonKey(ignore: true)
  @override
  _$NewsletterCopyWith<_Newsletter> get copyWith =>
      __$NewsletterCopyWithImpl<_Newsletter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NewsletterToJson(this);
  }
}

abstract class _Newsletter implements Newsletter {
  const factory _Newsletter(
      {required int id,
      required String title,
      required String message,
      required String creator,
      required String mask,
      required String created_at}) = _$_Newsletter;

  factory _Newsletter.fromJson(Map<String, dynamic> json) =
      _$_Newsletter.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  String get creator => throw _privateConstructorUsedError;
  @override
  String get mask => throw _privateConstructorUsedError;
  @override
  String get created_at => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NewsletterCopyWith<_Newsletter> get copyWith =>
      throw _privateConstructorUsedError;
}
