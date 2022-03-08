// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'update_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UpdateProfileEventTearOff {
  const _$UpdateProfileEventTearOff();

  ProfileImgChanged profileImgChanged(String? profileImgStr) {
    return ProfileImgChanged(
      profileImgStr,
    );
  }

  FirstNameChanged firstNameChanged(String firstNameStr) {
    return FirstNameChanged(
      firstNameStr,
    );
  }

  LastNameChanged lastNameChanged(String lastNameStr) {
    return LastNameChanged(
      lastNameStr,
    );
  }

  GenderChanged genderChanged(String genderStr) {
    return GenderChanged(
      genderStr,
    );
  }

  EmailChanged emailChanged(String emailStr) {
    return EmailChanged(
      emailStr,
    );
  }

  PhoneNumberChanged phoneNumberChanged(String phoneNumberStr) {
    return PhoneNumberChanged(
      phoneNumberStr,
    );
  }

  TypeChanged typeChanged(String typeStr) {
    return TypeChanged(
      typeStr,
    );
  }

  DateOfBirthChanged dateOfBirthChanged(String dateOfBirthStr) {
    return DateOfBirthChanged(
      dateOfBirthStr,
    );
  }

  RegisterWithEmailAndPasswordPressed registerWithEmailAndPasswordPressed(
      String? mask) {
    return RegisterWithEmailAndPasswordPressed(
      mask,
    );
  }
}

/// @nodoc
const $UpdateProfileEvent = _$UpdateProfileEventTearOff();

