// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EditProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProfileDetail,
    required TResult Function(String email) emailChanged,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String displayName) displayNameChanged,
    required TResult Function() submitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProfileDetail,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String displayName)? displayNameChanged,
    TResult? Function()? submitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProfileDetail,
    TResult Function(String email)? emailChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String displayName)? displayNameChanged,
    TResult Function()? submitPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProfileDetail value) getProfileDetail,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(DisplayNameChanged value) displayNameChanged,
    required TResult Function(SubmitPressed value) submitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetProfileDetail value)? getProfileDetail,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(FirstNameChanged value)? firstNameChanged,
    TResult? Function(LastNameChanged value)? lastNameChanged,
    TResult? Function(DisplayNameChanged value)? displayNameChanged,
    TResult? Function(SubmitPressed value)? submitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProfileDetail value)? getProfileDetail,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(DisplayNameChanged value)? displayNameChanged,
    TResult Function(SubmitPressed value)? submitPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileEventCopyWith<$Res> {
  factory $EditProfileEventCopyWith(
          EditProfileEvent value, $Res Function(EditProfileEvent) then) =
      _$EditProfileEventCopyWithImpl<$Res, EditProfileEvent>;
}

/// @nodoc
class _$EditProfileEventCopyWithImpl<$Res, $Val extends EditProfileEvent>
    implements $EditProfileEventCopyWith<$Res> {
  _$EditProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetProfileDetailImplCopyWith<$Res> {
  factory _$$GetProfileDetailImplCopyWith(_$GetProfileDetailImpl value,
          $Res Function(_$GetProfileDetailImpl) then) =
      __$$GetProfileDetailImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetProfileDetailImplCopyWithImpl<$Res>
    extends _$EditProfileEventCopyWithImpl<$Res, _$GetProfileDetailImpl>
    implements _$$GetProfileDetailImplCopyWith<$Res> {
  __$$GetProfileDetailImplCopyWithImpl(_$GetProfileDetailImpl _value,
      $Res Function(_$GetProfileDetailImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetProfileDetailImpl implements GetProfileDetail {
  const _$GetProfileDetailImpl();

  @override
  String toString() {
    return 'EditProfileEvent.getProfileDetail()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetProfileDetailImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProfileDetail,
    required TResult Function(String email) emailChanged,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String displayName) displayNameChanged,
    required TResult Function() submitPressed,
  }) {
    return getProfileDetail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProfileDetail,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String displayName)? displayNameChanged,
    TResult? Function()? submitPressed,
  }) {
    return getProfileDetail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProfileDetail,
    TResult Function(String email)? emailChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String displayName)? displayNameChanged,
    TResult Function()? submitPressed,
    required TResult orElse(),
  }) {
    if (getProfileDetail != null) {
      return getProfileDetail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProfileDetail value) getProfileDetail,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(DisplayNameChanged value) displayNameChanged,
    required TResult Function(SubmitPressed value) submitPressed,
  }) {
    return getProfileDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetProfileDetail value)? getProfileDetail,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(FirstNameChanged value)? firstNameChanged,
    TResult? Function(LastNameChanged value)? lastNameChanged,
    TResult? Function(DisplayNameChanged value)? displayNameChanged,
    TResult? Function(SubmitPressed value)? submitPressed,
  }) {
    return getProfileDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProfileDetail value)? getProfileDetail,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(DisplayNameChanged value)? displayNameChanged,
    TResult Function(SubmitPressed value)? submitPressed,
    required TResult orElse(),
  }) {
    if (getProfileDetail != null) {
      return getProfileDetail(this);
    }
    return orElse();
  }
}

