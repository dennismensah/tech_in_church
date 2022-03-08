// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'counsellor_chatee_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CounsellorChateeEventTearOff {
  const _$CounsellorChateeEventTearOff();

  CounsellorChatsFetched counsellorChatsFetched() {
    return const CounsellorChatsFetched();
  }
}

/// @nodoc
const $CounsellorChateeEvent = _$CounsellorChateeEventTearOff();

/// @nodoc
mixin _$CounsellorChateeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() counsellorChatsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? counsellorChatsFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CounsellorChatsFetched value)
        counsellorChatsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CounsellorChatsFetched value)? counsellorChatsFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounsellorChateeEventCopyWith<$Res> {
  factory $CounsellorChateeEventCopyWith(CounsellorChateeEvent value,
          $Res Function(CounsellorChateeEvent) then) =
      _$CounsellorChateeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CounsellorChateeEventCopyWithImpl<$Res>
    implements $CounsellorChateeEventCopyWith<$Res> {
  _$CounsellorChateeEventCopyWithImpl(this._value, this._then);

  final CounsellorChateeEvent _value;
  // ignore: unused_field
  final $Res Function(CounsellorChateeEvent) _then;
}

/// @nodoc
abstract class $CounsellorChatsFetchedCopyWith<$Res> {
  factory $CounsellorChatsFetchedCopyWith(CounsellorChatsFetched value,
          $Res Function(CounsellorChatsFetched) then) =
      _$CounsellorChatsFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class _$CounsellorChatsFetchedCopyWithImpl<$Res>
    extends _$CounsellorChateeEventCopyWithImpl<$Res>
    implements $CounsellorChatsFetchedCopyWith<$Res> {
  _$CounsellorChatsFetchedCopyWithImpl(CounsellorChatsFetched _value,
      $Res Function(CounsellorChatsFetched) _then)
      : super(_value, (v) => _then(v as CounsellorChatsFetched));

  @override
  CounsellorChatsFetched get _value => super._value as CounsellorChatsFetched;
}

/// @nodoc
class _$CounsellorChatsFetched implements CounsellorChatsFetched {
  const _$CounsellorChatsFetched();

  @override
  String toString() {
    return 'CounsellorChateeEvent.counsellorChatsFetched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CounsellorChatsFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() counsellorChatsFetched,
  }) {
    return counsellorChatsFetched();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? counsellorChatsFetched,
    required TResult orElse(),
  }) {
    if (counsellorChatsFetched != null) {
      return counsellorChatsFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CounsellorChatsFetched value)
        counsellorChatsFetched,
  }) {
    return counsellorChatsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CounsellorChatsFetched value)? counsellorChatsFetched,
    required TResult orElse(),
  }) {
    if (counsellorChatsFetched != null) {
      return counsellorChatsFetched(this);
    }
    return orElse();
  }
}

abstract class CounsellorChatsFetched implements CounsellorChateeEvent {
  const factory CounsellorChatsFetched() = _$CounsellorChatsFetched;
}

/// @nodoc
class _$CounsellorChateeStateTearOff {
  const _$CounsellorChateeStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loading loading() {
    return const Loading();
  }

  LoadedSuccessfully loadedSuccessfully(List<CounsellorChatee> chat) {
    return LoadedSuccessfully(
      chat,
    );
  }

  NotLoaded notLoaded() {
    return const NotLoaded();
  }
}

/// @nodoc
const $CounsellorChateeState = _$CounsellorChateeStateTearOff();

/// @nodoc
mixin _$CounsellorChateeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CounsellorChatee> chat) loadedSuccessfully,
    required TResult Function() notLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CounsellorChatee> chat)? loadedSuccessfully,
    TResult Function()? notLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(LoadedSuccessfully value) loadedSuccessfully,
    required TResult Function(NotLoaded value) notLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoadedSuccessfully value)? loadedSuccessfully,
    TResult Function(NotLoaded value)? notLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounsellorChateeStateCopyWith<$Res> {
  factory $CounsellorChateeStateCopyWith(CounsellorChateeState value,
          $Res Function(CounsellorChateeState) then) =
      _$CounsellorChateeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CounsellorChateeStateCopyWithImpl<$Res>
    implements $CounsellorChateeStateCopyWith<$Res> {
  _$CounsellorChateeStateCopyWithImpl(this._value, this._then);

  final CounsellorChateeState _value;
  // ignore: unused_field
  final $Res Function(CounsellorChateeState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res>
    extends _$CounsellorChateeStateCopyWithImpl<$Res>
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
    return 'CounsellorChateeState.initial()';
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
    required TResult Function(List<CounsellorChatee> chat) loadedSuccessfully,
    required TResult Function() notLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CounsellorChatee> chat)? loadedSuccessfully,
    TResult Function()? notLoaded,
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
    required TResult Function(NotLoaded value) notLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoadedSuccessfully value)? loadedSuccessfully,
    TResult Function(NotLoaded value)? notLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements CounsellorChateeState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res>
    extends _$CounsellorChateeStateCopyWithImpl<$Res>
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
    return 'CounsellorChateeState.loading()';
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
    required TResult Function(List<CounsellorChatee> chat) loadedSuccessfully,
    required TResult Function() notLoaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CounsellorChatee> chat)? loadedSuccessfully,
    TResult Function()? notLoaded,
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
    required TResult Function(NotLoaded value) notLoaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoadedSuccessfully value)? loadedSuccessfully,
    TResult Function(NotLoaded value)? notLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements CounsellorChateeState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $LoadedSuccessfullyCopyWith<$Res> {
  factory $LoadedSuccessfullyCopyWith(
          LoadedSuccessfully value, $Res Function(LoadedSuccessfully) then) =
      _$LoadedSuccessfullyCopyWithImpl<$Res>;
  $Res call({List<CounsellorChatee> chat});
}

