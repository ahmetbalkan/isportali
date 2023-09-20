import 'package:isportal/data/models/auth_models/created_users/created_user_model.dart';
import 'package:isportal/data/models/auth_models/sms_result_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required AuthStatus loginStatus,
    required String phone,
    required String countdown,
    required SmsResult smsResult,
    required CreatedUserModel createdUserModel,
    required String errorMessage,
  }) = _AuthState;

  const AuthState._();
}

@freezed
class AuthStatus with _$AuthStatus {
  const factory AuthStatus.login() = _login;
  const factory AuthStatus.code() = _code;
  const factory AuthStatus.personaldetails() = _personaldetails;
  const factory AuthStatus.loading() = _loading;
  const factory AuthStatus.complete() = _complete;
}
