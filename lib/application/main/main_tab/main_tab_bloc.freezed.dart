// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_tab_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainTabState {
  int get selectedTab => throw _privateConstructorUsedError;
  int get pageIndex => throw _privateConstructorUsedError;
  String get homePage => throw _privateConstructorUsedError;
  String get myAccountPage => throw _privateConstructorUsedError;
  String get favouritesPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainTabStateCopyWith<MainTabState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainTabStateCopyWith<$Res> {
  factory $MainTabStateCopyWith(
          MainTabState value, $Res Function(MainTabState) then) =
      _$MainTabStateCopyWithImpl<$Res, MainTabState>;
  @useResult
  $Res call(
      {int selectedTab,
      int pageIndex,
      String homePage,
      String myAccountPage,
      String favouritesPage});
}

/// @nodoc
class _$MainTabStateCopyWithImpl<$Res, $Val extends MainTabState>
    implements $MainTabStateCopyWith<$Res> {
  _$MainTabStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTab = null,
    Object? pageIndex = null,
    Object? homePage = null,
    Object? myAccountPage = null,
    Object? favouritesPage = null,
  }) {
    return _then(_value.copyWith(
      selectedTab: null == selectedTab
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as int,
      pageIndex: null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      homePage: null == homePage
          ? _value.homePage
          : homePage // ignore: cast_nullable_to_non_nullable
              as String,
      myAccountPage: null == myAccountPage
          ? _value.myAccountPage
          : myAccountPage // ignore: cast_nullable_to_non_nullable
              as String,
      favouritesPage: null == favouritesPage
          ? _value.favouritesPage
          : favouritesPage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainTabStateImplCopyWith<$Res>
    implements $MainTabStateCopyWith<$Res> {
  factory _$$MainTabStateImplCopyWith(
          _$MainTabStateImpl value, $Res Function(_$MainTabStateImpl) then) =
      __$$MainTabStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int selectedTab,
      int pageIndex,
      String homePage,
      String myAccountPage,
      String favouritesPage});
}

/// @nodoc
class __$$MainTabStateImplCopyWithImpl<$Res>
    extends _$MainTabStateCopyWithImpl<$Res, _$MainTabStateImpl>
    implements _$$MainTabStateImplCopyWith<$Res> {
  __$$MainTabStateImplCopyWithImpl(
      _$MainTabStateImpl _value, $Res Function(_$MainTabStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTab = null,
    Object? pageIndex = null,
    Object? homePage = null,
    Object? myAccountPage = null,
    Object? favouritesPage = null,
  }) {
    return _then(_$MainTabStateImpl(
      selectedTab: null == selectedTab
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as int,
      pageIndex: null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      homePage: null == homePage
          ? _value.homePage
          : homePage // ignore: cast_nullable_to_non_nullable
              as String,
      myAccountPage: null == myAccountPage
          ? _value.myAccountPage
          : myAccountPage // ignore: cast_nullable_to_non_nullable
              as String,
      favouritesPage: null == favouritesPage
          ? _value.favouritesPage
          : favouritesPage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MainTabStateImpl implements _MainTabState {
  _$MainTabStateImpl(
      {required this.selectedTab,
      required this.pageIndex,
      required this.homePage,
      required this.myAccountPage,
      required this.favouritesPage});

  @override
  final int selectedTab;
  @override
  final int pageIndex;
  @override
  final String homePage;
  @override
  final String myAccountPage;
  @override
  final String favouritesPage;

  @override
  String toString() {
    return 'MainTabState(selectedTab: $selectedTab, pageIndex: $pageIndex, homePage: $homePage, myAccountPage: $myAccountPage, favouritesPage: $favouritesPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainTabStateImpl &&
            (identical(other.selectedTab, selectedTab) ||
                other.selectedTab == selectedTab) &&
            (identical(other.pageIndex, pageIndex) ||
                other.pageIndex == pageIndex) &&
            (identical(other.homePage, homePage) ||
                other.homePage == homePage) &&
            (identical(other.myAccountPage, myAccountPage) ||
                other.myAccountPage == myAccountPage) &&
            (identical(other.favouritesPage, favouritesPage) ||
                other.favouritesPage == favouritesPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedTab, pageIndex, homePage,
      myAccountPage, favouritesPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainTabStateImplCopyWith<_$MainTabStateImpl> get copyWith =>
      __$$MainTabStateImplCopyWithImpl<_$MainTabStateImpl>(this, _$identity);
}

abstract class _MainTabState implements MainTabState {
  factory _MainTabState(
      {required final int selectedTab,
      required final int pageIndex,
      required final String homePage,
      required final String myAccountPage,
      required final String favouritesPage}) = _$MainTabStateImpl;

  @override
  int get selectedTab;
  @override
  int get pageIndex;
  @override
  String get homePage;
  @override
  String get myAccountPage;
  @override
  String get favouritesPage;
  @override
  @JsonKey(ignore: true)
  _$$MainTabStateImplCopyWith<_$MainTabStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MainTabEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int tabIndex) tabChange,
    required TResult Function(String fcmToken) registerForPush,
    required TResult Function(BuildContext context) pushNotificationInitialize,
    required TResult Function(BuildContext context) initDynamicLink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int tabIndex)? tabChange,
    TResult? Function(String fcmToken)? registerForPush,
    TResult? Function(BuildContext context)? pushNotificationInitialize,
    TResult? Function(BuildContext context)? initDynamicLink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int tabIndex)? tabChange,
    TResult Function(String fcmToken)? registerForPush,
    TResult Function(BuildContext context)? pushNotificationInitialize,
    TResult Function(BuildContext context)? initDynamicLink,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TabChange value) tabChange,
    required TResult Function(RegisterForPush value) registerForPush,
    required TResult Function(PushNotificationInitialize value)
        pushNotificationInitialize,
    required TResult Function(InitDynamicLink value) initDynamicLink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TabChange value)? tabChange,
    TResult? Function(RegisterForPush value)? registerForPush,
    TResult? Function(PushNotificationInitialize value)?
        pushNotificationInitialize,
    TResult? Function(InitDynamicLink value)? initDynamicLink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TabChange value)? tabChange,
    TResult Function(RegisterForPush value)? registerForPush,
    TResult Function(PushNotificationInitialize value)?
        pushNotificationInitialize,
    TResult Function(InitDynamicLink value)? initDynamicLink,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainTabEventCopyWith<$Res> {
  factory $MainTabEventCopyWith(
          MainTabEvent value, $Res Function(MainTabEvent) then) =
      _$MainTabEventCopyWithImpl<$Res, MainTabEvent>;
}

/// @nodoc
class _$MainTabEventCopyWithImpl<$Res, $Val extends MainTabEvent>
    implements $MainTabEventCopyWith<$Res> {
  _$MainTabEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TabChangeImplCopyWith<$Res> {
  factory _$$TabChangeImplCopyWith(
          _$TabChangeImpl value, $Res Function(_$TabChangeImpl) then) =
      __$$TabChangeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int tabIndex});
}

/// @nodoc
class __$$TabChangeImplCopyWithImpl<$Res>
    extends _$MainTabEventCopyWithImpl<$Res, _$TabChangeImpl>
    implements _$$TabChangeImplCopyWith<$Res> {
  __$$TabChangeImplCopyWithImpl(
      _$TabChangeImpl _value, $Res Function(_$TabChangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabIndex = null,
  }) {
    return _then(_$TabChangeImpl(
      null == tabIndex
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TabChangeImpl implements TabChange {
  _$TabChangeImpl(this.tabIndex);

  @override
  final int tabIndex;

  @override
  String toString() {
    return 'MainTabEvent.tabChange(tabIndex: $tabIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TabChangeImpl &&
            (identical(other.tabIndex, tabIndex) ||
                other.tabIndex == tabIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tabIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TabChangeImplCopyWith<_$TabChangeImpl> get copyWith =>
      __$$TabChangeImplCopyWithImpl<_$TabChangeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int tabIndex) tabChange,
    required TResult Function(String fcmToken) registerForPush,
    required TResult Function(BuildContext context) pushNotificationInitialize,
    required TResult Function(BuildContext context) initDynamicLink,
  }) {
    return tabChange(tabIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int tabIndex)? tabChange,
    TResult? Function(String fcmToken)? registerForPush,
    TResult? Function(BuildContext context)? pushNotificationInitialize,
    TResult? Function(BuildContext context)? initDynamicLink,
  }) {
    return tabChange?.call(tabIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int tabIndex)? tabChange,
    TResult Function(String fcmToken)? registerForPush,
    TResult Function(BuildContext context)? pushNotificationInitialize,
    TResult Function(BuildContext context)? initDynamicLink,
    required TResult orElse(),
  }) {
    if (tabChange != null) {
      return tabChange(tabIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TabChange value) tabChange,
    required TResult Function(RegisterForPush value) registerForPush,
    required TResult Function(PushNotificationInitialize value)
        pushNotificationInitialize,
    required TResult Function(InitDynamicLink value) initDynamicLink,
  }) {
    return tabChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TabChange value)? tabChange,
    TResult? Function(RegisterForPush value)? registerForPush,
    TResult? Function(PushNotificationInitialize value)?
        pushNotificationInitialize,
    TResult? Function(InitDynamicLink value)? initDynamicLink,
  }) {
    return tabChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TabChange value)? tabChange,
    TResult Function(RegisterForPush value)? registerForPush,
    TResult Function(PushNotificationInitialize value)?
        pushNotificationInitialize,
    TResult Function(InitDynamicLink value)? initDynamicLink,
    required TResult orElse(),
  }) {
    if (tabChange != null) {
      return tabChange(this);
    }
    return orElse();
  }
}

