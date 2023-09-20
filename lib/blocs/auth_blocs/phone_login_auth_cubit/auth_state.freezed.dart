// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  AuthStatus get loginStatus => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get countdown => throw _privateConstructorUsedError;
  SmsResult get smsResult => throw _privateConstructorUsedError;
  CreatedUserModel get createdUserModel => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {AuthStatus loginStatus,
      String phone,
      String countdown,
      SmsResult smsResult,
      CreatedUserModel createdUserModel,
      String errorMessage});

  $AuthStatusCopyWith<$Res> get loginStatus;
  $CreatedUserModelCopyWith<$Res> get createdUserModel;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginStatus = null,
    Object? phone = null,
    Object? countdown = null,
    Object? smsResult = null,
    Object? createdUserModel = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      loginStatus: null == loginStatus
          ? _value.loginStatus
          : loginStatus // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      countdown: null == countdown
          ? _value.countdown
          : countdown // ignore: cast_nullable_to_non_nullable
              as String,
      smsResult: null == smsResult
          ? _value.smsResult
          : smsResult // ignore: cast_nullable_to_non_nullable
              as SmsResult,
      createdUserModel: null == createdUserModel
          ? _value.createdUserModel
          : createdUserModel // ignore: cast_nullable_to_non_nullable
              as CreatedUserModel,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthStatusCopyWith<$Res> get loginStatus {
    return $AuthStatusCopyWith<$Res>(_value.loginStatus, (value) {
      return _then(_value.copyWith(loginStatus: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CreatedUserModelCopyWith<$Res> get createdUserModel {
    return $CreatedUserModelCopyWith<$Res>(_value.createdUserModel, (value) {
      return _then(_value.copyWith(createdUserModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AuthStatus loginStatus,
      String phone,
      String countdown,
      SmsResult smsResult,
      CreatedUserModel createdUserModel,
      String errorMessage});

  @override
  $AuthStatusCopyWith<$Res> get loginStatus;
  @override
  $CreatedUserModelCopyWith<$Res> get createdUserModel;
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginStatus = null,
    Object? phone = null,
    Object? countdown = null,
    Object? smsResult = null,
    Object? createdUserModel = null,
    Object? errorMessage = null,
  }) {
    return _then(_$_AuthState(
      loginStatus: null == loginStatus
          ? _value.loginStatus
          : loginStatus // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      countdown: null == countdown
          ? _value.countdown
          : countdown // ignore: cast_nullable_to_non_nullable
              as String,
      smsResult: null == smsResult
          ? _value.smsResult
          : smsResult // ignore: cast_nullable_to_non_nullable
              as SmsResult,
      createdUserModel: null == createdUserModel
          ? _value.createdUserModel
          : createdUserModel // ignore: cast_nullable_to_non_nullable
              as CreatedUserModel,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthState extends _AuthState {
  const _$_AuthState(
      {required this.loginStatus,
      required this.phone,
      required this.countdown,
      required this.smsResult,
      required this.createdUserModel,
      required this.errorMessage})
      : super._();

  @override
  final AuthStatus loginStatus;
  @override
  final String phone;
  @override
  final String countdown;
  @override
  final SmsResult smsResult;
  @override
  final CreatedUserModel createdUserModel;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AuthState(loginStatus: $loginStatus, phone: $phone, countdown: $countdown, smsResult: $smsResult, createdUserModel: $createdUserModel, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.loginStatus, loginStatus) ||
                other.loginStatus == loginStatus) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.countdown, countdown) ||
                other.countdown == countdown) &&
            (identical(other.smsResult, smsResult) ||
                other.smsResult == smsResult) &&
            (identical(other.createdUserModel, createdUserModel) ||
                other.createdUserModel == createdUserModel) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginStatus, phone, countdown,
      smsResult, createdUserModel, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState extends AuthState {
  const factory _AuthState(
      {required final AuthStatus loginStatus,
      required final String phone,
      required final String countdown,
      required final SmsResult smsResult,
      required final CreatedUserModel createdUserModel,
      required final String errorMessage}) = _$_AuthState;
  const _AuthState._() : super._();

  @override
  AuthStatus get loginStatus;
  @override
  String get phone;
  @override
  String get countdown;
  @override
  SmsResult get smsResult;
  @override
  CreatedUserModel get createdUserModel;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() code,
    required TResult Function() personaldetails,
    required TResult Function() loading,
    required TResult Function() complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? code,
    TResult? Function()? personaldetails,
    TResult? Function()? loading,
    TResult? Function()? complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? code,
    TResult Function()? personaldetails,
    TResult Function()? loading,
    TResult Function()? complete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_login value) login,
    required TResult Function(_code value) code,
    required TResult Function(_personaldetails value) personaldetails,
    required TResult Function(_loading value) loading,
    required TResult Function(_complete value) complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_login value)? login,
    TResult? Function(_code value)? code,
    TResult? Function(_personaldetails value)? personaldetails,
    TResult? Function(_loading value)? loading,
    TResult? Function(_complete value)? complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_login value)? login,
    TResult Function(_code value)? code,
    TResult Function(_personaldetails value)? personaldetails,
    TResult Function(_loading value)? loading,
    TResult Function(_complete value)? complete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStatusCopyWith<$Res> {
  factory $AuthStatusCopyWith(
          AuthStatus value, $Res Function(AuthStatus) then) =
      _$AuthStatusCopyWithImpl<$Res, AuthStatus>;
}

/// @nodoc
class _$AuthStatusCopyWithImpl<$Res, $Val extends AuthStatus>
    implements $AuthStatusCopyWith<$Res> {
  _$AuthStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_loginCopyWith<$Res> {
  factory _$$_loginCopyWith(_$_login value, $Res Function(_$_login) then) =
      __$$_loginCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_loginCopyWithImpl<$Res>
    extends _$AuthStatusCopyWithImpl<$Res, _$_login>
    implements _$$_loginCopyWith<$Res> {
  __$$_loginCopyWithImpl(_$_login _value, $Res Function(_$_login) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_login implements _login {
  const _$_login();

  @override
  String toString() {
    return 'AuthStatus.login()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_login);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() code,
    required TResult Function() personaldetails,
    required TResult Function() loading,
    required TResult Function() complete,
  }) {
    return login();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? code,
    TResult? Function()? personaldetails,
    TResult? Function()? loading,
    TResult? Function()? complete,
  }) {
    return login?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? code,
    TResult Function()? personaldetails,
    TResult Function()? loading,
    TResult Function()? complete,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_login value) login,
    required TResult Function(_code value) code,
    required TResult Function(_personaldetails value) personaldetails,
    required TResult Function(_loading value) loading,
    required TResult Function(_complete value) complete,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_login value)? login,
    TResult? Function(_code value)? code,
    TResult? Function(_personaldetails value)? personaldetails,
    TResult? Function(_loading value)? loading,
    TResult? Function(_complete value)? complete,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_login value)? login,
    TResult Function(_code value)? code,
    TResult Function(_personaldetails value)? personaldetails,
    TResult Function(_loading value)? loading,
    TResult Function(_complete value)? complete,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _login implements AuthStatus {
  const factory _login() = _$_login;
}

/// @nodoc
abstract class _$$_codeCopyWith<$Res> {
  factory _$$_codeCopyWith(_$_code value, $Res Function(_$_code) then) =
      __$$_codeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_codeCopyWithImpl<$Res>
    extends _$AuthStatusCopyWithImpl<$Res, _$_code>
    implements _$$_codeCopyWith<$Res> {
  __$$_codeCopyWithImpl(_$_code _value, $Res Function(_$_code) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_code implements _code {
  const _$_code();

  @override
  String toString() {
    return 'AuthStatus.code()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_code);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() code,
    required TResult Function() personaldetails,
    required TResult Function() loading,
    required TResult Function() complete,
  }) {
    return code();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? code,
    TResult? Function()? personaldetails,
    TResult? Function()? loading,
    TResult? Function()? complete,
  }) {
    return code?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? code,
    TResult Function()? personaldetails,
    TResult Function()? loading,
    TResult Function()? complete,
    required TResult orElse(),
  }) {
    if (code != null) {
      return code();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_login value) login,
    required TResult Function(_code value) code,
    required TResult Function(_personaldetails value) personaldetails,
    required TResult Function(_loading value) loading,
    required TResult Function(_complete value) complete,
  }) {
    return code(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_login value)? login,
    TResult? Function(_code value)? code,
    TResult? Function(_personaldetails value)? personaldetails,
    TResult? Function(_loading value)? loading,
    TResult? Function(_complete value)? complete,
  }) {
    return code?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_login value)? login,
    TResult Function(_code value)? code,
    TResult Function(_personaldetails value)? personaldetails,
    TResult Function(_loading value)? loading,
    TResult Function(_complete value)? complete,
    required TResult orElse(),
  }) {
    if (code != null) {
      return code(this);
    }
    return orElse();
  }
}

abstract class _code implements AuthStatus {
  const factory _code() = _$_code;
}

/// @nodoc
abstract class _$$_personaldetailsCopyWith<$Res> {
  factory _$$_personaldetailsCopyWith(
          _$_personaldetails value, $Res Function(_$_personaldetails) then) =
      __$$_personaldetailsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_personaldetailsCopyWithImpl<$Res>
    extends _$AuthStatusCopyWithImpl<$Res, _$_personaldetails>
    implements _$$_personaldetailsCopyWith<$Res> {
  __$$_personaldetailsCopyWithImpl(
      _$_personaldetails _value, $Res Function(_$_personaldetails) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_personaldetails implements _personaldetails {
  const _$_personaldetails();

  @override
  String toString() {
    return 'AuthStatus.personaldetails()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_personaldetails);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() code,
    required TResult Function() personaldetails,
    required TResult Function() loading,
    required TResult Function() complete,
  }) {
    return personaldetails();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? code,
    TResult? Function()? personaldetails,
    TResult? Function()? loading,
    TResult? Function()? complete,
  }) {
    return personaldetails?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? code,
    TResult Function()? personaldetails,
    TResult Function()? loading,
    TResult Function()? complete,
    required TResult orElse(),
  }) {
    if (personaldetails != null) {
      return personaldetails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_login value) login,
    required TResult Function(_code value) code,
    required TResult Function(_personaldetails value) personaldetails,
    required TResult Function(_loading value) loading,
    required TResult Function(_complete value) complete,
  }) {
    return personaldetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_login value)? login,
    TResult? Function(_code value)? code,
    TResult? Function(_personaldetails value)? personaldetails,
    TResult? Function(_loading value)? loading,
    TResult? Function(_complete value)? complete,
  }) {
    return personaldetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_login value)? login,
    TResult Function(_code value)? code,
    TResult Function(_personaldetails value)? personaldetails,
    TResult Function(_loading value)? loading,
    TResult Function(_complete value)? complete,
    required TResult orElse(),
  }) {
    if (personaldetails != null) {
      return personaldetails(this);
    }
    return orElse();
  }
}

