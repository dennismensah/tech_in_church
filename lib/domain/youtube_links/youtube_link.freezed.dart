// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'youtube_link.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

YoutubeLink _$YoutubeLinkFromJson(Map<String, dynamic> json) {
  return _YoutubeLink.fromJson(json);
}

/// @nodoc
class _$YoutubeLinkTearOff {
  const _$YoutubeLinkTearOff();

  _YoutubeLink call(
      {required int id,
      required String title,
      required String link,
      required String startname,
      required String mask,
      required String created_at,
      required String creator}) {
    return _YoutubeLink(
      id: id,
      title: title,
      link: link,
      startname: startname,
      mask: mask,
      created_at: created_at,
      creator: creator,
    );
  }

  YoutubeLink fromJson(Map<String, Object> json) {
    return YoutubeLink.fromJson(json);
  }
}

/// @nodoc
const $YoutubeLink = _$YoutubeLinkTearOff();

/// @nodoc
mixin _$YoutubeLink {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  String get startname => throw _privateConstructorUsedError;
  String get mask => throw _privateConstructorUsedError;
  String get created_at => throw _privateConstructorUsedError;
  String get creator => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $YoutubeLinkCopyWith<YoutubeLink> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YoutubeLinkCopyWith<$Res> {
  factory $YoutubeLinkCopyWith(
          YoutubeLink value, $Res Function(YoutubeLink) then) =
      _$YoutubeLinkCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String title,
      String link,
      String startname,
      String mask,
      String created_at,
      String creator});
}

/// @nodoc
class _$YoutubeLinkCopyWithImpl<$Res> implements $YoutubeLinkCopyWith<$Res> {
  _$YoutubeLinkCopyWithImpl(this._value, this._then);

  final YoutubeLink _value;
  // ignore: unused_field
  final $Res Function(YoutubeLink) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? link = freezed,
    Object? startname = freezed,
    Object? mask = freezed,
    Object? created_at = freezed,
    Object? creator = freezed,
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
      startname: startname == freezed
          ? _value.startname
          : startname // ignore: cast_nullable_to_non_nullable
              as String,
      mask: mask == freezed
          ? _value.mask
          : mask // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      creator: creator == freezed
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$YoutubeLinkCopyWith<$Res>
    implements $YoutubeLinkCopyWith<$Res> {
  factory _$YoutubeLinkCopyWith(
          _YoutubeLink value, $Res Function(_YoutubeLink) then) =
      __$YoutubeLinkCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      String link,
      String startname,
      String mask,
      String created_at,
      String creator});
}

/// @nodoc
class __$YoutubeLinkCopyWithImpl<$Res> extends _$YoutubeLinkCopyWithImpl<$Res>
    implements _$YoutubeLinkCopyWith<$Res> {
  __$YoutubeLinkCopyWithImpl(
      _YoutubeLink _value, $Res Function(_YoutubeLink) _then)
      : super(_value, (v) => _then(v as _YoutubeLink));

  @override
  _YoutubeLink get _value => super._value as _YoutubeLink;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? link = freezed,
    Object? startname = freezed,
    Object? mask = freezed,
    Object? created_at = freezed,
    Object? creator = freezed,
  }) {
    return _then(_YoutubeLink(
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
      startname: startname == freezed
          ? _value.startname
          : startname // ignore: cast_nullable_to_non_nullable
              as String,
      mask: mask == freezed
          ? _value.mask
          : mask // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      creator: creator == freezed
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_YoutubeLink implements _YoutubeLink {
  const _$_YoutubeLink(
      {required this.id,
      required this.title,
      required this.link,
      required this.startname,
      required this.mask,
      required this.created_at,
      required this.creator});

  factory _$_YoutubeLink.fromJson(Map<String, dynamic> json) =>
      _$_$_YoutubeLinkFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String link;
  @override
  final String startname;
  @override
  final String mask;
  @override
  final String created_at;
  @override
  final String creator;

  @override
  String toString() {
    return 'YoutubeLink(id: $id, title: $title, link: $link, startname: $startname, mask: $mask, created_at: $created_at, creator: $creator)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _YoutubeLink &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.link, link) ||
                const DeepCollectionEquality().equals(other.link, link)) &&
            (identical(other.startname, startname) ||
                const DeepCollectionEquality()
                    .equals(other.startname, startname)) &&
            (identical(other.mask, mask) ||
                const DeepCollectionEquality().equals(other.mask, mask)) &&
            (identical(other.created_at, created_at) ||
                const DeepCollectionEquality()
                    .equals(other.created_at, created_at)) &&
            (identical(other.creator, creator) ||
                const DeepCollectionEquality().equals(other.creator, creator)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(link) ^
      const DeepCollectionEquality().hash(startname) ^
      const DeepCollectionEquality().hash(mask) ^
      const DeepCollectionEquality().hash(created_at) ^
      const DeepCollectionEquality().hash(creator);

  @JsonKey(ignore: true)
  @override
  _$YoutubeLinkCopyWith<_YoutubeLink> get copyWith =>
      __$YoutubeLinkCopyWithImpl<_YoutubeLink>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_YoutubeLinkToJson(this);
  }
}

abstract class _YoutubeLink implements YoutubeLink {
  const factory _YoutubeLink(
      {required int id,
      required String title,
      required String link,
      required String startname,
      required String mask,
      required String created_at,
      required String creator}) = _$_YoutubeLink;

  factory _YoutubeLink.fromJson(Map<String, dynamic> json) =
      _$_YoutubeLink.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get link => throw _privateConstructorUsedError;
  @override
  String get startname => throw _privateConstructorUsedError;
  @override
  String get mask => throw _privateConstructorUsedError;
  @override
  String get created_at => throw _privateConstructorUsedError;
  @override
  String get creator => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$YoutubeLinkCopyWith<_YoutubeLink> get copyWith =>
      throw _privateConstructorUsedError;
}