abstract class GetProfileDetail implements EditProfileEvent {
  const factory GetProfileDetail() = _$GetProfileDetailImpl;
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
    extends _$EditProfileEventCopyWithImpl<$Res, _$EmailChangedImpl>
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
    return 'EditProfileEvent.emailChanged(email: $email)';
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
    required TResult Function() getProfileDetail,
    required TResult Function(String email) emailChanged,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String displayName) displayNameChanged,
    required TResult Function() submitPressed,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProfileDetail,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String displayName)? displayNameChanged,
    TResult? Function()? submitPressed,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProfileDetail,
    TResult Function(String email)? emailChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String displayName)? displayNameChanged,
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
    required TResult Function(GetProfileDetail value) getProfileDetail,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(DisplayNameChanged value) displayNameChanged,
    required TResult Function(SubmitPressed value) submitPressed,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetProfileDetail value)? getProfileDetail,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(FirstNameChanged value)? firstNameChanged,
    TResult? Function(LastNameChanged value)? lastNameChanged,
    TResult? Function(DisplayNameChanged value)? displayNameChanged,
    TResult? Function(SubmitPressed value)? submitPressed,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProfileDetail value)? getProfileDetail,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(DisplayNameChanged value)? displayNameChanged,
    TResult Function(SubmitPressed value)? submitPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements EditProfileEvent {
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
    extends _$EditProfileEventCopyWithImpl<$Res, _$FirstNameChangedImpl>
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
    return 'EditProfileEvent.firstNameChanged(firstName: $firstName)';
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
    required TResult Function() getProfileDetail,
    required TResult Function(String email) emailChanged,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String displayName) displayNameChanged,
    required TResult Function() submitPressed,
  }) {
    return firstNameChanged(firstName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProfileDetail,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String displayName)? displayNameChanged,
    TResult? Function()? submitPressed,
  }) {
    return firstNameChanged?.call(firstName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProfileDetail,
    TResult Function(String email)? emailChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String displayName)? displayNameChanged,
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
    required TResult Function(GetProfileDetail value) getProfileDetail,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(DisplayNameChanged value) displayNameChanged,
    required TResult Function(SubmitPressed value) submitPressed,
  }) {
    return firstNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetProfileDetail value)? getProfileDetail,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(FirstNameChanged value)? firstNameChanged,
    TResult? Function(LastNameChanged value)? lastNameChanged,
    TResult? Function(DisplayNameChanged value)? displayNameChanged,
    TResult? Function(SubmitPressed value)? submitPressed,
  }) {
    return firstNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProfileDetail value)? getProfileDetail,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(DisplayNameChanged value)? displayNameChanged,
    TResult Function(SubmitPressed value)? submitPressed,
    required TResult orElse(),
  }) {
    if (firstNameChanged != null) {
      return firstNameChanged(this);
    }
    return orElse();
  }
}

abstract class FirstNameChanged implements EditProfileEvent {
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
    extends _$EditProfileEventCopyWithImpl<$Res, _$LastNameChangedImpl>
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
    return 'EditProfileEvent.lastNameChanged(lastName: $lastName)';
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
    required TResult Function() getProfileDetail,
    required TResult Function(String email) emailChanged,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String displayName) displayNameChanged,
    required TResult Function() submitPressed,
  }) {
    return lastNameChanged(lastName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProfileDetail,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String displayName)? displayNameChanged,
    TResult? Function()? submitPressed,
  }) {
    return lastNameChanged?.call(lastName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProfileDetail,
    TResult Function(String email)? emailChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String displayName)? displayNameChanged,
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
    required TResult Function(GetProfileDetail value) getProfileDetail,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(DisplayNameChanged value) displayNameChanged,
    required TResult Function(SubmitPressed value) submitPressed,
  }) {
    return lastNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetProfileDetail value)? getProfileDetail,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(FirstNameChanged value)? firstNameChanged,
    TResult? Function(LastNameChanged value)? lastNameChanged,
    TResult? Function(DisplayNameChanged value)? displayNameChanged,
    TResult? Function(SubmitPressed value)? submitPressed,
  }) {
    return lastNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProfileDetail value)? getProfileDetail,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(DisplayNameChanged value)? displayNameChanged,
    TResult Function(SubmitPressed value)? submitPressed,
    required TResult orElse(),
  }) {
    if (lastNameChanged != null) {
      return lastNameChanged(this);
    }
    return orElse();
  }
}

abstract class LastNameChanged implements EditProfileEvent {
  const factory LastNameChanged(final String lastName) = _$LastNameChangedImpl;

  String get lastName;
  @JsonKey(ignore: true)
  _$$LastNameChangedImplCopyWith<_$LastNameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DisplayNameChangedImplCopyWith<$Res> {
  factory _$$DisplayNameChangedImplCopyWith(_$DisplayNameChangedImpl value,
          $Res Function(_$DisplayNameChangedImpl) then) =
      __$$DisplayNameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String displayName});
}