abstract class _personaldetails implements AuthStatus {
  const factory _personaldetails() = _$_personaldetails;
}

/// @nodoc
abstract class _$$_loadingCopyWith<$Res> {
  factory _$$_loadingCopyWith(
          _$_loading value, $Res Function(_$_loading) then) =
      __$$_loadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_loadingCopyWithImpl<$Res>
    extends _$AuthStatusCopyWithImpl<$Res, _$_loading>
    implements _$$_loadingCopyWith<$Res> {
  __$$_loadingCopyWithImpl(_$_loading _value, $Res Function(_$_loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_loading implements _loading {
  const _$_loading();

  @override
  String toString() {
    return 'AuthStatus.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() code,
    required TResult Function() personaldetails,
    required TResult Function() loading,
    required TResult Function() complete,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? code,
    TResult? Function()? personaldetails,
    TResult? Function()? loading,
    TResult? Function()? complete,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? code,
    TResult Function()? personaldetails,
    TResult Function()? loading,
    TResult Function()? complete,
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
    required TResult Function(_login value) login,
    required TResult Function(_code value) code,
    required TResult Function(_personaldetails value) personaldetails,
    required TResult Function(_loading value) loading,
    required TResult Function(_complete value) complete,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_login value)? login,
    TResult? Function(_code value)? code,
    TResult? Function(_personaldetails value)? personaldetails,
    TResult? Function(_loading value)? loading,
    TResult? Function(_complete value)? complete,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_login value)? login,
    TResult Function(_code value)? code,
    TResult Function(_personaldetails value)? personaldetails,
    TResult Function(_loading value)? loading,
    TResult Function(_complete value)? complete,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _loading implements AuthStatus {
  const factory _loading() = _$_loading;
}

/// @nodoc
abstract class _$$_completeCopyWith<$Res> {
  factory _$$_completeCopyWith(
          _$_complete value, $Res Function(_$_complete) then) =
      __$$_completeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_completeCopyWithImpl<$Res>
    extends _$AuthStatusCopyWithImpl<$Res, _$_complete>
    implements _$$_completeCopyWith<$Res> {
  __$$_completeCopyWithImpl(
      _$_complete _value, $Res Function(_$_complete) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_complete implements _complete {
  const _$_complete();

  @override
  String toString() {
    return 'AuthStatus.complete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_complete);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() code,
    required TResult Function() personaldetails,
    required TResult Function() loading,
    required TResult Function() complete,
  }) {
    return complete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? code,
    TResult? Function()? personaldetails,
    TResult? Function()? loading,
    TResult? Function()? complete,
  }) {
    return complete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? code,
    TResult Function()? personaldetails,
    TResult Function()? loading,
    TResult Function()? complete,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_login value) login,
    required TResult Function(_code value) code,
    required TResult Function(_personaldetails value) personaldetails,
    required TResult Function(_loading value) loading,
    required TResult Function(_complete value) complete,
  }) {
    return complete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_login value)? login,
    TResult? Function(_code value)? code,
    TResult? Function(_personaldetails value)? personaldetails,
    TResult? Function(_loading value)? loading,
    TResult? Function(_complete value)? complete,
  }) {
    return complete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_login value)? login,
    TResult Function(_code value)? code,
    TResult Function(_personaldetails value)? personaldetails,
    TResult Function(_loading value)? loading,
    TResult Function(_complete value)? complete,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(this);
    }
    return orElse();
  }
}

abstract class _complete implements AuthStatus {
  const factory _complete() = _$_complete;
}
