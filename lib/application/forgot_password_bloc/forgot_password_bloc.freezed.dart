// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ForgotPasswordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) pageChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword, String password)
        confirmPasswordChanged,
    required TResult Function() obscureChanged,
    required TResult Function() submitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page)? pageChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword, String password)?
        confirmPasswordChanged,
    TResult? Function()? obscureChanged,
    TResult? Function()? submitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? pageChanged,
    TResult Function(String email)? emailChanged,
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
    required TResult Function(PageChanged value) pageChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(ObscureChanged value) obscureChanged,
    required TResult Function(SubmitPressed value) submitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PageChanged value)? pageChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(ObscureChanged value)? obscureChanged,
    TResult? Function(SubmitPressed value)? submitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PageChanged value)? pageChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(ObscureChanged value)? obscureChanged,
    TResult Function(SubmitPressed value)? submitPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordEventCopyWith<$Res> {
  factory $ForgotPasswordEventCopyWith(
          ForgotPasswordEvent value, $Res Function(ForgotPasswordEvent) then) =
      _$ForgotPasswordEventCopyWithImpl<$Res, ForgotPasswordEvent>;
}

/// @nodoc
class _$ForgotPasswordEventCopyWithImpl<$Res, $Val extends ForgotPasswordEvent>
    implements $ForgotPasswordEventCopyWith<$Res> {
  _$ForgotPasswordEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PageChangedImplCopyWith<$Res> {
  factory _$$PageChangedImplCopyWith(
          _$PageChangedImpl value, $Res Function(_$PageChangedImpl) then) =
      __$$PageChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int page});
}

/// @nodoc
class __$$PageChangedImplCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res, _$PageChangedImpl>
    implements _$$PageChangedImplCopyWith<$Res> {
  __$$PageChangedImplCopyWithImpl(
      _$PageChangedImpl _value, $Res Function(_$PageChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_$PageChangedImpl(
      null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PageChangedImpl implements PageChanged {
  const _$PageChangedImpl(this.page);

  @override
  final int page;

  @override
  String toString() {
    return 'ForgotPasswordEvent.pageChanged(page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageChangedImpl &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PageChangedImplCopyWith<_$PageChangedImpl> get copyWith =>
      __$$PageChangedImplCopyWithImpl<_$PageChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) pageChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword, String password)
        confirmPasswordChanged,
    required TResult Function() obscureChanged,
    required TResult Function() submitPressed,
  }) {
    return pageChanged(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page)? pageChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword, String password)?
        confirmPasswordChanged,
    TResult? Function()? obscureChanged,
    TResult? Function()? submitPressed,
  }) {
    return pageChanged?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? pageChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword, String password)?
        confirmPasswordChanged,
    TResult Function()? obscureChanged,
    TResult Function()? submitPressed,
    required TResult orElse(),
  }) {
    if (pageChanged != null) {
      return pageChanged(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PageChanged value) pageChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(ObscureChanged value) obscureChanged,
    required TResult Function(SubmitPressed value) submitPressed,
  }) {
    return pageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PageChanged value)? pageChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(ObscureChanged value)? obscureChanged,
    TResult? Function(SubmitPressed value)? submitPressed,
  }) {
    return pageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PageChanged value)? pageChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(ObscureChanged value)? obscureChanged,
    TResult Function(SubmitPressed value)? submitPressed,
    required TResult orElse(),
  }) {
    if (pageChanged != null) {
      return pageChanged(this);
    }
    return orElse();
  }
}

abstract class PageChanged implements ForgotPasswordEvent {
  const factory PageChanged(final int page) = _$PageChangedImpl;

