// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'bible_chapter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BibleChapterEventTearOff {
  const _$BibleChapterEventTearOff();

  BibleChapterFetched bibleChapterFetched(String searchStr) {
    return BibleChapterFetched(
      searchStr,
    );
  }
}

/// @nodoc
const $BibleChapterEvent = _$BibleChapterEventTearOff();

/// @nodoc
mixin _$BibleChapterEvent {
  String get searchStr => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchStr) bibleChapterFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchStr)? bibleChapterFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BibleChapterFetched value) bibleChapterFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BibleChapterFetched value)? bibleChapterFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BibleChapterEventCopyWith<BibleChapterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BibleChapterEventCopyWith<$Res> {
  factory $BibleChapterEventCopyWith(
          BibleChapterEvent value, $Res Function(BibleChapterEvent) then) =
      _$BibleChapterEventCopyWithImpl<$Res>;
  $Res call({String searchStr});
}

/// @nodoc
class _$BibleChapterEventCopyWithImpl<$Res>
    implements $BibleChapterEventCopyWith<$Res> {
  _$BibleChapterEventCopyWithImpl(this._value, this._then);

  final BibleChapterEvent _value;
  // ignore: unused_field
  final $Res Function(BibleChapterEvent) _then;

  @override
  $Res call({
    Object? searchStr = freezed,
  }) {
    return _then(_value.copyWith(
      searchStr: searchStr == freezed
          ? _value.searchStr
          : searchStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $BibleChapterFetchedCopyWith<$Res>
    implements $BibleChapterEventCopyWith<$Res> {
  factory $BibleChapterFetchedCopyWith(
          BibleChapterFetched value, $Res Function(BibleChapterFetched) then) =
      _$BibleChapterFetchedCopyWithImpl<$Res>;
  @override
  $Res call({String searchStr});
}

/// @nodoc
class _$BibleChapterFetchedCopyWithImpl<$Res>
    extends _$BibleChapterEventCopyWithImpl<$Res>
    implements $BibleChapterFetchedCopyWith<$Res> {
  _$BibleChapterFetchedCopyWithImpl(
      BibleChapterFetched _value, $Res Function(BibleChapterFetched) _then)
      : super(_value, (v) => _then(v as BibleChapterFetched));

  @override
  BibleChapterFetched get _value => super._value as BibleChapterFetched;

  @override
  $Res call({
    Object? searchStr = freezed,
  }) {
    return _then(BibleChapterFetched(
      searchStr == freezed
          ? _value.searchStr
          : searchStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$BibleChapterFetched implements BibleChapterFetched {
  const _$BibleChapterFetched(this.searchStr);

  @override
  final String searchStr;

  @override
  String toString() {
    return 'BibleChapterEvent.bibleChapterFetched(searchStr: $searchStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BibleChapterFetched &&
            (identical(other.searchStr, searchStr) ||
                const DeepCollectionEquality()
                    .equals(other.searchStr, searchStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(searchStr);

  @JsonKey(ignore: true)
  @override
  $BibleChapterFetchedCopyWith<BibleChapterFetched> get copyWith =>
      _$BibleChapterFetchedCopyWithImpl<BibleChapterFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchStr) bibleChapterFetched,
  }) {
    return bibleChapterFetched(searchStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchStr)? bibleChapterFetched,
    required TResult orElse(),
  }) {
    if (bibleChapterFetched != null) {
      return bibleChapterFetched(searchStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BibleChapterFetched value) bibleChapterFetched,
  }) {
    return bibleChapterFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BibleChapterFetched value)? bibleChapterFetched,
    required TResult orElse(),
  }) {
    if (bibleChapterFetched != null) {
      return bibleChapterFetched(this);
    }
    return orElse();
  }
}

abstract class BibleChapterFetched implements BibleChapterEvent {
  const factory BibleChapterFetched(String searchStr) = _$BibleChapterFetched;

  @override
  String get searchStr => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $BibleChapterFetchedCopyWith<BibleChapterFetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$BibleChapterStateTearOff {
  const _$BibleChapterStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loading loading() {
    return const Loading();
  }

  LoadedSuccessfully loadedSuccessfully(BibleChapter bibleverses) {
    return LoadedSuccessfully(
      bibleverses,
    );
  }

  LoadedUnsuccessfully loadedUnSuccessfully() {
    return const LoadedUnsuccessfully();
  }
}

/// @nodoc
const $BibleChapterState = _$BibleChapterStateTearOff();

/// @nodoc
mixin _$BibleChapterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BibleChapter bibleverses) loadedSuccessfully,
    required TResult Function() loadedUnSuccessfully,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BibleChapter bibleverses)? loadedSuccessfully,
    TResult Function()? loadedUnSuccessfully,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(LoadedSuccessfully value) loadedSuccessfully,
    required TResult Function(LoadedUnsuccessfully value) loadedUnSuccessfully,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoadedSuccessfully value)? loadedSuccessfully,
    TResult Function(LoadedUnsuccessfully value)? loadedUnSuccessfully,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BibleChapterStateCopyWith<$Res> {
  factory $BibleChapterStateCopyWith(
          BibleChapterState value, $Res Function(BibleChapterState) then) =
      _$BibleChapterStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$BibleChapterStateCopyWithImpl<$Res>
    implements $BibleChapterStateCopyWith<$Res> {
  _$BibleChapterStateCopyWithImpl(this._value, this._then);

  final BibleChapterState _value;
  // ignore: unused_field
  final $Res Function(BibleChapterState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$BibleChapterStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc
class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'BibleChapterState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BibleChapter bibleverses) loadedSuccessfully,
    required TResult Function() loadedUnSuccessfully,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BibleChapter bibleverses)? loadedSuccessfully,
    TResult Function()? loadedUnSuccessfully,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(LoadedSuccessfully value) loadedSuccessfully,
    required TResult Function(LoadedUnsuccessfully value) loadedUnSuccessfully,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoadedSuccessfully value)? loadedSuccessfully,
    TResult Function(LoadedUnsuccessfully value)? loadedUnSuccessfully,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements BibleChapterState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$BibleChapterStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc
class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'BibleChapterState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BibleChapter bibleverses) loadedSuccessfully,
    required TResult Function() loadedUnSuccessfully,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BibleChapter bibleverses)? loadedSuccessfully,
    TResult Function()? loadedUnSuccessfully,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(LoadedSuccessfully value) loadedSuccessfully,
    required TResult Function(LoadedUnsuccessfully value) loadedUnSuccessfully,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoadedSuccessfully value)? loadedSuccessfully,
    TResult Function(LoadedUnsuccessfully value)? loadedUnSuccessfully,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements BibleChapterState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $LoadedSuccessfullyCopyWith<$Res> {
  factory $LoadedSuccessfullyCopyWith(
          LoadedSuccessfully value, $Res Function(LoadedSuccessfully) then) =
      _$LoadedSuccessfullyCopyWithImpl<$Res>;
  $Res call({BibleChapter bibleverses});

  $BibleChapterCopyWith<$Res> get bibleverses;
}

/// @nodoc
class _$LoadedSuccessfullyCopyWithImpl<$Res>
    extends _$BibleChapterStateCopyWithImpl<$Res>
    implements $LoadedSuccessfullyCopyWith<$Res> {
  _$LoadedSuccessfullyCopyWithImpl(
      LoadedSuccessfully _value, $Res Function(LoadedSuccessfully) _then)
      : super(_value, (v) => _then(v as LoadedSuccessfully));

  @override
  LoadedSuccessfully get _value => super._value as LoadedSuccessfully;

  @override
  $Res call({
    Object? bibleverses = freezed,
  }) {
    return _then(LoadedSuccessfully(
      bibleverses == freezed
          ? _value.bibleverses
          : bibleverses // ignore: cast_nullable_to_non_nullable
              as BibleChapter,
    ));
  }

  @override
  $BibleChapterCopyWith<$Res> get bibleverses {
    return $BibleChapterCopyWith<$Res>(_value.bibleverses, (value) {
      return _then(_value.copyWith(bibleverses: value));
    });
  }
}

/// @nodoc
class _$LoadedSuccessfully implements LoadedSuccessfully {
  const _$LoadedSuccessfully(this.bibleverses);

  @override
  final BibleChapter bibleverses;

  @override
  String toString() {
    return 'BibleChapterState.loadedSuccessfully(bibleverses: $bibleverses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadedSuccessfully &&
            (identical(other.bibleverses, bibleverses) ||
                const DeepCollectionEquality()
                    .equals(other.bibleverses, bibleverses)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bibleverses);

  @JsonKey(ignore: true)
  @override
  $LoadedSuccessfullyCopyWith<LoadedSuccessfully> get copyWith =>
      _$LoadedSuccessfullyCopyWithImpl<LoadedSuccessfully>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BibleChapter bibleverses) loadedSuccessfully,
    required TResult Function() loadedUnSuccessfully,
  }) {
    return loadedSuccessfully(bibleverses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BibleChapter bibleverses)? loadedSuccessfully,
    TResult Function()? loadedUnSuccessfully,
    required TResult orElse(),
  }) {
    if (loadedSuccessfully != null) {
      return loadedSuccessfully(bibleverses);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(LoadedSuccessfully value) loadedSuccessfully,
    required TResult Function(LoadedUnsuccessfully value) loadedUnSuccessfully,
  }) {
    return loadedSuccessfully(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoadedSuccessfully value)? loadedSuccessfully,
    TResult Function(LoadedUnsuccessfully value)? loadedUnSuccessfully,
    required TResult orElse(),
  }) {
    if (loadedSuccessfully != null) {
      return loadedSuccessfully(this);
    }
    return orElse();
  }
}

