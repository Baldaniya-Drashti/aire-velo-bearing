// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignUpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword, String password)
        confirmPasswordChanged,
    required TResult Function() obscureChanged,
    required TResult Function() submitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword, String password)?
        confirmPasswordChanged,
    TResult? Function()? obscureChanged,
    TResult? Function()? submitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword, String password)?
        confirmPasswordChanged,
    TResult Function()? obscureChanged,
    TResult Function()? submitPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(ObscureChanged value) obscureChanged,
    required TResult Function(SubmitPressed value) submitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(FirstNameChanged value)? firstNameChanged,
    TResult? Function(LastNameChanged value)? lastNameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(ObscureChanged value)? obscureChanged,
    TResult? Function(SubmitPressed value)? submitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(ObscureChanged value)? obscureChanged,
    TResult Function(SubmitPressed value)? submitPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpEventCopyWith<$Res> {
  factory $SignUpEventCopyWith(
          SignUpEvent value, $Res Function(SignUpEvent) then) =
      _$SignUpEventCopyWithImpl<$Res, SignUpEvent>;
}

/// @nodoc
class _$SignUpEventCopyWithImpl<$Res, $Val extends SignUpEvent>
    implements $SignUpEventCopyWith<$Res> {
  _$SignUpEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EmailChangedImplCopyWith<$Res> {
  factory _$$EmailChangedImplCopyWith(
          _$EmailChangedImpl value, $Res Function(_$EmailChangedImpl) then) =
      __$$EmailChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$EmailChangedImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$EmailChangedImpl>
    implements _$$EmailChangedImplCopyWith<$Res> {
  __$$EmailChangedImplCopyWithImpl(
      _$EmailChangedImpl _value, $Res Function(_$EmailChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$EmailChangedImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChangedImpl implements EmailChanged {
  const _$EmailChangedImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'SignUpEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChangedImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      __$$EmailChangedImplCopyWithImpl<_$EmailChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword, String password)
        confirmPasswordChanged,
    required TResult Function() obscureChanged,
    required TResult Function() submitPressed,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword, String password)?
        confirmPasswordChanged,
    TResult? Function()? obscureChanged,
    TResult? Function()? submitPressed,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword, String password)?
        confirmPasswordChanged,
    TResult Function()? obscureChanged,
    TResult Function()? submitPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(ObscureChanged value) obscureChanged,
    required TResult Function(SubmitPressed value) submitPressed,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(FirstNameChanged value)? firstNameChanged,
    TResult? Function(LastNameChanged value)? lastNameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(ObscureChanged value)? obscureChanged,
    TResult? Function(SubmitPressed value)? submitPressed,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(ObscureChanged value)? obscureChanged,
    TResult Function(SubmitPressed value)? submitPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements SignUpEvent {
  const factory EmailChanged(final String email) = _$EmailChangedImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FirstNameChangedImplCopyWith<$Res> {
  factory _$$FirstNameChangedImplCopyWith(_$FirstNameChangedImpl value,
          $Res Function(_$FirstNameChangedImpl) then) =
      __$$FirstNameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String firstName});
}

/// @nodoc
class __$$FirstNameChangedImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$FirstNameChangedImpl>
    implements _$$FirstNameChangedImplCopyWith<$Res> {
  __$$FirstNameChangedImplCopyWithImpl(_$FirstNameChangedImpl _value,
      $Res Function(_$FirstNameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
  }) {
    return _then(_$FirstNameChangedImpl(
      null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FirstNameChangedImpl implements FirstNameChanged {
  const _$FirstNameChangedImpl(this.firstName);

  @override
  final String firstName;

  @override
  String toString() {
    return 'SignUpEvent.firstNameChanged(firstName: $firstName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirstNameChangedImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirstNameChangedImplCopyWith<_$FirstNameChangedImpl> get copyWith =>
      __$$FirstNameChangedImplCopyWithImpl<_$FirstNameChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword, String password)
        confirmPasswordChanged,
    required TResult Function() obscureChanged,
    required TResult Function() submitPressed,
  }) {
    return firstNameChanged(firstName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword, String password)?
        confirmPasswordChanged,
    TResult? Function()? obscureChanged,
    TResult? Function()? submitPressed,
  }) {
    return firstNameChanged?.call(firstName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword, String password)?
        confirmPasswordChanged,
    TResult Function()? obscureChanged,
    TResult Function()? submitPressed,
    required TResult orElse(),
  }) {
    if (firstNameChanged != null) {
      return firstNameChanged(firstName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(ObscureChanged value) obscureChanged,
    required TResult Function(SubmitPressed value) submitPressed,
  }) {
    return firstNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(FirstNameChanged value)? firstNameChanged,
    TResult? Function(LastNameChanged value)? lastNameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(ObscureChanged value)? obscureChanged,
    TResult? Function(SubmitPressed value)? submitPressed,
  }) {
    return firstNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(ObscureChanged value)? obscureChanged,
    TResult Function(SubmitPressed value)? submitPressed,
    required TResult orElse(),
  }) {
    if (firstNameChanged != null) {
      return firstNameChanged(this);
    }
    return orElse();
  }
}

abstract class FirstNameChanged implements SignUpEvent {
  const factory FirstNameChanged(final String firstName) =
      _$FirstNameChangedImpl;

  String get firstName;
  @JsonKey(ignore: true)
  _$$FirstNameChangedImplCopyWith<_$FirstNameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LastNameChangedImplCopyWith<$Res> {
  factory _$$LastNameChangedImplCopyWith(_$LastNameChangedImpl value,
          $Res Function(_$LastNameChangedImpl) then) =
      __$$LastNameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String lastName});
}

/// @nodoc
class __$$LastNameChangedImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$LastNameChangedImpl>
    implements _$$LastNameChangedImplCopyWith<$Res> {
  __$$LastNameChangedImplCopyWithImpl(
      _$LastNameChangedImpl _value, $Res Function(_$LastNameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastName = null,
  }) {
    return _then(_$LastNameChangedImpl(
      null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LastNameChangedImpl implements LastNameChanged {
  const _$LastNameChangedImpl(this.lastName);

  @override
  final String lastName;

  @override
  String toString() {
    return 'SignUpEvent.lastNameChanged(lastName: $lastName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LastNameChangedImpl &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lastName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LastNameChangedImplCopyWith<_$LastNameChangedImpl> get copyWith =>
      __$$LastNameChangedImplCopyWithImpl<_$LastNameChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword, String password)
        confirmPasswordChanged,
    required TResult Function() obscureChanged,
    required TResult Function() submitPressed,
  }) {
    return lastNameChanged(lastName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword, String password)?
        confirmPasswordChanged,
    TResult? Function()? obscureChanged,
    TResult? Function()? submitPressed,
  }) {
    return lastNameChanged?.call(lastName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword, String password)?
        confirmPasswordChanged,
    TResult Function()? obscureChanged,
    TResult Function()? submitPressed,
    required TResult orElse(),
  }) {
    if (lastNameChanged != null) {
      return lastNameChanged(lastName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(ObscureChanged value) obscureChanged,
    required TResult Function(SubmitPressed value) submitPressed,
  }) {
    return lastNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(FirstNameChanged value)? firstNameChanged,
    TResult? Function(LastNameChanged value)? lastNameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(ObscureChanged value)? obscureChanged,
    TResult? Function(SubmitPressed value)? submitPressed,
  }) {
    return lastNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(ObscureChanged value)? obscureChanged,
    TResult Function(SubmitPressed value)? submitPressed,
    required TResult orElse(),
  }) {
    if (lastNameChanged != null) {
      return lastNameChanged(this);
    }
    return orElse();
  }
}

