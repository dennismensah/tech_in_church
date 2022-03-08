// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'poll.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Poll _$PollFromJson(Map<String, dynamic> json) {
  return _Poll.fromJson(json);
}

/// @nodoc
class _$PollTearOff {
  const _$PollTearOff();

  _Poll call(
      {required int id,
      required String title,
      required String question,
      required String end_time,
      required String startname,
      required String creator,
      required List<PollResult> results,
      required String mask,
      required String created_at,
      required int voted}) {
    return _Poll(
      id: id,
      title: title,
      question: question,
      end_time: end_time,
      startname: startname,
      creator: creator,
      results: results,
      mask: mask,
      created_at: created_at,
      voted: voted,
    );
  }

  Poll fromJson(Map<String, Object> json) {
    return Poll.fromJson(json);
  }
}

/// @nodoc
const $Poll = _$PollTearOff();

/// @nodoc
mixin _$Poll {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  String get end_time => throw _privateConstructorUsedError;
  String get startname => throw _privateConstructorUsedError;
  String get creator =>
      throw _privateConstructorUsedError; // required List<Map>  mobileoptions,
  List<PollResult> get results => throw _privateConstructorUsedError;
  String get mask => throw _privateConstructorUsedError;
  String get created_at => throw _privateConstructorUsedError;
  int get voted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PollCopyWith<Poll> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PollCopyWith<$Res> {
  factory $PollCopyWith(Poll value, $Res Function(Poll) then) =
      _$PollCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String title,
      String question,
      String end_time,
      String startname,
      String creator,
      List<PollResult> results,
      String mask,
      String created_at,
      int voted});
}

/// @nodoc
class _$PollCopyWithImpl<$Res> implements $PollCopyWith<$Res> {
  _$PollCopyWithImpl(this._value, this._then);

  final Poll _value;
  // ignore: unused_field
  final $Res Function(Poll) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? question = freezed,
    Object? end_time = freezed,
    Object? startname = freezed,
    Object? creator = freezed,
    Object? results = freezed,
    Object? mask = freezed,
    Object? created_at = freezed,
    Object? voted = freezed,
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
      question: question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      end_time: end_time == freezed
          ? _value.end_time
          : end_time // ignore: cast_nullable_to_non_nullable
              as String,
      startname: startname == freezed
          ? _value.startname
          : startname // ignore: cast_nullable_to_non_nullable
              as String,
      creator: creator == freezed
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as String,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PollResult>,
      mask: mask == freezed
          ? _value.mask
          : mask // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      voted: voted == freezed
          ? _value.voted
          : voted // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$PollCopyWith<$Res> implements $PollCopyWith<$Res> {
  factory _$PollCopyWith(_Poll value, $Res Function(_Poll) then) =
      __$PollCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      String question,
      String end_time,
      String startname,
      String creator,
      List<PollResult> results,
      String mask,
      String created_at,
      int voted});
}

/// @nodoc
class __$PollCopyWithImpl<$Res> extends _$PollCopyWithImpl<$Res>
    implements _$PollCopyWith<$Res> {
  __$PollCopyWithImpl(_Poll _value, $Res Function(_Poll) _then)
      : super(_value, (v) => _then(v as _Poll));

  @override
  _Poll get _value => super._value as _Poll;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? question = freezed,
    Object? end_time = freezed,
    Object? startname = freezed,
    Object? creator = freezed,
    Object? results = freezed,
    Object? mask = freezed,
    Object? created_at = freezed,
    Object? voted = freezed,
  }) {
    return _then(_Poll(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      question: question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      end_time: end_time == freezed
          ? _value.end_time
          : end_time // ignore: cast_nullable_to_non_nullable
              as String,
      startname: startname == freezed
          ? _value.startname
          : startname // ignore: cast_nullable_to_non_nullable
              as String,
      creator: creator == freezed
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as String,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PollResult>,
      mask: mask == freezed
          ? _value.mask
          : mask // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      voted: voted == freezed
          ? _value.voted
          : voted // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Poll implements _Poll {
  const _$_Poll(
      {required this.id,
      required this.title,
      required this.question,
      required this.end_time,
      required this.startname,
      required this.creator,
      required this.results,
      required this.mask,
      required this.created_at,
      required this.voted});

  factory _$_Poll.fromJson(Map<String, dynamic> json) =>
      _$_$_PollFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String question;
  @override
  final String end_time;
  @override
  final String startname;
  @override
  final String creator;
  @override // required List<Map>  mobileoptions,
  final List<PollResult> results;
  @override
  final String mask;
  @override
  final String created_at;
  @override
  final int voted;

  @override
  String toString() {
    return 'Poll(id: $id, title: $title, question: $question, end_time: $end_time, startname: $startname, creator: $creator, results: $results, mask: $mask, created_at: $created_at, voted: $voted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Poll &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.question, question) ||
                const DeepCollectionEquality()
                    .equals(other.question, question)) &&
            (identical(other.end_time, end_time) ||
                const DeepCollectionEquality()
                    .equals(other.end_time, end_time)) &&
            (identical(other.startname, startname) ||
                const DeepCollectionEquality()
                    .equals(other.startname, startname)) &&
            (identical(other.creator, creator) ||
                const DeepCollectionEquality()
                    .equals(other.creator, creator)) &&
            (identical(other.results, results) ||
                const DeepCollectionEquality()
                    .equals(other.results, results)) &&
            (identical(other.mask, mask) ||
                const DeepCollectionEquality().equals(other.mask, mask)) &&
            (identical(other.created_at, created_at) ||
                const DeepCollectionEquality()
                    .equals(other.created_at, created_at)) &&
            (identical(other.voted, voted) ||
                const DeepCollectionEquality().equals(other.voted, voted)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(question) ^
      const DeepCollectionEquality().hash(end_time) ^
      const DeepCollectionEquality().hash(startname) ^
      const DeepCollectionEquality().hash(creator) ^
      const DeepCollectionEquality().hash(results) ^
      const DeepCollectionEquality().hash(mask) ^
      const DeepCollectionEquality().hash(created_at) ^
      const DeepCollectionEquality().hash(voted);

  @JsonKey(ignore: true)
  @override
  _$PollCopyWith<_Poll> get copyWith =>
      __$PollCopyWithImpl<_Poll>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PollToJson(this);
  }
}

abstract class _Poll implements Poll {
  const factory _Poll(
      {required int id,
      required String title,
      required String question,
      required String end_time,
      required String startname,
      required String creator,
      required List<PollResult> results,
      required String mask,
      required String created_at,
      required int voted}) = _$_Poll;

  factory _Poll.fromJson(Map<String, dynamic> json) = _$_Poll.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get question => throw _privateConstructorUsedError;
  @override
  String get end_time => throw _privateConstructorUsedError;
  @override
  String get startname => throw _privateConstructorUsedError;
  @override
  String get creator => throw _privateConstructorUsedError;
  @override // required List<Map>  mobileoptions,
  List<PollResult> get results => throw _privateConstructorUsedError;
  @override
  String get mask => throw _privateConstructorUsedError;
  @override
  String get created_at => throw _privateConstructorUsedError;
  @override
  int get voted => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PollCopyWith<_Poll> get copyWith => throw _privateConstructorUsedError;
}