/// @nodoc
class _$LoadedSuccessfullyCopyWithImpl<$Res>
    extends _$CounsellorChateeStateCopyWithImpl<$Res>
    implements $LoadedSuccessfullyCopyWith<$Res> {
  _$LoadedSuccessfullyCopyWithImpl(
      LoadedSuccessfully _value, $Res Function(LoadedSuccessfully) _then)
      : super(_value, (v) => _then(v as LoadedSuccessfully));

  @override
  LoadedSuccessfully get _value => super._value as LoadedSuccessfully;

  @override
  $Res call({
    Object? chat = freezed,
  }) {
    return _then(LoadedSuccessfully(
      chat == freezed
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as List<CounsellorChatee>,
    ));
  }
}

/// @nodoc
class _$LoadedSuccessfully implements LoadedSuccessfully {
  const _$LoadedSuccessfully(this.chat);

  @override
  final List<CounsellorChatee> chat;

  @override
  String toString() {
    return 'CounsellorChateeState.loadedSuccessfully(chat: $chat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadedSuccessfully &&
            (identical(other.chat, chat) ||
                const DeepCollectionEquality().equals(other.chat, chat)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(chat);

  @JsonKey(ignore: true)
  @override
  $LoadedSuccessfullyCopyWith<LoadedSuccessfully> get copyWith =>
      _$LoadedSuccessfullyCopyWithImpl<LoadedSuccessfully>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CounsellorChatee> chat) loadedSuccessfully,
    required TResult Function() notLoaded,
  }) {
    return loadedSuccessfully(chat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CounsellorChatee> chat)? loadedSuccessfully,
    TResult Function()? notLoaded,
    required TResult orElse(),
  }) {
    if (loadedSuccessfully != null) {
      return loadedSuccessfully(chat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(LoadedSuccessfully value) loadedSuccessfully,
    required TResult Function(NotLoaded value) notLoaded,
  }) {
    return loadedSuccessfully(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoadedSuccessfully value)? loadedSuccessfully,
    TResult Function(NotLoaded value)? notLoaded,
    required TResult orElse(),
  }) {
    if (loadedSuccessfully != null) {
      return loadedSuccessfully(this);
    }
    return orElse();
  }
}

abstract class LoadedSuccessfully implements CounsellorChateeState {
  const factory LoadedSuccessfully(List<CounsellorChatee> chat) =
      _$LoadedSuccessfully;

  List<CounsellorChatee> get chat => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedSuccessfullyCopyWith<LoadedSuccessfully> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotLoadedCopyWith<$Res> {
  factory $NotLoadedCopyWith(NotLoaded value, $Res Function(NotLoaded) then) =
      _$NotLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotLoadedCopyWithImpl<$Res>
    extends _$CounsellorChateeStateCopyWithImpl<$Res>
    implements $NotLoadedCopyWith<$Res> {
  _$NotLoadedCopyWithImpl(NotLoaded _value, $Res Function(NotLoaded) _then)
      : super(_value, (v) => _then(v as NotLoaded));

  @override
  NotLoaded get _value => super._value as NotLoaded;
}

/// @nodoc
class _$NotLoaded implements NotLoaded {
  const _$NotLoaded();

  @override
  String toString() {
    return 'CounsellorChateeState.notLoaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NotLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CounsellorChatee> chat) loadedSuccessfully,
    required TResult Function() notLoaded,
  }) {
    return notLoaded();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CounsellorChatee> chat)? loadedSuccessfully,
    TResult Function()? notLoaded,
    required TResult orElse(),
  }) {
    if (notLoaded != null) {
      return notLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(LoadedSuccessfully value) loadedSuccessfully,
    required TResult Function(NotLoaded value) notLoaded,
  }) {
    return notLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoadedSuccessfully value)? loadedSuccessfully,
    TResult Function(NotLoaded value)? notLoaded,
    required TResult orElse(),
  }) {
    if (notLoaded != null) {
      return notLoaded(this);
    }
    return orElse();
  }
}

abstract class NotLoaded implements CounsellorChateeState {
  const factory NotLoaded() = _$NotLoaded;
}