/// @nodoc
class __$$DisplayNameChangedImplCopyWithImpl<$Res>
    extends _$EditProfileEventCopyWithImpl<$Res, _$DisplayNameChangedImpl>
    implements _$$DisplayNameChangedImplCopyWith<$Res> {
  __$$DisplayNameChangedImplCopyWithImpl(_$DisplayNameChangedImpl _value,
      $Res Function(_$DisplayNameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
  }) {
    return _then(_$DisplayNameChangedImpl(
      null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DisplayNameChangedImpl implements DisplayNameChanged {
  const _$DisplayNameChangedImpl(this.displayName);

  @override
  final String displayName;

  @override
  String toString() {
    return 'EditProfileEvent.displayNameChanged(displayName: $displayName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisplayNameChangedImpl &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, displayName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DisplayNameChangedImplCopyWith<_$DisplayNameChangedImpl> get copyWith =>
      __$$DisplayNameChangedImplCopyWithImpl<_$DisplayNameChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProfileDetail,
    required TResult Function(String email) emailChanged,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String displayName) displayNameChanged,
    required TResult Function() submitPressed,
  }) {
    return displayNameChanged(displayName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProfileDetail,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String displayName)? displayNameChanged,
    TResult? Function()? submitPressed,
  }) {
    return displayNameChanged?.call(displayName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProfileDetail,
    TResult Function(String email)? emailChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String displayName)? displayNameChanged,
    TResult Function()? submitPressed,
    required TResult orElse(),
  }) {
    if (displayNameChanged != null) {
      return displayNameChanged(displayName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProfileDetail value) getProfileDetail,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(DisplayNameChanged value) displayNameChanged,
    required TResult Function(SubmitPressed value) submitPressed,
  }) {
    return displayNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetProfileDetail value)? getProfileDetail,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(FirstNameChanged value)? firstNameChanged,
    TResult? Function(LastNameChanged value)? lastNameChanged,
    TResult? Function(DisplayNameChanged value)? displayNameChanged,
    TResult? Function(SubmitPressed value)? submitPressed,
  }) {
    return displayNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProfileDetail value)? getProfileDetail,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(DisplayNameChanged value)? displayNameChanged,
    TResult Function(SubmitPressed value)? submitPressed,
    required TResult orElse(),
  }) {
    if (displayNameChanged != null) {
      return displayNameChanged(this);
    }
    return orElse();
  }
}

abstract class DisplayNameChanged implements EditProfileEvent {
  const factory DisplayNameChanged(final String displayName) =
      _$DisplayNameChangedImpl;

  String get displayName;
  @JsonKey(ignore: true)
  _$$DisplayNameChangedImplCopyWith<_$DisplayNameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitPressedImplCopyWith<$Res> {
  factory _$$SubmitPressedImplCopyWith(
          _$SubmitPressedImpl value, $Res Function(_$SubmitPressedImpl) then) =
      __$$SubmitPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitPressedImplCopyWithImpl<$Res>
    extends _$EditProfileEventCopyWithImpl<$Res, _$SubmitPressedImpl>
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
    return 'EditProfileEvent.submitPressed()';
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
    required TResult Function() getProfileDetail,
    required TResult Function(String email) emailChanged,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String displayName) displayNameChanged,
    required TResult Function() submitPressed,
  }) {
    return submitPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProfileDetail,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String displayName)? displayNameChanged,
    TResult? Function()? submitPressed,
  }) {
    return submitPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProfileDetail,
    TResult Function(String email)? emailChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String displayName)? displayNameChanged,
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
    required TResult Function(GetProfileDetail value) getProfileDetail,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(DisplayNameChanged value) displayNameChanged,
    required TResult Function(SubmitPressed value) submitPressed,
  }) {
    return submitPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetProfileDetail value)? getProfileDetail,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(FirstNameChanged value)? firstNameChanged,
    TResult? Function(LastNameChanged value)? lastNameChanged,
    TResult? Function(DisplayNameChanged value)? displayNameChanged,
    TResult? Function(SubmitPressed value)? submitPressed,
  }) {
    return submitPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProfileDetail value)? getProfileDetail,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(DisplayNameChanged value)? displayNameChanged,
    TResult Function(SubmitPressed value)? submitPressed,
    required TResult orElse(),
  }) {
    if (submitPressed != null) {
      return submitPressed(this);
    }
    return orElse();
  }
}