  int get page;
  @JsonKey(ignore: true)
  _$$PageChangedImplCopyWith<_$PageChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$ForgotPasswordEventCopyWithImpl<$Res, _$EmailChangedImpl>
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
    return 'ForgotPasswordEvent.emailChanged(email: $email)';
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
    required TResult Function(int page) pageChanged,
    required TResult Function(String email) emailChanged,
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
    TResult? Function(int page)? pageChanged,
    TResult? Function(String email)? emailChanged,
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
    TResult Function(int page)? pageChanged,
    TResult Function(String email)? emailChanged,
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
    required TResult Function(PageChanged value) pageChanged,
    required TResult Function(EmailChanged value) emailChanged,
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
    TResult? Function(PageChanged value)? pageChanged,
    TResult? Function(EmailChanged value)? emailChanged,
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
    TResult Function(PageChanged value)? pageChanged,
    TResult Function(EmailChanged value)? emailChanged,
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

abstract class EmailChanged implements ForgotPasswordEvent {
  const factory EmailChanged(final String email) = _$EmailChangedImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
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
    extends _$ForgotPasswordEventCopyWithImpl<$Res, _$PasswordChangedImpl>
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
    return 'ForgotPasswordEvent.passwordChanged(password: $password)';
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
    required TResult Function(int page) pageChanged,
    required TResult Function(String email) emailChanged,
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
    TResult? Function(int page)? pageChanged,
    TResult? Function(String email)? emailChanged,
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
    TResult Function(int page)? pageChanged,
    TResult Function(String email)? emailChanged,
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
    required TResult Function(PageChanged value) pageChanged,
    required TResult Function(EmailChanged value) emailChanged,
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
    TResult? Function(PageChanged value)? pageChanged,
    TResult? Function(EmailChanged value)? emailChanged,
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
    TResult Function(PageChanged value)? pageChanged,
    TResult Function(EmailChanged value)? emailChanged,
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

abstract class PasswordChanged implements ForgotPasswordEvent {
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
    extends _$ForgotPasswordEventCopyWithImpl<$Res,
        _$ConfirmPasswordChangedImpl>
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
    return 'ForgotPasswordEvent.confirmPasswordChanged(confirmPassword: $confirmPassword, password: $password)';
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
    required TResult Function(int page) pageChanged,
    required TResult Function(String email) emailChanged,
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
    TResult? Function(int page)? pageChanged,
    TResult? Function(String email)? emailChanged,
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
    TResult Function(int page)? pageChanged,
    TResult Function(String email)? emailChanged,
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
    required TResult Function(PageChanged value) pageChanged,
    required TResult Function(EmailChanged value) emailChanged,
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
    TResult? Function(PageChanged value)? pageChanged,
    TResult? Function(EmailChanged value)? emailChanged,
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
    TResult Function(PageChanged value)? pageChanged,
    TResult Function(EmailChanged value)? emailChanged,
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

abstract class ConfirmPasswordChanged implements ForgotPasswordEvent {
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
    extends _$ForgotPasswordEventCopyWithImpl<$Res, _$ObscureChangedImpl>
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
    return 'ForgotPasswordEvent.obscureChanged()';
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
    required TResult Function(int page) pageChanged,
    required TResult Function(String email) emailChanged,
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
    TResult? Function(int page)? pageChanged,
    TResult? Function(String email)? emailChanged,
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
    TResult Function(int page)? pageChanged,
    TResult Function(String email)? emailChanged,
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
    required TResult Function(PageChanged value) pageChanged,
    required TResult Function(EmailChanged value) emailChanged,
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
    TResult? Function(PageChanged value)? pageChanged,
    TResult? Function(EmailChanged value)? emailChanged,
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
    TResult Function(PageChanged value)? pageChanged,
    TResult Function(EmailChanged value)? emailChanged,
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

abstract class ObscureChanged implements ForgotPasswordEvent {
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
    extends _$ForgotPasswordEventCopyWithImpl<$Res, _$SubmitPressedImpl>
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
    return 'ForgotPasswordEvent.submitPressed()';
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
    required TResult Function(int page) pageChanged,
    required TResult Function(String email) emailChanged,
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
    TResult? Function(int page)? pageChanged,
    TResult? Function(String email)? emailChanged,
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
    TResult Function(int page)? pageChanged,
    TResult Function(String email)? emailChanged,
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
    required TResult Function(PageChanged value) pageChanged,
    required TResult Function(EmailChanged value) emailChanged,
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
    TResult? Function(PageChanged value)? pageChanged,
    TResult? Function(EmailChanged value)? emailChanged,
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
    TResult Function(PageChanged value)? pageChanged,
    TResult Function(EmailChanged value)? emailChanged,
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

abstract class SubmitPressed implements ForgotPasswordEvent {
  const factory SubmitPressed() = _$SubmitPressedImpl;
}

/// @nodoc
mixin _$ForgotPasswordState {
  int get currentPage => throw _privateConstructorUsedError;
  EmailAddress get email => throw _privateConstructorUsedError;
  OTPText get otp => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  ConfirmPassword get confirmPassword => throw _privateConstructorUsedError;
  bool get isObscure => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get showError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgotPasswordStateCopyWith<ForgotPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordStateCopyWith<$Res> {
  factory $ForgotPasswordStateCopyWith(
          ForgotPasswordState value, $Res Function(ForgotPasswordState) then) =
      _$ForgotPasswordStateCopyWithImpl<$Res, ForgotPasswordState>;
  @useResult
  $Res call(
      {int currentPage,
      EmailAddress email,
      OTPText otp,
      Password password,
      ConfirmPassword confirmPassword,
      bool isObscure,
      bool isSubmitting,
      bool showError});
}

/// @nodoc
class _$ForgotPasswordStateCopyWithImpl<$Res, $Val extends ForgotPasswordState>
    implements $ForgotPasswordStateCopyWith<$Res> {
  _$ForgotPasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? email = null,
    Object? otp = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? isObscure = null,
    Object? isSubmitting = null,
    Object? showError = null,
  }) {
    return _then(_value.copyWith(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as OTPText,
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
abstract class _$$ForgotPasswordStateImplCopyWith<$Res>
    implements $ForgotPasswordStateCopyWith<$Res> {
  factory _$$ForgotPasswordStateImplCopyWith(_$ForgotPasswordStateImpl value,
          $Res Function(_$ForgotPasswordStateImpl) then) =
      __$$ForgotPasswordStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int currentPage,
      EmailAddress email,
      OTPText otp,
      Password password,
      ConfirmPassword confirmPassword,
      bool isObscure,
      bool isSubmitting,
      bool showError});
}

/// @nodoc
class __$$ForgotPasswordStateImplCopyWithImpl<$Res>
    extends _$ForgotPasswordStateCopyWithImpl<$Res, _$ForgotPasswordStateImpl>
    implements _$$ForgotPasswordStateImplCopyWith<$Res> {
  __$$ForgotPasswordStateImplCopyWithImpl(_$ForgotPasswordStateImpl _value,
      $Res Function(_$ForgotPasswordStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? email = null,
    Object? otp = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? isObscure = null,
    Object? isSubmitting = null,
    Object? showError = null,
  }) {
    return _then(_$ForgotPasswordStateImpl(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as OTPText,
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

class _$ForgotPasswordStateImpl implements _ForgotPasswordState {
  _$ForgotPasswordStateImpl(
      {required this.currentPage,
      required this.email,
      required this.otp,
      required this.password,
      required this.confirmPassword,
      required this.isObscure,
      required this.isSubmitting,
      required this.showError});

  @override
  final int currentPage;
  @override
  final EmailAddress email;
  @override
  final OTPText otp;
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
    return 'ForgotPasswordState(currentPage: $currentPage, email: $email, otp: $otp, password: $password, confirmPassword: $confirmPassword, isObscure: $isObscure, isSubmitting: $isSubmitting, showError: $showError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordStateImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.otp, otp) || other.otp == otp) &&
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
  int get hashCode => Object.hash(runtimeType, currentPage, email, otp,
      password, confirmPassword, isObscure, isSubmitting, showError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordStateImplCopyWith<_$ForgotPasswordStateImpl> get copyWith =>
      __$$ForgotPasswordStateImplCopyWithImpl<_$ForgotPasswordStateImpl>(
          this, _$identity);
}

abstract class _ForgotPasswordState implements ForgotPasswordState {
  factory _ForgotPasswordState(
      {required final int currentPage,
      required final EmailAddress email,
      required final OTPText otp,
      required final Password password,
      required final ConfirmPassword confirmPassword,
      required final bool isObscure,
      required final bool isSubmitting,
      required final bool showError}) = _$ForgotPasswordStateImpl;

  @override
  int get currentPage;
  @override
  EmailAddress get email;
  @override
  OTPText get otp;
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
  _$$ForgotPasswordStateImplCopyWith<_$ForgotPasswordStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