/// @nodoc
mixin _$UpdateProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? profileImgStr) profileImgChanged,
    required TResult Function(String firstNameStr) firstNameChanged,
    required TResult Function(String lastNameStr) lastNameChanged,
    required TResult Function(String genderStr) genderChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String phoneNumberStr) phoneNumberChanged,
    required TResult Function(String typeStr) typeChanged,
    required TResult Function(String dateOfBirthStr) dateOfBirthChanged,
    required TResult Function(String? mask) registerWithEmailAndPasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? profileImgStr)? profileImgChanged,
    TResult Function(String firstNameStr)? firstNameChanged,
    TResult Function(String lastNameStr)? lastNameChanged,
    TResult Function(String genderStr)? genderChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function(String dateOfBirthStr)? dateOfBirthChanged,
    TResult Function(String? mask)? registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileImgChanged value) profileImgChanged,
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(GenderChanged value) genderChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(TypeChanged value) typeChanged,
    required TResult Function(DateOfBirthChanged value) dateOfBirthChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileImgChanged value)? profileImgChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(GenderChanged value)? genderChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(DateOfBirthChanged value)? dateOfBirthChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfileEventCopyWith<$Res> {
  factory $UpdateProfileEventCopyWith(
          UpdateProfileEvent value, $Res Function(UpdateProfileEvent) then) =
      _$UpdateProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateProfileEventCopyWithImpl<$Res>
    implements $UpdateProfileEventCopyWith<$Res> {
  _$UpdateProfileEventCopyWithImpl(this._value, this._then);

  final UpdateProfileEvent _value;
  // ignore: unused_field
  final $Res Function(UpdateProfileEvent) _then;
}

/// @nodoc
abstract class $ProfileImgChangedCopyWith<$Res> {
  factory $ProfileImgChangedCopyWith(
          ProfileImgChanged value, $Res Function(ProfileImgChanged) then) =
      _$ProfileImgChangedCopyWithImpl<$Res>;
  $Res call({String? profileImgStr});
}

/// @nodoc
class _$ProfileImgChangedCopyWithImpl<$Res>
    extends _$UpdateProfileEventCopyWithImpl<$Res>
    implements $ProfileImgChangedCopyWith<$Res> {
  _$ProfileImgChangedCopyWithImpl(
      ProfileImgChanged _value, $Res Function(ProfileImgChanged) _then)
      : super(_value, (v) => _then(v as ProfileImgChanged));

  @override
  ProfileImgChanged get _value => super._value as ProfileImgChanged;

  @override
  $Res call({
    Object? profileImgStr = freezed,
  }) {
    return _then(ProfileImgChanged(
      profileImgStr == freezed
          ? _value.profileImgStr
          : profileImgStr // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
class _$ProfileImgChanged implements ProfileImgChanged {
  const _$ProfileImgChanged(this.profileImgStr);

  @override
  final String? profileImgStr;

  @override
  String toString() {
    return 'UpdateProfileEvent.profileImgChanged(profileImgStr: $profileImgStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProfileImgChanged &&
            (identical(other.profileImgStr, profileImgStr) ||
                const DeepCollectionEquality()
                    .equals(other.profileImgStr, profileImgStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(profileImgStr);

  @JsonKey(ignore: true)
  @override
  $ProfileImgChangedCopyWith<ProfileImgChanged> get copyWith =>
      _$ProfileImgChangedCopyWithImpl<ProfileImgChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? profileImgStr) profileImgChanged,
    required TResult Function(String firstNameStr) firstNameChanged,
    required TResult Function(String lastNameStr) lastNameChanged,
    required TResult Function(String genderStr) genderChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String phoneNumberStr) phoneNumberChanged,
    required TResult Function(String typeStr) typeChanged,
    required TResult Function(String dateOfBirthStr) dateOfBirthChanged,
    required TResult Function(String? mask) registerWithEmailAndPasswordPressed,
  }) {
    return profileImgChanged(profileImgStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? profileImgStr)? profileImgChanged,
    TResult Function(String firstNameStr)? firstNameChanged,
    TResult Function(String lastNameStr)? lastNameChanged,
    TResult Function(String genderStr)? genderChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function(String dateOfBirthStr)? dateOfBirthChanged,
    TResult Function(String? mask)? registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (profileImgChanged != null) {
      return profileImgChanged(profileImgStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileImgChanged value) profileImgChanged,
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(GenderChanged value) genderChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(TypeChanged value) typeChanged,
    required TResult Function(DateOfBirthChanged value) dateOfBirthChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
  }) {
    return profileImgChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileImgChanged value)? profileImgChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(GenderChanged value)? genderChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(DateOfBirthChanged value)? dateOfBirthChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (profileImgChanged != null) {
      return profileImgChanged(this);
    }
    return orElse();
  }
}

abstract class ProfileImgChanged implements UpdateProfileEvent {
  const factory ProfileImgChanged(String? profileImgStr) = _$ProfileImgChanged;

  String? get profileImgStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileImgChangedCopyWith<ProfileImgChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirstNameChangedCopyWith<$Res> {
  factory $FirstNameChangedCopyWith(
          FirstNameChanged value, $Res Function(FirstNameChanged) then) =
      _$FirstNameChangedCopyWithImpl<$Res>;
  $Res call({String firstNameStr});
}

/// @nodoc
class _$FirstNameChangedCopyWithImpl<$Res>
    extends _$UpdateProfileEventCopyWithImpl<$Res>
    implements $FirstNameChangedCopyWith<$Res> {
  _$FirstNameChangedCopyWithImpl(
      FirstNameChanged _value, $Res Function(FirstNameChanged) _then)
      : super(_value, (v) => _then(v as FirstNameChanged));

  @override
  FirstNameChanged get _value => super._value as FirstNameChanged;

  @override
  $Res call({
    Object? firstNameStr = freezed,
  }) {
    return _then(FirstNameChanged(
      firstNameStr == freezed
          ? _value.firstNameStr
          : firstNameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$FirstNameChanged implements FirstNameChanged {
  const _$FirstNameChanged(this.firstNameStr);

  @override
  final String firstNameStr;

  @override
  String toString() {
    return 'UpdateProfileEvent.firstNameChanged(firstNameStr: $firstNameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FirstNameChanged &&
            (identical(other.firstNameStr, firstNameStr) ||
                const DeepCollectionEquality()
                    .equals(other.firstNameStr, firstNameStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(firstNameStr);

  @JsonKey(ignore: true)
  @override
  $FirstNameChangedCopyWith<FirstNameChanged> get copyWith =>
      _$FirstNameChangedCopyWithImpl<FirstNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? profileImgStr) profileImgChanged,
    required TResult Function(String firstNameStr) firstNameChanged,
    required TResult Function(String lastNameStr) lastNameChanged,
    required TResult Function(String genderStr) genderChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String phoneNumberStr) phoneNumberChanged,
    required TResult Function(String typeStr) typeChanged,
    required TResult Function(String dateOfBirthStr) dateOfBirthChanged,
    required TResult Function(String? mask) registerWithEmailAndPasswordPressed,
  }) {
    return firstNameChanged(firstNameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? profileImgStr)? profileImgChanged,
    TResult Function(String firstNameStr)? firstNameChanged,
    TResult Function(String lastNameStr)? lastNameChanged,
    TResult Function(String genderStr)? genderChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function(String dateOfBirthStr)? dateOfBirthChanged,
    TResult Function(String? mask)? registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (firstNameChanged != null) {
      return firstNameChanged(firstNameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileImgChanged value) profileImgChanged,
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(GenderChanged value) genderChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(TypeChanged value) typeChanged,
    required TResult Function(DateOfBirthChanged value) dateOfBirthChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
  }) {
    return firstNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileImgChanged value)? profileImgChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(GenderChanged value)? genderChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(DateOfBirthChanged value)? dateOfBirthChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (firstNameChanged != null) {
      return firstNameChanged(this);
    }
    return orElse();
  }
}

abstract class FirstNameChanged implements UpdateProfileEvent {
  const factory FirstNameChanged(String firstNameStr) = _$FirstNameChanged;

  String get firstNameStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FirstNameChangedCopyWith<FirstNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LastNameChangedCopyWith<$Res> {
  factory $LastNameChangedCopyWith(
          LastNameChanged value, $Res Function(LastNameChanged) then) =
      _$LastNameChangedCopyWithImpl<$Res>;
  $Res call({String lastNameStr});
}

/// @nodoc
class _$LastNameChangedCopyWithImpl<$Res>
    extends _$UpdateProfileEventCopyWithImpl<$Res>
    implements $LastNameChangedCopyWith<$Res> {
  _$LastNameChangedCopyWithImpl(
      LastNameChanged _value, $Res Function(LastNameChanged) _then)
      : super(_value, (v) => _then(v as LastNameChanged));

  @override
  LastNameChanged get _value => super._value as LastNameChanged;

  @override
  $Res call({
    Object? lastNameStr = freezed,
  }) {
    return _then(LastNameChanged(
      lastNameStr == freezed
          ? _value.lastNameStr
          : lastNameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$LastNameChanged implements LastNameChanged {
  const _$LastNameChanged(this.lastNameStr);

  @override
  final String lastNameStr;

  @override
  String toString() {
    return 'UpdateProfileEvent.lastNameChanged(lastNameStr: $lastNameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LastNameChanged &&
            (identical(other.lastNameStr, lastNameStr) ||
                const DeepCollectionEquality()
                    .equals(other.lastNameStr, lastNameStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(lastNameStr);

  @JsonKey(ignore: true)
  @override
  $LastNameChangedCopyWith<LastNameChanged> get copyWith =>
      _$LastNameChangedCopyWithImpl<LastNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? profileImgStr) profileImgChanged,
    required TResult Function(String firstNameStr) firstNameChanged,
    required TResult Function(String lastNameStr) lastNameChanged,
    required TResult Function(String genderStr) genderChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String phoneNumberStr) phoneNumberChanged,
    required TResult Function(String typeStr) typeChanged,
    required TResult Function(String dateOfBirthStr) dateOfBirthChanged,
    required TResult Function(String? mask) registerWithEmailAndPasswordPressed,
  }) {
    return lastNameChanged(lastNameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? profileImgStr)? profileImgChanged,
    TResult Function(String firstNameStr)? firstNameChanged,
    TResult Function(String lastNameStr)? lastNameChanged,
    TResult Function(String genderStr)? genderChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function(String dateOfBirthStr)? dateOfBirthChanged,
    TResult Function(String? mask)? registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (lastNameChanged != null) {
      return lastNameChanged(lastNameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileImgChanged value) profileImgChanged,
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(GenderChanged value) genderChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(TypeChanged value) typeChanged,
    required TResult Function(DateOfBirthChanged value) dateOfBirthChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
  }) {
    return lastNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileImgChanged value)? profileImgChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(GenderChanged value)? genderChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(DateOfBirthChanged value)? dateOfBirthChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (lastNameChanged != null) {
      return lastNameChanged(this);
    }
    return orElse();
  }
}

abstract class LastNameChanged implements UpdateProfileEvent {
  const factory LastNameChanged(String lastNameStr) = _$LastNameChanged;

  String get lastNameStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LastNameChangedCopyWith<LastNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenderChangedCopyWith<$Res> {
  factory $GenderChangedCopyWith(
          GenderChanged value, $Res Function(GenderChanged) then) =
      _$GenderChangedCopyWithImpl<$Res>;
  $Res call({String genderStr});
}

/// @nodoc
class _$GenderChangedCopyWithImpl<$Res>
    extends _$UpdateProfileEventCopyWithImpl<$Res>
    implements $GenderChangedCopyWith<$Res> {
  _$GenderChangedCopyWithImpl(
      GenderChanged _value, $Res Function(GenderChanged) _then)
      : super(_value, (v) => _then(v as GenderChanged));

  @override
  GenderChanged get _value => super._value as GenderChanged;

  @override
  $Res call({
    Object? genderStr = freezed,
  }) {
    return _then(GenderChanged(
      genderStr == freezed
          ? _value.genderStr
          : genderStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$GenderChanged implements GenderChanged {
  const _$GenderChanged(this.genderStr);

  @override
  final String genderStr;

  @override
  String toString() {
    return 'UpdateProfileEvent.genderChanged(genderStr: $genderStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GenderChanged &&
            (identical(other.genderStr, genderStr) ||
                const DeepCollectionEquality()
                    .equals(other.genderStr, genderStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(genderStr);

  @JsonKey(ignore: true)
  @override
  $GenderChangedCopyWith<GenderChanged> get copyWith =>
      _$GenderChangedCopyWithImpl<GenderChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? profileImgStr) profileImgChanged,
    required TResult Function(String firstNameStr) firstNameChanged,
    required TResult Function(String lastNameStr) lastNameChanged,
    required TResult Function(String genderStr) genderChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String phoneNumberStr) phoneNumberChanged,
    required TResult Function(String typeStr) typeChanged,
    required TResult Function(String dateOfBirthStr) dateOfBirthChanged,
    required TResult Function(String? mask) registerWithEmailAndPasswordPressed,
  }) {
    return genderChanged(genderStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? profileImgStr)? profileImgChanged,
    TResult Function(String firstNameStr)? firstNameChanged,
    TResult Function(String lastNameStr)? lastNameChanged,
    TResult Function(String genderStr)? genderChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function(String dateOfBirthStr)? dateOfBirthChanged,
    TResult Function(String? mask)? registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (genderChanged != null) {
      return genderChanged(genderStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileImgChanged value) profileImgChanged,
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(GenderChanged value) genderChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(TypeChanged value) typeChanged,
    required TResult Function(DateOfBirthChanged value) dateOfBirthChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
  }) {
    return genderChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileImgChanged value)? profileImgChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(GenderChanged value)? genderChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(DateOfBirthChanged value)? dateOfBirthChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (genderChanged != null) {
      return genderChanged(this);
    }
    return orElse();
  }
}

abstract class GenderChanged implements UpdateProfileEvent {
  const factory GenderChanged(String genderStr) = _$GenderChanged;

  String get genderStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenderChangedCopyWith<GenderChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

/// @nodoc
class _$EmailChangedCopyWithImpl<$Res>
    extends _$UpdateProfileEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object? emailStr = freezed,
  }) {
    return _then(EmailChanged(
      emailStr == freezed
          ? _value.emailStr
          : emailStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.emailStr);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'UpdateProfileEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChanged &&
            (identical(other.emailStr, emailStr) ||
                const DeepCollectionEquality()
                    .equals(other.emailStr, emailStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailStr);

  @JsonKey(ignore: true)
  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? profileImgStr) profileImgChanged,
    required TResult Function(String firstNameStr) firstNameChanged,
    required TResult Function(String lastNameStr) lastNameChanged,
    required TResult Function(String genderStr) genderChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String phoneNumberStr) phoneNumberChanged,
    required TResult Function(String typeStr) typeChanged,
    required TResult Function(String dateOfBirthStr) dateOfBirthChanged,
    required TResult Function(String? mask) registerWithEmailAndPasswordPressed,
  }) {
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? profileImgStr)? profileImgChanged,
    TResult Function(String firstNameStr)? firstNameChanged,
    TResult Function(String lastNameStr)? lastNameChanged,
    TResult Function(String genderStr)? genderChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function(String dateOfBirthStr)? dateOfBirthChanged,
    TResult Function(String? mask)? registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileImgChanged value) profileImgChanged,
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(GenderChanged value) genderChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(TypeChanged value) typeChanged,
    required TResult Function(DateOfBirthChanged value) dateOfBirthChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileImgChanged value)? profileImgChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(GenderChanged value)? genderChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(DateOfBirthChanged value)? dateOfBirthChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements UpdateProfileEvent {
  const factory EmailChanged(String emailStr) = _$EmailChanged;

  String get emailStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneNumberChangedCopyWith<$Res> {
  factory $PhoneNumberChangedCopyWith(
          PhoneNumberChanged value, $Res Function(PhoneNumberChanged) then) =
      _$PhoneNumberChangedCopyWithImpl<$Res>;
  $Res call({String phoneNumberStr});
}

/// @nodoc
class _$PhoneNumberChangedCopyWithImpl<$Res>
    extends _$UpdateProfileEventCopyWithImpl<$Res>
    implements $PhoneNumberChangedCopyWith<$Res> {
  _$PhoneNumberChangedCopyWithImpl(
      PhoneNumberChanged _value, $Res Function(PhoneNumberChanged) _then)
      : super(_value, (v) => _then(v as PhoneNumberChanged));

  @override
  PhoneNumberChanged get _value => super._value as PhoneNumberChanged;

  @override
  $Res call({
    Object? phoneNumberStr = freezed,
  }) {
    return _then(PhoneNumberChanged(
      phoneNumberStr == freezed
          ? _value.phoneNumberStr
          : phoneNumberStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$PhoneNumberChanged implements PhoneNumberChanged {
  const _$PhoneNumberChanged(this.phoneNumberStr);

  @override
  final String phoneNumberStr;

  @override
  String toString() {
    return 'UpdateProfileEvent.phoneNumberChanged(phoneNumberStr: $phoneNumberStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PhoneNumberChanged &&
            (identical(other.phoneNumberStr, phoneNumberStr) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumberStr, phoneNumberStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(phoneNumberStr);

  @JsonKey(ignore: true)
  @override
  $PhoneNumberChangedCopyWith<PhoneNumberChanged> get copyWith =>
      _$PhoneNumberChangedCopyWithImpl<PhoneNumberChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? profileImgStr) profileImgChanged,
    required TResult Function(String firstNameStr) firstNameChanged,
    required TResult Function(String lastNameStr) lastNameChanged,
    required TResult Function(String genderStr) genderChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String phoneNumberStr) phoneNumberChanged,
    required TResult Function(String typeStr) typeChanged,
    required TResult Function(String dateOfBirthStr) dateOfBirthChanged,
    required TResult Function(String? mask) registerWithEmailAndPasswordPressed,
  }) {
    return phoneNumberChanged(phoneNumberStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? profileImgStr)? profileImgChanged,
    TResult Function(String firstNameStr)? firstNameChanged,
    TResult Function(String lastNameStr)? lastNameChanged,
    TResult Function(String genderStr)? genderChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function(String dateOfBirthStr)? dateOfBirthChanged,
    TResult Function(String? mask)? registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(phoneNumberStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileImgChanged value) profileImgChanged,
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(GenderChanged value) genderChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(TypeChanged value) typeChanged,
    required TResult Function(DateOfBirthChanged value) dateOfBirthChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
  }) {
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileImgChanged value)? profileImgChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(GenderChanged value)? genderChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(DateOfBirthChanged value)? dateOfBirthChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class PhoneNumberChanged implements UpdateProfileEvent {
  const factory PhoneNumberChanged(String phoneNumberStr) =
      _$PhoneNumberChanged;

  String get phoneNumberStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhoneNumberChangedCopyWith<PhoneNumberChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeChangedCopyWith<$Res> {
  factory $TypeChangedCopyWith(
          TypeChanged value, $Res Function(TypeChanged) then) =
      _$TypeChangedCopyWithImpl<$Res>;
  $Res call({String typeStr});
}

/// @nodoc
class _$TypeChangedCopyWithImpl<$Res>
    extends _$UpdateProfileEventCopyWithImpl<$Res>
    implements $TypeChangedCopyWith<$Res> {
  _$TypeChangedCopyWithImpl(
      TypeChanged _value, $Res Function(TypeChanged) _then)
      : super(_value, (v) => _then(v as TypeChanged));

  @override
  TypeChanged get _value => super._value as TypeChanged;

  @override
  $Res call({
    Object? typeStr = freezed,
  }) {
    return _then(TypeChanged(
      typeStr == freezed
          ? _value.typeStr
          : typeStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$TypeChanged implements TypeChanged {
  const _$TypeChanged(this.typeStr);

  @override
  final String typeStr;

  @override
  String toString() {
    return 'UpdateProfileEvent.typeChanged(typeStr: $typeStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TypeChanged &&
            (identical(other.typeStr, typeStr) ||
                const DeepCollectionEquality().equals(other.typeStr, typeStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(typeStr);

  @JsonKey(ignore: true)
  @override
  $TypeChangedCopyWith<TypeChanged> get copyWith =>
      _$TypeChangedCopyWithImpl<TypeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? profileImgStr) profileImgChanged,
    required TResult Function(String firstNameStr) firstNameChanged,
    required TResult Function(String lastNameStr) lastNameChanged,
    required TResult Function(String genderStr) genderChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String phoneNumberStr) phoneNumberChanged,
    required TResult Function(String typeStr) typeChanged,
    required TResult Function(String dateOfBirthStr) dateOfBirthChanged,
    required TResult Function(String? mask) registerWithEmailAndPasswordPressed,
  }) {
    return typeChanged(typeStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? profileImgStr)? profileImgChanged,
    TResult Function(String firstNameStr)? firstNameChanged,
    TResult Function(String lastNameStr)? lastNameChanged,
    TResult Function(String genderStr)? genderChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function(String dateOfBirthStr)? dateOfBirthChanged,
    TResult Function(String? mask)? registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (typeChanged != null) {
      return typeChanged(typeStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileImgChanged value) profileImgChanged,
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(GenderChanged value) genderChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(TypeChanged value) typeChanged,
    required TResult Function(DateOfBirthChanged value) dateOfBirthChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
  }) {
    return typeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileImgChanged value)? profileImgChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(GenderChanged value)? genderChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(DateOfBirthChanged value)? dateOfBirthChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (typeChanged != null) {
      return typeChanged(this);
    }
    return orElse();
  }
}

abstract class TypeChanged implements UpdateProfileEvent {
  const factory TypeChanged(String typeStr) = _$TypeChanged;

  String get typeStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TypeChangedCopyWith<TypeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateOfBirthChangedCopyWith<$Res> {
  factory $DateOfBirthChangedCopyWith(
          DateOfBirthChanged value, $Res Function(DateOfBirthChanged) then) =
      _$DateOfBirthChangedCopyWithImpl<$Res>;
  $Res call({String dateOfBirthStr});
}

/// @nodoc
class _$DateOfBirthChangedCopyWithImpl<$Res>
    extends _$UpdateProfileEventCopyWithImpl<$Res>
    implements $DateOfBirthChangedCopyWith<$Res> {
  _$DateOfBirthChangedCopyWithImpl(
      DateOfBirthChanged _value, $Res Function(DateOfBirthChanged) _then)
      : super(_value, (v) => _then(v as DateOfBirthChanged));

  @override
  DateOfBirthChanged get _value => super._value as DateOfBirthChanged;

  @override
  $Res call({
    Object? dateOfBirthStr = freezed,
  }) {
    return _then(DateOfBirthChanged(
      dateOfBirthStr == freezed
          ? _value.dateOfBirthStr
          : dateOfBirthStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$DateOfBirthChanged implements DateOfBirthChanged {
  const _$DateOfBirthChanged(this.dateOfBirthStr);

  @override
  final String dateOfBirthStr;

  @override
  String toString() {
    return 'UpdateProfileEvent.dateOfBirthChanged(dateOfBirthStr: $dateOfBirthStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DateOfBirthChanged &&
            (identical(other.dateOfBirthStr, dateOfBirthStr) ||
                const DeepCollectionEquality()
                    .equals(other.dateOfBirthStr, dateOfBirthStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(dateOfBirthStr);

  @JsonKey(ignore: true)
  @override
  $DateOfBirthChangedCopyWith<DateOfBirthChanged> get copyWith =>
      _$DateOfBirthChangedCopyWithImpl<DateOfBirthChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? profileImgStr) profileImgChanged,
    required TResult Function(String firstNameStr) firstNameChanged,
    required TResult Function(String lastNameStr) lastNameChanged,
    required TResult Function(String genderStr) genderChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String phoneNumberStr) phoneNumberChanged,
    required TResult Function(String typeStr) typeChanged,
    required TResult Function(String dateOfBirthStr) dateOfBirthChanged,
    required TResult Function(String? mask) registerWithEmailAndPasswordPressed,
  }) {
    return dateOfBirthChanged(dateOfBirthStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? profileImgStr)? profileImgChanged,
    TResult Function(String firstNameStr)? firstNameChanged,
    TResult Function(String lastNameStr)? lastNameChanged,
    TResult Function(String genderStr)? genderChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function(String dateOfBirthStr)? dateOfBirthChanged,
    TResult Function(String? mask)? registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (dateOfBirthChanged != null) {
      return dateOfBirthChanged(dateOfBirthStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileImgChanged value) profileImgChanged,
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(GenderChanged value) genderChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(TypeChanged value) typeChanged,
    required TResult Function(DateOfBirthChanged value) dateOfBirthChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
  }) {
    return dateOfBirthChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileImgChanged value)? profileImgChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(GenderChanged value)? genderChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(DateOfBirthChanged value)? dateOfBirthChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (dateOfBirthChanged != null) {
      return dateOfBirthChanged(this);
    }
    return orElse();
  }
}

abstract class DateOfBirthChanged implements UpdateProfileEvent {
  const factory DateOfBirthChanged(String dateOfBirthStr) =
      _$DateOfBirthChanged;

  String get dateOfBirthStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DateOfBirthChangedCopyWith<DateOfBirthChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterWithEmailAndPasswordPressedCopyWith<$Res> {
  factory $RegisterWithEmailAndPasswordPressedCopyWith(
          RegisterWithEmailAndPasswordPressed value,
          $Res Function(RegisterWithEmailAndPasswordPressed) then) =
      _$RegisterWithEmailAndPasswordPressedCopyWithImpl<$Res>;
  $Res call({String? mask});
}

/// @nodoc
class _$RegisterWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$UpdateProfileEventCopyWithImpl<$Res>
    implements $RegisterWithEmailAndPasswordPressedCopyWith<$Res> {
  _$RegisterWithEmailAndPasswordPressedCopyWithImpl(
      RegisterWithEmailAndPasswordPressed _value,
      $Res Function(RegisterWithEmailAndPasswordPressed) _then)
      : super(_value, (v) => _then(v as RegisterWithEmailAndPasswordPressed));

  @override
  RegisterWithEmailAndPasswordPressed get _value =>
      super._value as RegisterWithEmailAndPasswordPressed;

  @override
  $Res call({
    Object? mask = freezed,
  }) {
    return _then(RegisterWithEmailAndPasswordPressed(
      mask == freezed
          ? _value.mask
          : mask // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
class _$RegisterWithEmailAndPasswordPressed
    implements RegisterWithEmailAndPasswordPressed {
  const _$RegisterWithEmailAndPasswordPressed(this.mask);

  @override
  final String? mask;

  @override
  String toString() {
    return 'UpdateProfileEvent.registerWithEmailAndPasswordPressed(mask: $mask)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterWithEmailAndPasswordPressed &&
            (identical(other.mask, mask) ||
                const DeepCollectionEquality().equals(other.mask, mask)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(mask);

  @JsonKey(ignore: true)
  @override
  $RegisterWithEmailAndPasswordPressedCopyWith<
          RegisterWithEmailAndPasswordPressed>
      get copyWith => _$RegisterWithEmailAndPasswordPressedCopyWithImpl<
          RegisterWithEmailAndPasswordPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? profileImgStr) profileImgChanged,
    required TResult Function(String firstNameStr) firstNameChanged,
    required TResult Function(String lastNameStr) lastNameChanged,
    required TResult Function(String genderStr) genderChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String phoneNumberStr) phoneNumberChanged,
    required TResult Function(String typeStr) typeChanged,
    required TResult Function(String dateOfBirthStr) dateOfBirthChanged,
    required TResult Function(String? mask) registerWithEmailAndPasswordPressed,
  }) {
    return registerWithEmailAndPasswordPressed(mask);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? profileImgStr)? profileImgChanged,
    TResult Function(String firstNameStr)? firstNameChanged,
    TResult Function(String lastNameStr)? lastNameChanged,
    TResult Function(String genderStr)? genderChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function(String dateOfBirthStr)? dateOfBirthChanged,
    TResult Function(String? mask)? registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPasswordPressed != null) {
      return registerWithEmailAndPasswordPressed(mask);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileImgChanged value) profileImgChanged,
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(GenderChanged value) genderChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(TypeChanged value) typeChanged,
    required TResult Function(DateOfBirthChanged value) dateOfBirthChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
  }) {
    return registerWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileImgChanged value)? profileImgChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(GenderChanged value)? genderChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(DateOfBirthChanged value)? dateOfBirthChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPasswordPressed != null) {
      return registerWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class RegisterWithEmailAndPasswordPressed
    implements UpdateProfileEvent {
  const factory RegisterWithEmailAndPasswordPressed(String? mask) =
      _$RegisterWithEmailAndPasswordPressed;

  String? get mask => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterWithEmailAndPasswordPressedCopyWith<
          RegisterWithEmailAndPasswordPressed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$UpdateProfileStateTearOff {
  const _$UpdateProfileStateTearOff();

  _UpdateProfileState call(
      {required String? profileImg,
      required RequiredField firstName,
      required RequiredField lastName,
      required RequiredField gender,
      required EmailAddress emailAddress,
      required PhoneNumber phoneNumber,
      required RequiredField type,
      required Date dateOfBirth,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<AuthFailure, User>> authFailureOrSuccessOption}) {
    return _UpdateProfileState(
      profileImg: profileImg,
      firstName: firstName,
      lastName: lastName,
      gender: gender,
      emailAddress: emailAddress,
      phoneNumber: phoneNumber,
      type: type,
      dateOfBirth: dateOfBirth,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $UpdateProfileState = _$UpdateProfileStateTearOff();

/// @nodoc
mixin _$UpdateProfileState {
  String? get profileImg => throw _privateConstructorUsedError;
  RequiredField get firstName => throw _privateConstructorUsedError;
  RequiredField get lastName => throw _privateConstructorUsedError;
  RequiredField get gender => throw _privateConstructorUsedError;
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  PhoneNumber get phoneNumber => throw _privateConstructorUsedError;
  RequiredField get type => throw _privateConstructorUsedError;
  Date get dateOfBirth =>
      throw _privateConstructorUsedError; // required Password password,
// required ConfirmPassword confirmPassword,
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, User>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateProfileStateCopyWith<UpdateProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfileStateCopyWith<$Res> {
  factory $UpdateProfileStateCopyWith(
          UpdateProfileState value, $Res Function(UpdateProfileState) then) =
      _$UpdateProfileStateCopyWithImpl<$Res>;
  $Res call(
      {String? profileImg,
      RequiredField firstName,
      RequiredField lastName,
      RequiredField gender,
      EmailAddress emailAddress,
      PhoneNumber phoneNumber,
      RequiredField type,
      Date dateOfBirth,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, User>> authFailureOrSuccessOption});
}

/// @nodoc
class _$UpdateProfileStateCopyWithImpl<$Res>
    implements $UpdateProfileStateCopyWith<$Res> {
  _$UpdateProfileStateCopyWithImpl(this._value, this._then);

  final UpdateProfileState _value;
  // ignore: unused_field
  final $Res Function(UpdateProfileState) _then;

  @override
  $Res call({
    Object? profileImg = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? gender = freezed,
    Object? emailAddress = freezed,
    Object? phoneNumber = freezed,
    Object? type = freezed,
    Object? dateOfBirth = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      profileImg: profileImg == freezed
          ? _value.profileImg
          : profileImg // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as RequiredField,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as RequiredField,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as RequiredField,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RequiredField,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as Date,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, User>>,
    ));
  }
}

/// @nodoc
abstract class _$UpdateProfileStateCopyWith<$Res>
    implements $UpdateProfileStateCopyWith<$Res> {
  factory _$UpdateProfileStateCopyWith(
          _UpdateProfileState value, $Res Function(_UpdateProfileState) then) =
      __$UpdateProfileStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? profileImg,
      RequiredField firstName,
      RequiredField lastName,
      RequiredField gender,
      EmailAddress emailAddress,
      PhoneNumber phoneNumber,
      RequiredField type,
      Date dateOfBirth,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, User>> authFailureOrSuccessOption});
}

/// @nodoc
class __$UpdateProfileStateCopyWithImpl<$Res>
    extends _$UpdateProfileStateCopyWithImpl<$Res>
    implements _$UpdateProfileStateCopyWith<$Res> {
  __$UpdateProfileStateCopyWithImpl(
      _UpdateProfileState _value, $Res Function(_UpdateProfileState) _then)
      : super(_value, (v) => _then(v as _UpdateProfileState));

  @override
  _UpdateProfileState get _value => super._value as _UpdateProfileState;

  @override
  $Res call({
    Object? profileImg = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? gender = freezed,
    Object? emailAddress = freezed,
    Object? phoneNumber = freezed,
    Object? type = freezed,
    Object? dateOfBirth = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_UpdateProfileState(
      profileImg: profileImg == freezed
          ? _value.profileImg
          : profileImg // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as RequiredField,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as RequiredField,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as RequiredField,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RequiredField,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as Date,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, User>>,
    ));
  }
}

/// @nodoc
class _$_UpdateProfileState implements _UpdateProfileState {
  const _$_UpdateProfileState(
      {required this.profileImg,
      required this.firstName,
      required this.lastName,
      required this.gender,
      required this.emailAddress,
      required this.phoneNumber,
      required this.type,
      required this.dateOfBirth,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.authFailureOrSuccessOption});

  @override
  final String? profileImg;
  @override
  final RequiredField firstName;
  @override
  final RequiredField lastName;
  @override
  final RequiredField gender;
  @override
  final EmailAddress emailAddress;
  @override
  final PhoneNumber phoneNumber;
  @override
  final RequiredField type;
  @override
  final Date dateOfBirth;
  @override // required Password password,
// required ConfirmPassword confirmPassword,
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, User>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'UpdateProfileState(profileImg: $profileImg, firstName: $firstName, lastName: $lastName, gender: $gender, emailAddress: $emailAddress, phoneNumber: $phoneNumber, type: $type, dateOfBirth: $dateOfBirth, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateProfileState &&
            (identical(other.profileImg, profileImg) ||
                const DeepCollectionEquality()
                    .equals(other.profileImg, profileImg)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                const DeepCollectionEquality()
                    .equals(other.dateOfBirth, dateOfBirth)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(profileImg) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(dateOfBirth) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$UpdateProfileStateCopyWith<_UpdateProfileState> get copyWith =>
      __$UpdateProfileStateCopyWithImpl<_UpdateProfileState>(this, _$identity);
}

abstract class _UpdateProfileState implements UpdateProfileState {
  const factory _UpdateProfileState(
      {required String? profileImg,
      required RequiredField firstName,
      required RequiredField lastName,
      required RequiredField gender,
      required EmailAddress emailAddress,
      required PhoneNumber phoneNumber,
      required RequiredField type,
      required Date dateOfBirth,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<AuthFailure, User>>
          authFailureOrSuccessOption}) = _$_UpdateProfileState;

  @override
  String? get profileImg => throw _privateConstructorUsedError;
  @override
  RequiredField get firstName => throw _privateConstructorUsedError;
  @override
  RequiredField get lastName => throw _privateConstructorUsedError;
  @override
  RequiredField get gender => throw _privateConstructorUsedError;
  @override
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  @override
  PhoneNumber get phoneNumber => throw _privateConstructorUsedError;
  @override
  RequiredField get type => throw _privateConstructorUsedError;
  @override
  Date get dateOfBirth => throw _privateConstructorUsedError;
  @override // required Password password,
// required ConfirmPassword confirmPassword,
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  Option<Either<AuthFailure, User>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UpdateProfileStateCopyWith<_UpdateProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
