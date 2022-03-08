// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Home _$HomeFromJson(Map<String, dynamic> json) {
  return _Home.fromJson(json);
}

/// @nodoc
class _$HomeTearOff {
  const _$HomeTearOff();

  _Home call(
      {required List<YoutubeLink> youtube,
      required ChurchToday? summary,
      required List<Announcement> announcement,
      required int videos_number,
      required int events_number,
      required int activities_number,
      required YoutubeLink? featured_video,
      required int audio_number,
      required String first_name,
      required List<CounsellingGroups> counselling_groups,
      required String quotation}) {
    return _Home(
      youtube: youtube,
      summary: summary,
      announcement: announcement,
      videos_number: videos_number,
      events_number: events_number,
      activities_number: activities_number,
      featured_video: featured_video,
      audio_number: audio_number,
      first_name: first_name,
      counselling_groups: counselling_groups,
      quotation: quotation,
    );
  }

  Home fromJson(Map<String, Object> json) {
    return Home.fromJson(json);
  }
}

/// @nodoc
const $Home = _$HomeTearOff();

/// @nodoc
mixin _$Home {
// required int id,
  List<YoutubeLink> get youtube => throw _privateConstructorUsedError;
  ChurchToday? get summary => throw _privateConstructorUsedError;
  List<Announcement> get announcement => throw _privateConstructorUsedError;
  int get videos_number => throw _privateConstructorUsedError;
  int get events_number => throw _privateConstructorUsedError;
  int get activities_number => throw _privateConstructorUsedError;
  YoutubeLink? get featured_video => throw _privateConstructorUsedError;
  int get audio_number => throw _privateConstructorUsedError;
  String get first_name => throw _privateConstructorUsedError;
  List<CounsellingGroups> get counselling_groups =>
      throw _privateConstructorUsedError;
  String get quotation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeCopyWith<Home> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeCopyWith<$Res> {
  factory $HomeCopyWith(Home value, $Res Function(Home) then) =
      _$HomeCopyWithImpl<$Res>;
  $Res call(
      {List<YoutubeLink> youtube,
      ChurchToday? summary,
      List<Announcement> announcement,
      int videos_number,
      int events_number,
      int activities_number,
      YoutubeLink? featured_video,
      int audio_number,
      String first_name,
      List<CounsellingGroups> counselling_groups,
      String quotation});

  $ChurchTodayCopyWith<$Res>? get summary;
  $YoutubeLinkCopyWith<$Res>? get featured_video;
}

/// @nodoc
class _$HomeCopyWithImpl<$Res> implements $HomeCopyWith<$Res> {
  _$HomeCopyWithImpl(this._value, this._then);

  final Home _value;
  // ignore: unused_field
  final $Res Function(Home) _then;

  @override
  $Res call({
    Object? youtube = freezed,
    Object? summary = freezed,
    Object? announcement = freezed,
    Object? videos_number = freezed,
    Object? events_number = freezed,
    Object? activities_number = freezed,
    Object? featured_video = freezed,
    Object? audio_number = freezed,
    Object? first_name = freezed,
    Object? counselling_groups = freezed,
    Object? quotation = freezed,
  }) {
    return _then(_value.copyWith(
      youtube: youtube == freezed
          ? _value.youtube
          : youtube // ignore: cast_nullable_to_non_nullable
              as List<YoutubeLink>,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as ChurchToday?,
      announcement: announcement == freezed
          ? _value.announcement
          : announcement // ignore: cast_nullable_to_non_nullable
              as List<Announcement>,
      videos_number: videos_number == freezed
          ? _value.videos_number
          : videos_number // ignore: cast_nullable_to_non_nullable
              as int,
      events_number: events_number == freezed
          ? _value.events_number
          : events_number // ignore: cast_nullable_to_non_nullable
              as int,
      activities_number: activities_number == freezed
          ? _value.activities_number
          : activities_number // ignore: cast_nullable_to_non_nullable
              as int,
      featured_video: featured_video == freezed
          ? _value.featured_video
          : featured_video // ignore: cast_nullable_to_non_nullable
              as YoutubeLink?,
      audio_number: audio_number == freezed
          ? _value.audio_number
          : audio_number // ignore: cast_nullable_to_non_nullable
              as int,
      first_name: first_name == freezed
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String,
      counselling_groups: counselling_groups == freezed
          ? _value.counselling_groups
          : counselling_groups // ignore: cast_nullable_to_non_nullable
              as List<CounsellingGroups>,
      quotation: quotation == freezed
          ? _value.quotation
          : quotation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $ChurchTodayCopyWith<$Res>? get summary {
    if (_value.summary == null) {
      return null;
    }

    return $ChurchTodayCopyWith<$Res>(_value.summary!, (value) {
      return _then(_value.copyWith(summary: value));
    });
  }

  @override
  $YoutubeLinkCopyWith<$Res>? get featured_video {
    if (_value.featured_video == null) {
      return null;
    }

    return $YoutubeLinkCopyWith<$Res>(_value.featured_video!, (value) {
      return _then(_value.copyWith(featured_video: value));
    });
  }
}

/// @nodoc
abstract class _$HomeCopyWith<$Res> implements $HomeCopyWith<$Res> {
  factory _$HomeCopyWith(_Home value, $Res Function(_Home) then) =
      __$HomeCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<YoutubeLink> youtube,
      ChurchToday? summary,
      List<Announcement> announcement,
      int videos_number,
      int events_number,
      int activities_number,
      YoutubeLink? featured_video,
      int audio_number,
      String first_name,
      List<CounsellingGroups> counselling_groups,
      String quotation});

  @override
  $ChurchTodayCopyWith<$Res>? get summary;
  @override
  $YoutubeLinkCopyWith<$Res>? get featured_video;
}

/// @nodoc
class __$HomeCopyWithImpl<$Res> extends _$HomeCopyWithImpl<$Res>
    implements _$HomeCopyWith<$Res> {
  __$HomeCopyWithImpl(_Home _value, $Res Function(_Home) _then)
      : super(_value, (v) => _then(v as _Home));

  @override
  _Home get _value => super._value as _Home;

  @override
  $Res call({
    Object? youtube = freezed,
    Object? summary = freezed,
    Object? announcement = freezed,
    Object? videos_number = freezed,
    Object? events_number = freezed,
    Object? activities_number = freezed,
    Object? featured_video = freezed,
    Object? audio_number = freezed,
    Object? first_name = freezed,
    Object? counselling_groups = freezed,
    Object? quotation = freezed,
  }) {
    return _then(_Home(
      youtube: youtube == freezed
          ? _value.youtube
          : youtube // ignore: cast_nullable_to_non_nullable
              as List<YoutubeLink>,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as ChurchToday?,
      announcement: announcement == freezed
          ? _value.announcement
          : announcement // ignore: cast_nullable_to_non_nullable
              as List<Announcement>,
      videos_number: videos_number == freezed
          ? _value.videos_number
          : videos_number // ignore: cast_nullable_to_non_nullable
              as int,
      events_number: events_number == freezed
          ? _value.events_number
          : events_number // ignore: cast_nullable_to_non_nullable
              as int,
      activities_number: activities_number == freezed
          ? _value.activities_number
          : activities_number // ignore: cast_nullable_to_non_nullable
              as int,
      featured_video: featured_video == freezed
          ? _value.featured_video
          : featured_video // ignore: cast_nullable_to_non_nullable
              as YoutubeLink?,
      audio_number: audio_number == freezed
          ? _value.audio_number
          : audio_number // ignore: cast_nullable_to_non_nullable
              as int,
      first_name: first_name == freezed
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String,
      counselling_groups: counselling_groups == freezed
          ? _value.counselling_groups
          : counselling_groups // ignore: cast_nullable_to_non_nullable
              as List<CounsellingGroups>,
      quotation: quotation == freezed
          ? _value.quotation
          : quotation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Home implements _Home {
  const _$_Home(
      {required this.youtube,
      required this.summary,
      required this.announcement,
      required this.videos_number,
      required this.events_number,
      required this.activities_number,
      required this.featured_video,
      required this.audio_number,
      required this.first_name,
      required this.counselling_groups,
      required this.quotation});

  factory _$_Home.fromJson(Map<String, dynamic> json) =>
      _$_$_HomeFromJson(json);

  @override // required int id,
  final List<YoutubeLink> youtube;
  @override
  final ChurchToday? summary;
  @override
  final List<Announcement> announcement;
  @override
  final int videos_number;
  @override
  final int events_number;
  @override
  final int activities_number;
  @override
  final YoutubeLink? featured_video;
  @override
  final int audio_number;
  @override
  final String first_name;
  @override
  final List<CounsellingGroups> counselling_groups;
  @override
  final String quotation;

  @override
  String toString() {
    return 'Home(youtube: $youtube, summary: $summary, announcement: $announcement, videos_number: $videos_number, events_number: $events_number, activities_number: $activities_number, featured_video: $featured_video, audio_number: $audio_number, first_name: $first_name, counselling_groups: $counselling_groups, quotation: $quotation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Home &&
            (identical(other.youtube, youtube) ||
                const DeepCollectionEquality()
                    .equals(other.youtube, youtube)) &&
            (identical(other.summary, summary) ||
                const DeepCollectionEquality()
                    .equals(other.summary, summary)) &&
            (identical(other.announcement, announcement) ||
                const DeepCollectionEquality()
                    .equals(other.announcement, announcement)) &&
            (identical(other.videos_number, videos_number) ||
                const DeepCollectionEquality()
                    .equals(other.videos_number, videos_number)) &&
            (identical(other.events_number, events_number) ||
                const DeepCollectionEquality()
                    .equals(other.events_number, events_number)) &&
            (identical(other.activities_number, activities_number) ||
                const DeepCollectionEquality()
                    .equals(other.activities_number, activities_number)) &&
            (identical(other.featured_video, featured_video) ||
                const DeepCollectionEquality()
                    .equals(other.featured_video, featured_video)) &&
            (identical(other.audio_number, audio_number) ||
                const DeepCollectionEquality()
                    .equals(other.audio_number, audio_number)) &&
            (identical(other.first_name, first_name) ||
                const DeepCollectionEquality()
                    .equals(other.first_name, first_name)) &&
            (identical(other.counselling_groups, counselling_groups) ||
                const DeepCollectionEquality()
                    .equals(other.counselling_groups, counselling_groups)) &&
            (identical(other.quotation, quotation) ||
                const DeepCollectionEquality()
                    .equals(other.quotation, quotation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(youtube) ^
      const DeepCollectionEquality().hash(summary) ^
      const DeepCollectionEquality().hash(announcement) ^
      const DeepCollectionEquality().hash(videos_number) ^
      const DeepCollectionEquality().hash(events_number) ^
      const DeepCollectionEquality().hash(activities_number) ^
      const DeepCollectionEquality().hash(featured_video) ^
      const DeepCollectionEquality().hash(audio_number) ^
      const DeepCollectionEquality().hash(first_name) ^
      const DeepCollectionEquality().hash(counselling_groups) ^
      const DeepCollectionEquality().hash(quotation);

  @JsonKey(ignore: true)
  @override
  _$HomeCopyWith<_Home> get copyWith =>
      __$HomeCopyWithImpl<_Home>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_HomeToJson(this);
  }
}

abstract class _Home implements Home {
  const factory _Home(
      {required List<YoutubeLink> youtube,
      required ChurchToday? summary,
      required List<Announcement> announcement,
      required int videos_number,
      required int events_number,
      required int activities_number,
      required YoutubeLink? featured_video,
      required int audio_number,
      required String first_name,
      required List<CounsellingGroups> counselling_groups,
      required String quotation}) = _$_Home;

  factory _Home.fromJson(Map<String, dynamic> json) = _$_Home.fromJson;

  @override // required int id,
  List<YoutubeLink> get youtube => throw _privateConstructorUsedError;
  @override
  ChurchToday? get summary => throw _privateConstructorUsedError;
  @override
  List<Announcement> get announcement => throw _privateConstructorUsedError;
  @override
  int get videos_number => throw _privateConstructorUsedError;
  @override
  int get events_number => throw _privateConstructorUsedError;
  @override
  int get activities_number => throw _privateConstructorUsedError;
  @override
  YoutubeLink? get featured_video => throw _privateConstructorUsedError;
  @override
  int get audio_number => throw _privateConstructorUsedError;
  @override
  String get first_name => throw _privateConstructorUsedError;
  @override
  List<CounsellingGroups> get counselling_groups =>
      throw _privateConstructorUsedError;
  @override
  String get quotation => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HomeCopyWith<_Home> get copyWith => throw _privateConstructorUsedError;
}
