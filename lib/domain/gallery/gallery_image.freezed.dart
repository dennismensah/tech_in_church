// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'gallery_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GalleryImage _$GalleryImageFromJson(Map<String, dynamic> json) {
  return _GalleryImage.fromJson(json);
}

/// @nodoc
class _$GalleryImageTearOff {
  const _$GalleryImageTearOff();

  _GalleryImage call({required int id, required String image}) {
    return _GalleryImage(
      id: id,
      image: image,
    );
  }

  GalleryImage fromJson(Map<String, Object> json) {
    return GalleryImage.fromJson(json);
  }
}

/// @nodoc
const $GalleryImage = _$GalleryImageTearOff();

/// @nodoc
mixin _$GalleryImage {
  int get id => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GalleryImageCopyWith<GalleryImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GalleryImageCopyWith<$Res> {
  factory $GalleryImageCopyWith(
          GalleryImage value, $Res Function(GalleryImage) then) =
      _$GalleryImageCopyWithImpl<$Res>;
  $Res call({int id, String image});
}

/// @nodoc
class _$GalleryImageCopyWithImpl<$Res> implements $GalleryImageCopyWith<$Res> {
  _$GalleryImageCopyWithImpl(this._value, this._then);

  final GalleryImage _value;
  // ignore: unused_field
  final $Res Function(GalleryImage) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GalleryImageCopyWith<$Res>
    implements $GalleryImageCopyWith<$Res> {
  factory _$GalleryImageCopyWith(
          _GalleryImage value, $Res Function(_GalleryImage) then) =
      __$GalleryImageCopyWithImpl<$Res>;
  @override
  $Res call({int id, String image});
}

/// @nodoc
class __$GalleryImageCopyWithImpl<$Res> extends _$GalleryImageCopyWithImpl<$Res>
    implements _$GalleryImageCopyWith<$Res> {
  __$GalleryImageCopyWithImpl(
      _GalleryImage _value, $Res Function(_GalleryImage) _then)
      : super(_value, (v) => _then(v as _GalleryImage));

  @override
  _GalleryImage get _value => super._value as _GalleryImage;

  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
  }) {
    return _then(_GalleryImage(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_GalleryImage implements _GalleryImage {
  const _$_GalleryImage({required this.id, required this.image});

  factory _$_GalleryImage.fromJson(Map<String, dynamic> json) =>
      _$_$_GalleryImageFromJson(json);

  @override
  final int id;
  @override
  final String image;

  @override
  String toString() {
    return 'GalleryImage(id: $id, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GalleryImage &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(image);

  @JsonKey(ignore: true)
  @override
  _$GalleryImageCopyWith<_GalleryImage> get copyWith =>
      __$GalleryImageCopyWithImpl<_GalleryImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GalleryImageToJson(this);
  }
}

abstract class _GalleryImage implements GalleryImage {
  const factory _GalleryImage({required int id, required String image}) =
      _$_GalleryImage;

  factory _GalleryImage.fromJson(Map<String, dynamic> json) =
      _$_GalleryImage.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get image => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GalleryImageCopyWith<_GalleryImage> get copyWith =>
      throw _privateConstructorUsedError;
}