abstract class SubmitPressed implements EditProfileEvent {
  const factory SubmitPressed() = _$SubmitPressedImpl;
}

/// @nodoc
mixin _$EditProfileState {
  EmailAddress get email => throw _privateConstructorUsedError;
  InputEmptyOrNot get firstName => throw _privateConstructorUsedError;
  InputEmptyOrNot get lastName => throw _privateConstructorUsedError;
  InputEmptyOrNot get displayName => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get showError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditProfileStateCopyWith<EditProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileStateCopyWith<$Res> {
  factory $EditProfileStateCopyWith(
          EditProfileState value, $Res Function(EditProfileState) then) =
      _$EditProfileStateCopyWithImpl<$Res, EditProfileState>;
  @useResult
  $Res call(
      {EmailAddress email,
      InputEmptyOrNot firstName,
      InputEmptyOrNot lastName,
      InputEmptyOrNot displayName,
      bool isSubmitting,
      bool isLoading,
      bool showError});
}

/// @nodoc
class _$EditProfileStateCopyWithImpl<$Res, $Val extends EditProfileState>
    implements $EditProfileStateCopyWith<$Res> {
  _$EditProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? displayName = null,
    Object? isSubmitting = null,
    Object? isLoading = null,
    Object? showError = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as InputEmptyOrNot,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as InputEmptyOrNot,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as InputEmptyOrNot,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditProfileStateImplCopyWith<$Res>
    implements $EditProfileStateCopyWith<$Res> {
  factory _$$EditProfileStateImplCopyWith(_$EditProfileStateImpl value,
          $Res Function(_$EditProfileStateImpl) then) =
      __$$EditProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmailAddress email,
      InputEmptyOrNot firstName,
      InputEmptyOrNot lastName,
      InputEmptyOrNot displayName,
      bool isSubmitting,
      bool isLoading,
      bool showError});
}

/// @nodoc
class __$$EditProfileStateImplCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res, _$EditProfileStateImpl>
    implements _$$EditProfileStateImplCopyWith<$Res> {
  __$$EditProfileStateImplCopyWithImpl(_$EditProfileStateImpl _value,
      $Res Function(_$EditProfileStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? displayName = null,
    Object? isSubmitting = null,
    Object? isLoading = null,
    Object? showError = null,
  }) {
    return _then(_$EditProfileStateImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as InputEmptyOrNot,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as InputEmptyOrNot,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as InputEmptyOrNot,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$EditProfileStateImpl implements _EditProfileState {
  _$EditProfileStateImpl(
      {required this.email,
      required this.firstName,
      required this.lastName,
      required this.displayName,
      required this.isSubmitting,
      required this.isLoading,
      required this.showError});

  @override
  final EmailAddress email;
  @override
  final InputEmptyOrNot firstName;
  @override
  final InputEmptyOrNot lastName;
  @override
  final InputEmptyOrNot displayName;
  @override
  final bool isSubmitting;
  @override
  final bool isLoading;
  @override
  final bool showError;

  @override
  String toString() {
    return 'EditProfileState(email: $email, firstName: $firstName, lastName: $lastName, displayName: $displayName, isSubmitting: $isSubmitting, isLoading: $isLoading, showError: $showError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileStateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.showError, showError) ||
                other.showError == showError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, firstName, lastName,
      displayName, isSubmitting, isLoading, showError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditProfileStateImplCopyWith<_$EditProfileStateImpl> get copyWith =>
      __$$EditProfileStateImplCopyWithImpl<_$EditProfileStateImpl>(
          this, _$identity);
}

abstract class _EditProfileState implements EditProfileState {
  factory _EditProfileState(
      {required final EmailAddress email,
      required final InputEmptyOrNot firstName,
      required final InputEmptyOrNot lastName,
      required final InputEmptyOrNot displayName,
      required final bool isSubmitting,
      required final bool isLoading,
      required final bool showError}) = _$EditProfileStateImpl;

  @override
  EmailAddress get email;
  @override
  InputEmptyOrNot get firstName;
  @override
  InputEmptyOrNot get lastName;
  @override
  InputEmptyOrNot get displayName;
  @override
  bool get isSubmitting;
  @override
  bool get isLoading;
  @override
  bool get showError;
  @override
  @JsonKey(ignore: true)
  _$$EditProfileStateImplCopyWith<_$EditProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