abstract class TabChange implements MainTabEvent {
  factory TabChange(final int tabIndex) = _$TabChangeImpl;

  int get tabIndex;
  @JsonKey(ignore: true)
  _$$TabChangeImplCopyWith<_$TabChangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterForPushImplCopyWith<$Res> {
  factory _$$RegisterForPushImplCopyWith(_$RegisterForPushImpl value,
          $Res Function(_$RegisterForPushImpl) then) =
      __$$RegisterForPushImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String fcmToken});
}

/// @nodoc
class __$$RegisterForPushImplCopyWithImpl<$Res>
    extends _$MainTabEventCopyWithImpl<$Res, _$RegisterForPushImpl>
    implements _$$RegisterForPushImplCopyWith<$Res> {
  __$$RegisterForPushImplCopyWithImpl(
      _$RegisterForPushImpl _value, $Res Function(_$RegisterForPushImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmToken = null,
  }) {
    return _then(_$RegisterForPushImpl(
      null == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterForPushImpl implements RegisterForPush {
  _$RegisterForPushImpl(this.fcmToken);

  @override
  final String fcmToken;

  @override
  String toString() {
    return 'MainTabEvent.registerForPush(fcmToken: $fcmToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterForPushImpl &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fcmToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterForPushImplCopyWith<_$RegisterForPushImpl> get copyWith =>
      __$$RegisterForPushImplCopyWithImpl<_$RegisterForPushImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int tabIndex) tabChange,
    required TResult Function(String fcmToken) registerForPush,
    required TResult Function(BuildContext context) pushNotificationInitialize,
    required TResult Function(BuildContext context) initDynamicLink,
  }) {
    return registerForPush(fcmToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int tabIndex)? tabChange,
    TResult? Function(String fcmToken)? registerForPush,
    TResult? Function(BuildContext context)? pushNotificationInitialize,
    TResult? Function(BuildContext context)? initDynamicLink,
  }) {
    return registerForPush?.call(fcmToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int tabIndex)? tabChange,
    TResult Function(String fcmToken)? registerForPush,
    TResult Function(BuildContext context)? pushNotificationInitialize,
    TResult Function(BuildContext context)? initDynamicLink,
    required TResult orElse(),
  }) {
    if (registerForPush != null) {
      return registerForPush(fcmToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TabChange value) tabChange,
    required TResult Function(RegisterForPush value) registerForPush,
    required TResult Function(PushNotificationInitialize value)
        pushNotificationInitialize,
    required TResult Function(InitDynamicLink value) initDynamicLink,
  }) {
    return registerForPush(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TabChange value)? tabChange,
    TResult? Function(RegisterForPush value)? registerForPush,
    TResult? Function(PushNotificationInitialize value)?
        pushNotificationInitialize,
    TResult? Function(InitDynamicLink value)? initDynamicLink,
  }) {
    return registerForPush?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TabChange value)? tabChange,
    TResult Function(RegisterForPush value)? registerForPush,
    TResult Function(PushNotificationInitialize value)?
        pushNotificationInitialize,
    TResult Function(InitDynamicLink value)? initDynamicLink,
    required TResult orElse(),
  }) {
    if (registerForPush != null) {
      return registerForPush(this);
    }
    return orElse();
  }
}