abstract class LastNameChanged implements SignUpEvent {
  const factory LastNameChanged(final String lastName) = _$LastNameChangedImpl;

  String get lastName;
  @JsonKey(ignore: true)
  _$$LastNameChangedImplCopyWith<_$LastNameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordChangedImplCopyWith<$Res> {
  factory _$$PasswordChangedImplCopyWith(_$PasswordChangedImpl value,
          $Res Function(_$PasswordChangedImpl) then) =
      __$$PasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$PasswordChangedImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$PasswordChangedImpl>
    implements _$$PasswordChangedImplCopyWith<$Res> {
  __$$PasswordChangedImplCopyWithImpl(
      _$PasswordChangedImpl _value, $Res Function(_$PasswordChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$PasswordChangedImpl(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChangedImpl implements PasswordChanged {
  const _$PasswordChangedImpl(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'SignUpEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChangedImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      __$$PasswordChangedImplCopyWithImpl<_$PasswordChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword, String password)
        confirmPasswordChanged,
    required TResult Function() obscureChanged,
    required TResult Function() submitPressed,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword, String password)?
        confirmPasswordChanged,
    TResult? Function()? obscureChanged,
    TResult? Function()? submitPressed,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword, String password)?
        confirmPasswordChanged,
    TResult Function()? obscureChanged,
    TResult Function()? submitPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(ObscureChanged value) obscureChanged,
    required TResult Function(SubmitPressed value) submitPressed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(FirstNameChanged value)? firstNameChanged,
    TResult? Function(LastNameChanged value)? lastNameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(ObscureChanged value)? obscureChanged,
    TResult? Function(SubmitPressed value)? submitPressed,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(ObscureChanged value)? obscureChanged,
    TResult Function(SubmitPressed value)? submitPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements SignUpEvent {
  const factory PasswordChanged(final String password) = _$PasswordChangedImpl;

  String get password;
  @JsonKey(ignore: true)
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConfirmPasswordChangedImplCopyWith<$Res> {
  factory _$$ConfirmPasswordChangedImplCopyWith(
          _$ConfirmPasswordChangedImpl value,
          $Res Function(_$ConfirmPasswordChangedImpl) then) =
      __$$ConfirmPasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String confirmPassword, String password});
}

/// @nodoc
class __$$ConfirmPasswordChangedImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$ConfirmPasswordChangedImpl>
    implements _$$ConfirmPasswordChangedImplCopyWith<$Res> {
  __$$ConfirmPasswordChangedImplCopyWithImpl(
      _$ConfirmPasswordChangedImpl _value,
      $Res Function(_$ConfirmPasswordChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? confirmPassword = null,
    Object? password = null,
  }) {
    return _then(_$ConfirmPasswordChangedImpl(
      null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConfirmPasswordChangedImpl implements ConfirmPasswordChanged {
  const _$ConfirmPasswordChangedImpl(this.confirmPassword, this.password);

  @override
  final String confirmPassword;
  @override
  final String password;

  @override
  String toString() {
    return 'SignUpEvent.confirmPasswordChanged(confirmPassword: $confirmPassword, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmPasswordChangedImpl &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, confirmPassword, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmPasswordChangedImplCopyWith<_$ConfirmPasswordChangedImpl>
      get copyWith => __$$ConfirmPasswordChangedImplCopyWithImpl<
          _$ConfirmPasswordChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword, String password)
        confirmPasswordChanged,
    required TResult Function() obscureChanged,
    required TResult Function() submitPressed,
  }) {
    return confirmPasswordChanged(confirmPassword, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword, String password)?
        confirmPasswordChanged,
    TResult? Function()? obscureChanged,
    TResult? Function()? submitPressed,
  }) {
    return confirmPasswordChanged?.call(confirmPassword, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword, String password)?
        confirmPasswordChanged,
    TResult Function()? obscureChanged,
    TResult Function()? submitPressed,
    required TResult orElse(),
  }) {
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(confirmPassword, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(ObscureChanged value) obscureChanged,
    required TResult Function(SubmitPressed value) submitPressed,
  }) {
    return confirmPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(FirstNameChanged value)? firstNameChanged,
    TResult? Function(LastNameChanged value)? lastNameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(ObscureChanged value)? obscureChanged,
    TResult? Function(SubmitPressed value)? submitPressed,
  }) {
    return confirmPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(ObscureChanged value)? obscureChanged,
    TResult Function(SubmitPressed value)? submitPressed,
    required TResult orElse(),
  }) {
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class ConfirmPasswordChanged implements SignUpEvent {
  const factory ConfirmPasswordChanged(
          final String confirmPassword, final String password) =
      _$ConfirmPasswordChangedImpl;

  String get confirmPassword;
  String get password;
  @JsonKey(ignore: true)
  _$$ConfirmPasswordChangedImplCopyWith<_$ConfirmPasswordChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ObscureChangedImplCopyWith<$Res> {
  factory _$$ObscureChangedImplCopyWith(_$ObscureChangedImpl value,
          $Res Function(_$ObscureChangedImpl) then) =
      __$$ObscureChangedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ObscureChangedImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$ObscureChangedImpl>
    implements _$$ObscureChangedImplCopyWith<$Res> {
  __$$ObscureChangedImplCopyWithImpl(
      _$ObscureChangedImpl _value, $Res Function(_$ObscureChangedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ObscureChangedImpl implements ObscureChanged {
  const _$ObscureChangedImpl();

  @override
  String toString() {
    return 'SignUpEvent.obscureChanged()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ObscureChangedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword, String password)
        confirmPasswordChanged,
    required TResult Function() obscureChanged,
    required TResult Function() submitPressed,
  }) {
    return obscureChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword, String password)?
        confirmPasswordChanged,
    TResult? Function()? obscureChanged,
    TResult? Function()? submitPressed,
  }) {
    return obscureChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword, String password)?
        confirmPasswordChanged,
    TResult Function()? obscureChanged,
    TResult Function()? submitPressed,
    required TResult orElse(),
  }) {
    if (obscureChanged != null) {
      return obscureChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(ObscureChanged value) obscureChanged,
    required TResult Function(SubmitPressed value) submitPressed,
  }) {
    return obscureChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(FirstNameChanged value)? firstNameChanged,
    TResult? Function(LastNameChanged value)? lastNameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(ObscureChanged value)? obscureChanged,
    TResult? Function(SubmitPressed value)? submitPressed,
  }) {
    return obscureChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(ObscureChanged value)? obscureChanged,
    TResult Function(SubmitPressed value)? submitPressed,
    required TResult orElse(),
  }) {
    if (obscureChanged != null) {
      return obscureChanged(this);
    }
    return orElse();
  }
}

abstract class ObscureChanged implements SignUpEvent {
  const factory ObscureChanged() = _$ObscureChangedImpl;
}

/// @nodoc
abstract class _$$SubmitPressedImplCopyWith<$Res> {
  factory _$$SubmitPressedImplCopyWith(
          _$SubmitPressedImpl value, $Res Function(_$SubmitPressedImpl) then) =
      __$$SubmitPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitPressedImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$SubmitPressedImpl>
    implements _$$SubmitPressedImplCopyWith<$Res> {
  __$$SubmitPressedImplCopyWithImpl(
      _$SubmitPressedImpl _value, $Res Function(_$SubmitPressedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SubmitPressedImpl implements SubmitPressed {
  const _$SubmitPressedImpl();

  @override
  String toString() {
    return 'SignUpEvent.submitPressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmitPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword, String password)
        confirmPasswordChanged,
    required TResult Function() obscureChanged,
    required TResult Function() submitPressed,
  }) {
    return submitPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword, String password)?
        confirmPasswordChanged,
    TResult? Function()? obscureChanged,
    TResult? Function()? submitPressed,
  }) {
    return submitPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword, String password)?
        confirmPasswordChanged,
    TResult Function()? obscureChanged,
    TResult Function()? submitPressed,
    required TResult orElse(),
  }) {
    if (submitPressed != null) {
      return submitPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(ObscureChanged value) obscureChanged,
    required TResult Function(SubmitPressed value) submitPressed,
  }) {
    return submitPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(FirstNameChanged value)? firstNameChanged,
    TResult? Function(LastNameChanged value)? lastNameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(ObscureChanged value)? obscureChanged,
    TResult? Function(SubmitPressed value)? submitPressed,
  }) {
    return submitPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(ObscureChanged value)? obscureChanged,
    TResult Function(SubmitPressed value)? submitPressed,
    required TResult orElse(),
  }) {
    if (submitPressed != null) {
      return submitPressed(this);
    }
    return orElse();
  }
}

