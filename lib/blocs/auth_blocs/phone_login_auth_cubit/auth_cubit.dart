import 'dart:async';

import 'package:isportal/blocs/auth_blocs/phone_login_auth_cubit/auth_state.dart';
import 'package:isportal/data/local/local_key_storage.dart';
import 'package:isportal/data/models/auth_models/created_users/created_user_model.dart';
import 'package:isportal/data/models/auth_models/sms_result_model.dart';
import 'package:isportal/data/repositories/authentication_repository.dart';
import 'package:isportal/utils/string_extention.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit({
    required AuthRepository authRepository,
  })  : _authRepository = authRepository,
        super(AuthState(
          errorMessage: "",
          countdown: "120",
          phone: "",
          createdUserModel: CreatedUserModel(),
          smsResult: SmsResult(isSuccess: false, data: ""),
          loginStatus: const AuthStatus.login(),
        )) {
    LocalStorageService localStorageService = LocalStorageService();

    getPersonalData();
  }

  final AuthRepository _authRepository;

  phoneSend(String phoneNumber) async {
    try {
      emit(state.copyWith(
          loginStatus: const AuthStatus.loading(), phone: phoneNumber));

      var result = await _authRepository.sendSms(phoneNumber: phoneNumber);

      if (result.isSuccess) {
        startCountdown();
        emit(state.copyWith(
            smsResult: result, loginStatus: const AuthStatus.code()));
      } else {
        emit(state.copyWith(
            smsResult: result,
            loginStatus: const AuthStatus.login(),
            errorMessage:
                "Numaranızda bir hata oluştu lütfen kontrol ederek tekrar deneyin."));
      }
    } catch (e) {
      emit(state.copyWith(
          loginStatus: const AuthStatus.login(),
          errorMessage: "Bir Hatayla karşılaşıldı. Tekrar deneyiniz."));
    }
  }

  authCode(String code) async {
    try {
      emit(state.copyWith(loginStatus: const AuthStatus.loading()));
      var result = await _authRepository.verificationCode(
          code: code, key: state.smsResult.data!.splitAfterOk());

      if (result.isSuccess) {
        emit(state.copyWith(
          loginStatus: const AuthStatus.personaldetails(),
        ));
      } else {
        emit(state.copyWith(
            loginStatus: const AuthStatus.login(),
            errorMessage: "Code gönderilemedi"));
      }
    } catch (e) {
      emit(state.copyWith(
          loginStatus: const AuthStatus.login(),
          errorMessage: "Bir Hatayla karşılaşıldı. Tekrar deneyiniz."));
    }
  }

  savePersonalData(String firstname, String lastname) async {
    try {
      emit(state.copyWith(loginStatus: const AuthStatus.loading()));
      var result = await _authRepository.createMembership(
          firstname: firstname, lastname: lastname, phone: state.phone);

      if (result.isSuccess) {
        emit(state.copyWith(
            loginStatus: const AuthStatus.complete(),
            createdUserModel: result));
      } else {
        emit(state.copyWith(
            loginStatus: const AuthStatus.login(),
            errorMessage: "Code gönderilemedi"));
      }
    } catch (e) {
      emit(state.copyWith(
          loginStatus: const AuthStatus.login(),
          errorMessage: "Bir Hatayla karşılaşıldı. Tekrar deneyiniz."));
    }
  }

  mailLogin(String email, String password) async {
    try {
      emit(state.copyWith(loginStatus: const AuthStatus.loading()));
      var result =
          await _authRepository.mailLogin(email: email, password: password);

      if (result.isSuccess) {
        emit(state.copyWith(
            loginStatus: const AuthStatus.complete(),
            errorMessage: "",
            createdUserModel: result));
      } else {
        emit(state.copyWith(
            loginStatus: const AuthStatus.login(),
            errorMessage:
                "Giriş yapılamadı. Lütfen bilgilerinizi kontrol ediniz."));
      }
    } catch (e) {
      emit(state.copyWith(
          loginStatus: const AuthStatus.login(),
          errorMessage:
              "Giriş yapılamadı. Lütfen bilgilerinizi kontrol ediniz."));
    }
  }

  getPersonalData() async {
    LocalStorageService localStorageService = LocalStorageService();

    print(localStorageService.getValue("key"));
    try {
      emit(state.copyWith(loginStatus: const AuthStatus.loading()));
      var result = await _authRepository.GetMembershipInfo();
      if (result.isSuccess) {
        emit(state.copyWith(
            loginStatus: const AuthStatus.complete(),
            createdUserModel: result));
      } else {
        emit(state.copyWith(
            loginStatus: const AuthStatus.login(),
            errorMessage: "Code gönderilemedi"));
      }
    } catch (e) {
      emit(state.copyWith(
        loginStatus: const AuthStatus.login(),
      ));
    }
  }

  void startCountdown() {
    const oneSec = Duration(seconds: 1);
    int start = 120;

    Timer.periodic(oneSec, (Timer timer) {
      if (start < 1) {
        timer.cancel();
        emit(state.copyWith(
            loginStatus: const AuthStatus.login(), countdown: '0'));
      } else {
        start = start - 1;
        emit(state.copyWith(countdown: start.toString()));
      }
    });
  }
}