abstract class RegisterForPush implements MainTabEvent {
  factory RegisterForPush(final String fcmToken) = _$RegisterForPushImpl;

  String get fcmToken;
  @JsonKey(ignore: true)
  _$$RegisterForPushImplCopyWith<_$RegisterForPushImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PushNotificationInitializeImplCopyWith<$Res> {
  factory _$$PushNotificationInitializeImplCopyWith(
          _$PushNotificationInitializeImpl value,
          $Res Function(_$PushNotificationInitializeImpl) then) =
      __$$PushNotificationInitializeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$PushNotificationInitializeImplCopyWithImpl<$Res>
    extends _$MainTabEventCopyWithImpl<$Res, _$PushNotificationInitializeImpl>
    implements _$$PushNotificationInitializeImplCopyWith<$Res> {
  __$$PushNotificationInitializeImplCopyWithImpl(
      _$PushNotificationInitializeImpl _value,
      $Res Function(_$PushNotificationInitializeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$PushNotificationInitializeImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$PushNotificationInitializeImpl implements PushNotificationInitialize {
  _$PushNotificationInitializeImpl(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'MainTabEvent.pushNotificationInitialize(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PushNotificationInitializeImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PushNotificationInitializeImplCopyWith<_$PushNotificationInitializeImpl>
      get copyWith => __$$PushNotificationInitializeImplCopyWithImpl<
          _$PushNotificationInitializeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int tabIndex) tabChange,
    required TResult Function(String fcmToken) registerForPush,
    required TResult Function(BuildContext context) pushNotificationInitialize,
    required TResult Function(BuildContext context) initDynamicLink,
  }) {
    return pushNotificationInitialize(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int tabIndex)? tabChange,
    TResult? Function(String fcmToken)? registerForPush,
    TResult? Function(BuildContext context)? pushNotificationInitialize,
    TResult? Function(BuildContext context)? initDynamicLink,
  }) {
    return pushNotificationInitialize?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int tabIndex)? tabChange,
    TResult Function(String fcmToken)? registerForPush,
    TResult Function(BuildContext context)? pushNotificationInitialize,
    TResult Function(BuildContext context)? initDynamicLink,
    required TResult orElse(),
  }) {
    if (pushNotificationInitialize != null) {
      return pushNotificationInitialize(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TabChange value) tabChange,
    required TResult Function(RegisterForPush value) registerForPush,
    required TResult Function(PushNotificationInitialize value)
        pushNotificationInitialize,
    required TResult Function(InitDynamicLink value) initDynamicLink,
  }) {
    return pushNotificationInitialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TabChange value)? tabChange,
    TResult? Function(RegisterForPush value)? registerForPush,
    TResult? Function(PushNotificationInitialize value)?
        pushNotificationInitialize,
    TResult? Function(InitDynamicLink value)? initDynamicLink,
  }) {
    return pushNotificationInitialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TabChange value)? tabChange,
    TResult Function(RegisterForPush value)? registerForPush,
    TResult Function(PushNotificationInitialize value)?
        pushNotificationInitialize,
    TResult Function(InitDynamicLink value)? initDynamicLink,
    required TResult orElse(),
  }) {
    if (pushNotificationInitialize != null) {
      return pushNotificationInitialize(this);
    }
    return orElse();
  }
}

