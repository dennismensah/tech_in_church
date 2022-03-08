// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'gallery.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Gallery _$GalleryFromJson(Map<String, dynamic> json) {
  return _Gallery.fromJson(json);
}

/// @nodoc
class _$GalleryTearOff {
  const _$GalleryTearOff();

  _Gallery call(
      {required int id,
      required String title,
      required String? description,
      required String mask,
      required String creator,
      required String thumbnail,
      required List<GalleryImage> images,
      required String created_at}) {
    return _Gallery(
      id: id,
      title: title,
      description: description,
      mask: mask,
      creator: creator,
      thumbnail: thumbnail,
      images: images,
      created_at: created_at,
    );
  }

  Gallery fromJson(Map<String, Object> json) {
    return Gallery.fromJson(json);
  }
}

/// @nodoc
const $Gallery = _$GalleryTearOff();

/// @nodoc
mixin _$Gallery {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get mask => throw _privateConstructorUsedError;
  String get creator => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  List<GalleryImage> get images => throw _privateConstructorUsedError;
  String get created_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GalleryCopyWith<Gallery> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GalleryCopyWith<$Res> {
  factory $GalleryCopyWith(Gallery value, $Res Function(Gallery) then) =
      _$GalleryCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String title,
      String? description,
      String mask,
      String creator,
      String thumbnail,
      List<GalleryImage> images,
      String created_at});
}

/// @nodoc
class _$GalleryCopyWithImpl<$Res> implements $GalleryCopyWith<$Res> {
  _$GalleryCopyWithImpl(this._value, this._then);

  final Gallery _value;
  // ignore: unused_field
  final $Res Function(Gallery) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? mask = freezed,
    Object? creator = freezed,
    Object? thumbnail = freezed,
    Object? images = freezed,
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
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      mask: mask == freezed
          ? _value.mask
          : mask // ignore: cast_nullable_to_non_nullable
              as String,
      creator: creator == freezed
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<GalleryImage>,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GalleryCopyWith<$Res> implements $GalleryCopyWith<$Res> {
  factory _$GalleryCopyWith(_Gallery value, $Res Function(_Gallery) then) =
      __$GalleryCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      String? description,
      String mask,
      String creator,
      String thumbnail,
      List<GalleryImage> images,
      String created_at});
}

/// @nodoc
class __$GalleryCopyWithImpl<$Res> extends _$GalleryCopyWithImpl<$Res>
    implements _$GalleryCopyWith<$Res> {
  __$GalleryCopyWithImpl(_Gallery _value, $Res Function(_Gallery) _then)
      : super(_value, (v) => _then(v as _Gallery));

  @override
  _Gallery get _value => super._value as _Gallery;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? mask = freezed,
    Object? creator = freezed,
    Object? thumbnail = freezed,
    Object? images = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_Gallery(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      mask: mask == freezed
          ? _value.mask
          : mask // ignore: cast_nullable_to_non_nullable
              as String,
      creator: creator == freezed
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<GalleryImage>,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Gallery implements _Gallery {
  const _$_Gallery(
      {required this.id,
      required this.title,
      required this.description,
      required this.mask,
      required this.creator,
      required this.thumbnail,
      required this.images,
      required this.created_at});

  factory _$_Gallery.fromJson(Map<String, dynamic> json) =>
      _$_$_GalleryFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String? description;
  @override
  final String mask;
  @override
  final String creator;
  @override
  final String thumbnail;
  @override
  final List<GalleryImage> images;
  @override
  final String created_at;

  @override
  String toString() {
    return 'Gallery(id: $id, title: $title, description: $description, mask: $mask, creator: $creator, thumbnail: $thumbnail, images: $images, created_at: $created_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Gallery &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.mask, mask) ||
                const DeepCollectionEquality().equals(other.mask, mask)) &&
            (identical(other.creator, creator) ||
                const DeepCollectionEquality()
                    .equals(other.creator, creator)) &&
            (identical(other.thumbnail, thumbnail) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnail, thumbnail)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.created_at, created_at) ||
                const DeepCollectionEquality()
                    .equals(other.created_at, created_at)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(mask) ^
      const DeepCollectionEquality().hash(creator) ^
      const DeepCollectionEquality().hash(thumbnail) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(created_at);

  @JsonKey(ignore: true)
  @override
  _$GalleryCopyWith<_Gallery> get copyWith =>
      __$GalleryCopyWithImpl<_Gallery>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GalleryToJson(this);
  }
}

abstract class _Gallery implements Gallery {
  const factory _Gallery(
      {required int id,
      required String title,
      required String? description,
      required String mask,
      required String creator,
      required String thumbnail,
      required List<GalleryImage> images,
      required String created_at}) = _$_Gallery;

  factory _Gallery.fromJson(Map<String, dynamic> json) = _$_Gallery.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  String get mask => throw _privateConstructorUsedError;
  @override
  String get creator => throw _privateConstructorUsedError;
  @override
  String get thumbnail => throw _privateConstructorUsedError;
  @override
  List<GalleryImage> get images => throw _privateConstructorUsedError;
  @override
  String get created_at => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GalleryCopyWith<_Gallery> get copyWith =>
      throw _privateConstructorUsedError;
}