abstract class SubmitPressed implements SignUpEvent {
  const factory SubmitPressed() = _$SubmitPressedImpl;
}

/// @nodoc
mixin _$SignUpState {
  InputEmptyOrNot get firstName => throw _privateConstructorUsedError;
  InputEmptyOrNot get lastName => throw _privateConstructorUsedError;
  EmailAddress get email => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  ConfirmPassword get confirmPassword => throw _privateConstructorUsedError;
  bool get isObscure => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get showError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpStateCopyWith<SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res, SignUpState>;
  @useResult
  $Res call(
      {InputEmptyOrNot firstName,
      InputEmptyOrNot lastName,
      EmailAddress email,
      Password password,
      ConfirmPassword confirmPassword,
      bool isObscure,
      bool isSubmitting,
      bool showError});
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res, $Val extends SignUpState>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? isObscure = null,
    Object? isSubmitting = null,
    Object? showError = null,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as InputEmptyOrNot,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as InputEmptyOrNot,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmPassword,
      isObscure: null == isObscure
          ? _value.isObscure
          : isObscure // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpStateImplCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$$SignUpStateImplCopyWith(
          _$SignUpStateImpl value, $Res Function(_$SignUpStateImpl) then) =
      __$$SignUpStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {InputEmptyOrNot firstName,
      InputEmptyOrNot lastName,
      EmailAddress email,
      Password password,
      ConfirmPassword confirmPassword,
      bool isObscure,
      bool isSubmitting,
      bool showError});
}