abstract class PushNotificationInitialize implements MainTabEvent {
  factory PushNotificationInitialize(final BuildContext context) =
      _$PushNotificationInitializeImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$PushNotificationInitializeImplCopyWith<_$PushNotificationInitializeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitDynamicLinkImplCopyWith<$Res> {
  factory _$$InitDynamicLinkImplCopyWith(_$InitDynamicLinkImpl value,
          $Res Function(_$InitDynamicLinkImpl) then) =
      __$$InitDynamicLinkImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$InitDynamicLinkImplCopyWithImpl<$Res>
    extends _$MainTabEventCopyWithImpl<$Res, _$InitDynamicLinkImpl>
    implements _$$InitDynamicLinkImplCopyWith<$Res> {
  __$$InitDynamicLinkImplCopyWithImpl(
      _$InitDynamicLinkImpl _value, $Res Function(_$InitDynamicLinkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$InitDynamicLinkImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$InitDynamicLinkImpl implements InitDynamicLink {
  _$InitDynamicLinkImpl(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'MainTabEvent.initDynamicLink(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitDynamicLinkImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitDynamicLinkImplCopyWith<_$InitDynamicLinkImpl> get copyWith =>
      __$$InitDynamicLinkImplCopyWithImpl<_$InitDynamicLinkImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int tabIndex) tabChange,
    required TResult Function(String fcmToken) registerForPush,
    required TResult Function(BuildContext context) pushNotificationInitialize,
    required TResult Function(BuildContext context) initDynamicLink,
  }) {
    return initDynamicLink(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int tabIndex)? tabChange,
    TResult? Function(String fcmToken)? registerForPush,
    TResult? Function(BuildContext context)? pushNotificationInitialize,
    TResult? Function(BuildContext context)? initDynamicLink,
  }) {
    return initDynamicLink?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int tabIndex)? tabChange,
    TResult Function(String fcmToken)? registerForPush,
    TResult Function(BuildContext context)? pushNotificationInitialize,
    TResult Function(BuildContext context)? initDynamicLink,
    required TResult orElse(),
  }) {
    if (initDynamicLink != null) {
      return initDynamicLink(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TabChange value) tabChange,
    required TResult Function(RegisterForPush value) registerForPush,
    required TResult Function(PushNotificationInitialize value)
        pushNotificationInitialize,
    required TResult Function(InitDynamicLink value) initDynamicLink,
  }) {
    return initDynamicLink(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TabChange value)? tabChange,
    TResult? Function(RegisterForPush value)? registerForPush,
    TResult? Function(PushNotificationInitialize value)?
        pushNotificationInitialize,
    TResult? Function(InitDynamicLink value)? initDynamicLink,
  }) {
    return initDynamicLink?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TabChange value)? tabChange,
    TResult Function(RegisterForPush value)? registerForPush,
    TResult Function(PushNotificationInitialize value)?
        pushNotificationInitialize,
    TResult Function(InitDynamicLink value)? initDynamicLink,
    required TResult orElse(),
  }) {
    if (initDynamicLink != null) {
      return initDynamicLink(this);
    }
    return orElse();
  }
}

abstract class InitDynamicLink implements MainTabEvent {
  factory InitDynamicLink(final BuildContext context) = _$InitDynamicLinkImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$InitDynamicLinkImplCopyWith<_$InitDynamicLinkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
