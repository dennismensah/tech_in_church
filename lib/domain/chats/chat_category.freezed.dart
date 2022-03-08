// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'chat_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatCategory _$ChatCategoryFromJson(Map<String, dynamic> json) {
  return _ChatCategory.fromJson(json);
}

/// @nodoc
class _$ChatCategoryTearOff {
  const _$ChatCategoryTearOff();

  _ChatCategory call(
      {required int id,
      required String title,
      required String mask,
      required List<Counsellor> counsellors}) {
    return _ChatCategory(
      id: id,
      title: title,
      mask: mask,
      counsellors: counsellors,
    );
  }

  ChatCategory fromJson(Map<String, Object> json) {
    return ChatCategory.fromJson(json);
  }
}

/// @nodoc
const $ChatCategory = _$ChatCategoryTearOff();

/// @nodoc
mixin _$ChatCategory {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get mask => throw _privateConstructorUsedError;
  List<Counsellor> get counsellors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatCategoryCopyWith<ChatCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatCategoryCopyWith<$Res> {
  factory $ChatCategoryCopyWith(
          ChatCategory value, $Res Function(ChatCategory) then) =
      _$ChatCategoryCopyWithImpl<$Res>;
  $Res call({int id, String title, String mask, List<Counsellor> counsellors});
}

/// @nodoc
class _$ChatCategoryCopyWithImpl<$Res> implements $ChatCategoryCopyWith<$Res> {
  _$ChatCategoryCopyWithImpl(this._value, this._then);

  final ChatCategory _value;
  // ignore: unused_field
  final $Res Function(ChatCategory) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? mask = freezed,
    Object? counsellors = freezed,
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
      mask: mask == freezed
          ? _value.mask
          : mask // ignore: cast_nullable_to_non_nullable
              as String,
      counsellors: counsellors == freezed
          ? _value.counsellors
          : counsellors // ignore: cast_nullable_to_non_nullable
              as List<Counsellor>,
    ));
  }
}

/// @nodoc
abstract class _$ChatCategoryCopyWith<$Res>
    implements $ChatCategoryCopyWith<$Res> {
  factory _$ChatCategoryCopyWith(
          _ChatCategory value, $Res Function(_ChatCategory) then) =
      __$ChatCategoryCopyWithImpl<$Res>;
  @override
  $Res call({int id, String title, String mask, List<Counsellor> counsellors});
}

/// @nodoc
class __$ChatCategoryCopyWithImpl<$Res> extends _$ChatCategoryCopyWithImpl<$Res>
    implements _$ChatCategoryCopyWith<$Res> {
  __$ChatCategoryCopyWithImpl(
      _ChatCategory _value, $Res Function(_ChatCategory) _then)
      : super(_value, (v) => _then(v as _ChatCategory));

  @override
  _ChatCategory get _value => super._value as _ChatCategory;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? mask = freezed,
    Object? counsellors = freezed,
  }) {
    return _then(_ChatCategory(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      mask: mask == freezed
          ? _value.mask
          : mask // ignore: cast_nullable_to_non_nullable
              as String,
      counsellors: counsellors == freezed
          ? _value.counsellors
          : counsellors // ignore: cast_nullable_to_non_nullable
              as List<Counsellor>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ChatCategory implements _ChatCategory {
  const _$_ChatCategory(
      {required this.id,
      required this.title,
      required this.mask,
      required this.counsellors});

  factory _$_ChatCategory.fromJson(Map<String, dynamic> json) =>
      _$_$_ChatCategoryFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String mask;
  @override
  final List<Counsellor> counsellors;

  @override
  String toString() {
    return 'ChatCategory(id: $id, title: $title, mask: $mask, counsellors: $counsellors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChatCategory &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.mask, mask) ||
                const DeepCollectionEquality().equals(other.mask, mask)) &&
            (identical(other.counsellors, counsellors) ||
                const DeepCollectionEquality()
                    .equals(other.counsellors, counsellors)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(mask) ^
      const DeepCollectionEquality().hash(counsellors);

  @JsonKey(ignore: true)
  @override
  _$ChatCategoryCopyWith<_ChatCategory> get copyWith =>
      __$ChatCategoryCopyWithImpl<_ChatCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ChatCategoryToJson(this);
  }
}

abstract class _ChatCategory implements ChatCategory {
  const factory _ChatCategory(
      {required int id,
      required String title,
      required String mask,
      required List<Counsellor> counsellors}) = _$_ChatCategory;

  factory _ChatCategory.fromJson(Map<String, dynamic> json) =
      _$_ChatCategory.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get mask => throw _privateConstructorUsedError;
  @override
  List<Counsellor> get counsellors => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChatCategoryCopyWith<_ChatCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
