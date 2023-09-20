import 'dart:convert';
import 'package:isportal/data/local/local_key_storage.dart';
import 'package:isportal/data/models/cv_models/cv_models/education_model/education_model.dart';
import 'package:isportal/data/models/cv_models/cv_models/education_model/education_selectable_data.dart';
import 'package:isportal/data/repositories/api_provider.dart';

class EducationRepository extends ApiProvider {
  LocalStorageService localStorageService = LocalStorageService();

  Future<bool> addEducation(EducationModel educationModel) async {
    var key = await localStorageService.getValue("key");

    print("lower${educationModel.department}");

    try {
      var queryParameters = {
        'cvHtml': '23424',
        'ticket': key ?? "",
      };

      var response = await postWithDataAndParams(
        endpoint: 'Cv/SaveEducation',
        data: educationModel.toJson(),
        queryParameters: queryParameters,
      );

      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print("addEducation repo: $e");
      throw Exception('addEducation Error: $e');
    }
  }

  Future<bool> editEducation(Map<String, Object?> educationMap) async {
    var key = await localStorageService.getValue("key");

    try {
      var queryParameters = {
        'cvHtml': '23424',
        'ticket': key ?? "",
      };

      var response = await postWithDataAndParams(
        endpoint: 'Cv/SaveEducation',
        data: educationMap,
        queryParameters: queryParameters,
      );

      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print("addEducation repo: $e");
      throw Exception('addEducation Error: $e');
    }
  }

  Future<bool> deleteEducation(
      {required String? cvID,
      required String? educationID,
      required String? educationLevel}) async {
    var key = await localStorageService.getValue("key");
    try {
      final response = await postWithQueryParams("Cv/RemoveEducation", {
        "ticket": key,
        "cvID": cvID,
        "educationID": educationID,
        "educationLevel": educationLevel
      });

      bool isSuccess = response['IsSuccess'];

      return isSuccess;
    } catch (e) {
      print("deleteEducation repo: $e");
      throw Exception('deleteEducation Error: $e');
    }
  }

  Future<List<EducationModel>> getEducationList({required String cvID}) async {
    var key = await localStorageService.getValue("key");

    try {
      final response =
          await getWithQueryParams("Cv/Get", {"Ticket": key, "cvID": cvID});

      print("cvid $cvID");
      print("ticket $key");

      var rawJson = jsonDecode(response.body)['Data']["EducationList"];

      List<EducationModel> educationList = List<EducationModel>.from(
          rawJson.map((item) => EducationModel.fromJson(item)));

      return educationList;
    } catch (e) {
      print("getEducationList repo: $e");
      throw Exception('getEducationList Error: $e');
    }
  }

  Future<EducationSelectableDataModel> getSelectableValue() async {
    try {
      final response = await postWithData("Lookup/GetList", {
        "TypeNameList[0]": "City",
        "TypeNameList[1]": "University",
        "TypeNameList[2]": "UniversityDepartment",
        "TypeNameList[3]": "EducationRank",
      });

      var rawJson = jsonDecode(response.body)["Data"];

      EducationSelectableDataModel cvCreateDataModel =
          EducationSelectableDataModel.fromJson(rawJson);

      return cvCreateDataModel;
    } catch (e) {
      print("getSelectableValue repo: $e");
      throw Exception('getSelectableValue Error: $e');
    }
  }
}