/// @nodoc
class __$$SignUpStateImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpStateImpl>
    implements _$$SignUpStateImplCopyWith<$Res> {
  __$$SignUpStateImplCopyWithImpl(
      _$SignUpStateImpl _value, $Res Function(_$SignUpStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? isObscure = null,
    Object? isSubmitting = null,
    Object? showError = null,
  }) {
    return _then(_$SignUpStateImpl(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as InputEmptyOrNot,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as InputEmptyOrNot,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmPassword,
      isObscure: null == isObscure
          ? _value.isObscure
          : isObscure // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SignUpStateImpl implements _SignUpState {
  _$SignUpStateImpl(
      {required this.firstName,
      required this.lastName,
      required this.email,
      required this.password,
      required this.confirmPassword,
      required this.isObscure,
      required this.isSubmitting,
      required this.showError});

  @override
  final InputEmptyOrNot firstName;
  @override
  final InputEmptyOrNot lastName;
  @override
  final EmailAddress email;
  @override
  final Password password;
  @override
  final ConfirmPassword confirmPassword;
  @override
  final bool isObscure;
  @override
  final bool isSubmitting;
  @override
  final bool showError;

  @override
  String toString() {
    return 'SignUpState(firstName: $firstName, lastName: $lastName, email: $email, password: $password, confirmPassword: $confirmPassword, isObscure: $isObscure, isSubmitting: $isSubmitting, showError: $showError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpStateImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.isObscure, isObscure) ||
                other.isObscure == isObscure) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.showError, showError) ||
                other.showError == showError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, email,
      password, confirmPassword, isObscure, isSubmitting, showError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpStateImplCopyWith<_$SignUpStateImpl> get copyWith =>
      __$$SignUpStateImplCopyWithImpl<_$SignUpStateImpl>(this, _$identity);
}

abstract class _SignUpState implements SignUpState {
  factory _SignUpState(
      {required final InputEmptyOrNot firstName,
      required final InputEmptyOrNot lastName,
      required final EmailAddress email,
      required final Password password,
      required final ConfirmPassword confirmPassword,
      required final bool isObscure,
      required final bool isSubmitting,
      required final bool showError}) = _$SignUpStateImpl;

  @override
  InputEmptyOrNot get firstName;
  @override
  InputEmptyOrNot get lastName;
  @override
  EmailAddress get email;
  @override
  Password get password;
  @override
  ConfirmPassword get confirmPassword;
  @override
  bool get isObscure;
  @override
  bool get isSubmitting;
  @override
  bool get showError;
  @override
  @JsonKey(ignore: true)
  _$$SignUpStateImplCopyWith<_$SignUpStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