abstract class LoadedSuccessfully implements BibleChapterState {
  const factory LoadedSuccessfully(BibleChapter bibleverses) =
      _$LoadedSuccessfully;

  BibleChapter get bibleverses => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedSuccessfullyCopyWith<LoadedSuccessfully> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadedUnsuccessfullyCopyWith<$Res> {
  factory $LoadedUnsuccessfullyCopyWith(LoadedUnsuccessfully value,
          $Res Function(LoadedUnsuccessfully) then) =
      _$LoadedUnsuccessfullyCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadedUnsuccessfullyCopyWithImpl<$Res>
    extends _$BibleChapterStateCopyWithImpl<$Res>
    implements $LoadedUnsuccessfullyCopyWith<$Res> {
  _$LoadedUnsuccessfullyCopyWithImpl(
      LoadedUnsuccessfully _value, $Res Function(LoadedUnsuccessfully) _then)
      : super(_value, (v) => _then(v as LoadedUnsuccessfully));

  @override
  LoadedUnsuccessfully get _value => super._value as LoadedUnsuccessfully;
}

/// @nodoc
class _$LoadedUnsuccessfully implements LoadedUnsuccessfully {
  const _$LoadedUnsuccessfully();

  @override
  String toString() {
    return 'BibleChapterState.loadedUnSuccessfully()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadedUnsuccessfully);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BibleChapter bibleverses) loadedSuccessfully,
    required TResult Function() loadedUnSuccessfully,
  }) {
    return loadedUnSuccessfully();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BibleChapter bibleverses)? loadedSuccessfully,
    TResult Function()? loadedUnSuccessfully,
    required TResult orElse(),
  }) {
    if (loadedUnSuccessfully != null) {
      return loadedUnSuccessfully();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(LoadedSuccessfully value) loadedSuccessfully,
    required TResult Function(LoadedUnsuccessfully value) loadedUnSuccessfully,
  }) {
    return loadedUnSuccessfully(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoadedSuccessfully value)? loadedSuccessfully,
    TResult Function(LoadedUnsuccessfully value)? loadedUnSuccessfully,
    required TResult orElse(),
  }) {
    if (loadedUnSuccessfully != null) {
      return loadedUnSuccessfully(this);
    }
    return orElse();
  }
}

abstract class LoadedUnsuccessfully implements BibleChapterState {
  const factory LoadedUnsuccessfully() = _$LoadedUnsuccessfully;
}
