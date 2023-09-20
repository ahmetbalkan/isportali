import 'dart:convert';

import 'package:isportal/data/local/local_key_storage.dart';
import 'package:isportal/data/models/auth_models/check_response_model.dart';
import 'package:isportal/data/models/auth_models/created_users/created_user_model.dart';

import 'package:isportal/data/models/auth_models/sms_result_model.dart';

import 'package:isportal/data/repositories/api_provider.dart';
import 'package:uuid/uuid.dart';

class AuthRepository extends ApiProvider {
  LocalStorageService localStorageService = LocalStorageService();

  Future<SmsResult> sendSms({required String phoneNumber}) async {
    try {
      final response = await postWithQueryParams(
        'HaveAJob/SendSms',
        {'phoneNumber': phoneNumber},
      );

      bool isSuccess = response['IsSuccess'];
      String? data = isSuccess ? response['Data'] : "";

      return SmsResult(isSuccess: isSuccess, data: data);
    } catch (e) {
      return SmsResult(isSuccess: false, data: "");
    }
  }

  Future<CheckResponse> verificationCode(
      {required String key, required String code}) async {
    try {
      final response = await postWithQueryParams(
        'HaveAJob/Check',
        {'key': key, 'code': code},
      );

      bool isSuccess = response['IsSuccess'];
      String data = response['Data'];
      List<dynamic> messageListData =
          response['MessageList'] ?? []; // null kontrolü

      List<Message> messageList = messageListData
          .map((message) => Message.fromJson(message as Map<String, dynamic>))
          .toList();

      return CheckResponse(
          isSuccess: isSuccess, data: data, messageList: messageList);
    } catch (e) {
      print('Error sending SMS: $e');
      return CheckResponse(isSuccess: false, data: "", messageList: []);
    }
  }

  Future<CreatedUserModel> createMembership({
    String? firstname,
    String? lastname,
    String? phone,
  }) async {
    try {
      var uuid = const Uuid();
      var guid = uuid.v1();

      final response = await postWithData("User/CreateMembership", {
        "DeviceID": guid,
        "ClientIP": "1.1.1.1",
        "FirstName": firstname,
        "LastName": lastname,
        "Email": "$guid@yenibiris.com",
        "ReEmail": "$guid@yenibiris.com",
        "Password": guid,
        "AllowCampaign": "true"
      });

      var rawJson = jsonDecode(response.body);

      var user = CreatedUserModel.fromJson(rawJson);

      await localStorageService.setValue("key", user.data?.ticket ?? "");

      return user;
    } catch (e) {
      print("createMembership repo: $e");
      throw Exception('createMembership Error: $e');
    }
  }

  Future<CreatedUserModel> mailLogin({
    String? email,
    String? password,
  }) async {
    try {
      var uuid = const Uuid();
      var guid = uuid.v1();

      final response = await postWithData("User/LoginRememberMe", {
        "DeviceID": guid,
        "ClientIP": "1.1.1.1",
        "Email": email,
        "Password": password,
      });

      var rawJson = jsonDecode(response.body);

      var user = CreatedUserModel.fromJson(rawJson);

      await localStorageService.setValue("key", user.data?.ticket ?? "");

      return user;
    } catch (e) {
      print("mailLogin repo: $e");
      throw Exception('mailLogin Error: $e');
    }
  }

  Future<CreatedUserModel> GetMembershipInfo() async {
    var key = await localStorageService.getValue("key");
    print("key$key");
    try {
      final response = await postWithData("User/GetMembershipInfo", {
        "Ticket": key,
      });

      var rawJson = jsonDecode(response.body);

      var user = CreatedUserModel.fromJson(rawJson);

      return user;
    } catch (e) {
      print("GetMembershipInfo repo: $e");
      throw Exception('GetMembershipInfo Error: $e');
    }
  }
}
