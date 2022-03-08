// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'chat_actions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChatActionsEventTearOff {
  const _$ChatActionsEventTearOff();

  MessageSent messageSent(String message, int receipientId) {
    return MessageSent(
      message,
      receipientId,
    );
  }
}

/// @nodoc
const $ChatActionsEvent = _$ChatActionsEventTearOff();

/// @nodoc
mixin _$ChatActionsEvent {
  String get message => throw _privateConstructorUsedError;
  int get receipientId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int receipientId) messageSent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int receipientId)? messageSent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageSent value) messageSent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageSent value)? messageSent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatActionsEventCopyWith<ChatActionsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatActionsEventCopyWith<$Res> {
  factory $ChatActionsEventCopyWith(
          ChatActionsEvent value, $Res Function(ChatActionsEvent) then) =
      _$ChatActionsEventCopyWithImpl<$Res>;
  $Res call({String message, int receipientId});
}

/// @nodoc
class _$ChatActionsEventCopyWithImpl<$Res>
    implements $ChatActionsEventCopyWith<$Res> {
  _$ChatActionsEventCopyWithImpl(this._value, this._then);

  final ChatActionsEvent _value;
  // ignore: unused_field
  final $Res Function(ChatActionsEvent) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? receipientId = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      receipientId: receipientId == freezed
          ? _value.receipientId
          : receipientId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $MessageSentCopyWith<$Res>
    implements $ChatActionsEventCopyWith<$Res> {
  factory $MessageSentCopyWith(
          MessageSent value, $Res Function(MessageSent) then) =
      _$MessageSentCopyWithImpl<$Res>;
  @override
  $Res call({String message, int receipientId});
}

/// @nodoc
class _$MessageSentCopyWithImpl<$Res>
    extends _$ChatActionsEventCopyWithImpl<$Res>
    implements $MessageSentCopyWith<$Res> {
  _$MessageSentCopyWithImpl(
      MessageSent _value, $Res Function(MessageSent) _then)
      : super(_value, (v) => _then(v as MessageSent));

  @override
  MessageSent get _value => super._value as MessageSent;

  @override
  $Res call({
    Object? message = freezed,
    Object? receipientId = freezed,
  }) {
    return _then(MessageSent(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      receipientId == freezed
          ? _value.receipientId
          : receipientId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
class _$MessageSent implements MessageSent {
  const _$MessageSent(this.message, this.receipientId);

  @override
  final String message;
  @override
  final int receipientId;

  @override
  String toString() {
    return 'ChatActionsEvent.messageSent(message: $message, receipientId: $receipientId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MessageSent &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.receipientId, receipientId) ||
                const DeepCollectionEquality()
                    .equals(other.receipientId, receipientId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(receipientId);

  @JsonKey(ignore: true)
  @override
  $MessageSentCopyWith<MessageSent> get copyWith =>
      _$MessageSentCopyWithImpl<MessageSent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int receipientId) messageSent,
  }) {
    return messageSent(message, receipientId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int receipientId)? messageSent,
    required TResult orElse(),
  }) {
    if (messageSent != null) {
      return messageSent(message, receipientId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageSent value) messageSent,
  }) {
    return messageSent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageSent value)? messageSent,
    required TResult orElse(),
  }) {
    if (messageSent != null) {
      return messageSent(this);
    }
    return orElse();
  }
}

abstract class MessageSent implements ChatActionsEvent {
  const factory MessageSent(String message, int receipientId) = _$MessageSent;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  int get receipientId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $MessageSentCopyWith<MessageSent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ChatActionsStateTearOff {
  const _$ChatActionsStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loading loading() {
    return const Loading();
  }

  MessageSentSuccessfully messageSentSuccessfully(List<ChatMessage> messages) {
    return MessageSentSuccessfully(
      messages,
    );
  }

  MessageNotSent messageNotSent() {
    return const MessageNotSent();
  }
}

/// @nodoc
const $ChatActionsState = _$ChatActionsStateTearOff();

/// @nodoc
mixin _$ChatActionsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ChatMessage> messages)
        messageSentSuccessfully,
    required TResult Function() messageNotSent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ChatMessage> messages)? messageSentSuccessfully,
    TResult Function()? messageNotSent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(MessageSentSuccessfully value)
        messageSentSuccessfully,
    required TResult Function(MessageNotSent value) messageNotSent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(MessageSentSuccessfully value)? messageSentSuccessfully,
    TResult Function(MessageNotSent value)? messageNotSent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatActionsStateCopyWith<$Res> {
  factory $ChatActionsStateCopyWith(
          ChatActionsState value, $Res Function(ChatActionsState) then) =
      _$ChatActionsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatActionsStateCopyWithImpl<$Res>
    implements $ChatActionsStateCopyWith<$Res> {
  _$ChatActionsStateCopyWithImpl(this._value, this._then);

  final ChatActionsState _value;
  // ignore: unused_field
  final $Res Function(ChatActionsState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$ChatActionsStateCopyWithImpl<$Res>
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
    return 'ChatActionsState.initial()';
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
    required TResult Function(List<ChatMessage> messages)
        messageSentSuccessfully,
    required TResult Function() messageNotSent,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ChatMessage> messages)? messageSentSuccessfully,
    TResult Function()? messageNotSent,
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
    required TResult Function(MessageSentSuccessfully value)
        messageSentSuccessfully,
    required TResult Function(MessageNotSent value) messageNotSent,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(MessageSentSuccessfully value)? messageSentSuccessfully,
    TResult Function(MessageNotSent value)? messageNotSent,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ChatActionsState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$ChatActionsStateCopyWithImpl<$Res>
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
    return 'ChatActionsState.loading()';
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
    required TResult Function(List<ChatMessage> messages)
        messageSentSuccessfully,
    required TResult Function() messageNotSent,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ChatMessage> messages)? messageSentSuccessfully,
    TResult Function()? messageNotSent,
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
    required TResult Function(MessageSentSuccessfully value)
        messageSentSuccessfully,
    required TResult Function(MessageNotSent value) messageNotSent,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(MessageSentSuccessfully value)? messageSentSuccessfully,
    TResult Function(MessageNotSent value)? messageNotSent,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements ChatActionsState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $MessageSentSuccessfullyCopyWith<$Res> {
  factory $MessageSentSuccessfullyCopyWith(MessageSentSuccessfully value,
          $Res Function(MessageSentSuccessfully) then) =
      _$MessageSentSuccessfullyCopyWithImpl<$Res>;
  $Res call({List<ChatMessage> messages});
}

/// @nodoc
class _$MessageSentSuccessfullyCopyWithImpl<$Res>
    extends _$ChatActionsStateCopyWithImpl<$Res>
    implements $MessageSentSuccessfullyCopyWith<$Res> {
  _$MessageSentSuccessfullyCopyWithImpl(MessageSentSuccessfully _value,
      $Res Function(MessageSentSuccessfully) _then)
      : super(_value, (v) => _then(v as MessageSentSuccessfully));

  @override
  MessageSentSuccessfully get _value => super._value as MessageSentSuccessfully;

  @override
  $Res call({
    Object? messages = freezed,
  }) {
    return _then(MessageSentSuccessfully(
      messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
    ));
  }
}

/// @nodoc
class _$MessageSentSuccessfully implements MessageSentSuccessfully {
  const _$MessageSentSuccessfully(this.messages);

  @override
  final List<ChatMessage> messages;

  @override
  String toString() {
    return 'ChatActionsState.messageSentSuccessfully(messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MessageSentSuccessfully &&
            (identical(other.messages, messages) ||
                const DeepCollectionEquality()
                    .equals(other.messages, messages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(messages);

  @JsonKey(ignore: true)
  @override
  $MessageSentSuccessfullyCopyWith<MessageSentSuccessfully> get copyWith =>
      _$MessageSentSuccessfullyCopyWithImpl<MessageSentSuccessfully>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ChatMessage> messages)
        messageSentSuccessfully,
    required TResult Function() messageNotSent,
  }) {
    return messageSentSuccessfully(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ChatMessage> messages)? messageSentSuccessfully,
    TResult Function()? messageNotSent,
    required TResult orElse(),
  }) {
    if (messageSentSuccessfully != null) {
      return messageSentSuccessfully(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(MessageSentSuccessfully value)
        messageSentSuccessfully,
    required TResult Function(MessageNotSent value) messageNotSent,
  }) {
    return messageSentSuccessfully(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(MessageSentSuccessfully value)? messageSentSuccessfully,
    TResult Function(MessageNotSent value)? messageNotSent,
    required TResult orElse(),
  }) {
    if (messageSentSuccessfully != null) {
      return messageSentSuccessfully(this);
    }
    return orElse();
  }
}

abstract class MessageSentSuccessfully implements ChatActionsState {
  const factory MessageSentSuccessfully(List<ChatMessage> messages) =
      _$MessageSentSuccessfully;

  List<ChatMessage> get messages => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageSentSuccessfullyCopyWith<MessageSentSuccessfully> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageNotSentCopyWith<$Res> {
  factory $MessageNotSentCopyWith(
          MessageNotSent value, $Res Function(MessageNotSent) then) =
      _$MessageNotSentCopyWithImpl<$Res>;
}

/// @nodoc
class _$MessageNotSentCopyWithImpl<$Res>
    extends _$ChatActionsStateCopyWithImpl<$Res>
    implements $MessageNotSentCopyWith<$Res> {
  _$MessageNotSentCopyWithImpl(
      MessageNotSent _value, $Res Function(MessageNotSent) _then)
      : super(_value, (v) => _then(v as MessageNotSent));

  @override
  MessageNotSent get _value => super._value as MessageNotSent;
}

/// @nodoc
class _$MessageNotSent implements MessageNotSent {
  const _$MessageNotSent();

  @override
  String toString() {
    return 'ChatActionsState.messageNotSent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MessageNotSent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ChatMessage> messages)
        messageSentSuccessfully,
    required TResult Function() messageNotSent,
  }) {
    return messageNotSent();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ChatMessage> messages)? messageSentSuccessfully,
    TResult Function()? messageNotSent,
    required TResult orElse(),
  }) {
    if (messageNotSent != null) {
      return messageNotSent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(MessageSentSuccessfully value)
        messageSentSuccessfully,
    required TResult Function(MessageNotSent value) messageNotSent,
  }) {
    return messageNotSent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(MessageSentSuccessfully value)? messageSentSuccessfully,
    TResult Function(MessageNotSent value)? messageNotSent,
    required TResult orElse(),
  }) {
    if (messageNotSent != null) {
      return messageNotSent(this);
    }
    return orElse();
  }
}

abstract class MessageNotSent implements ChatActionsState {
  const factory MessageNotSent() = _$MessageNotSent;
}
