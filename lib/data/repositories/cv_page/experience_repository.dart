import 'dart:convert';
import 'package:isportal/data/local/local_key_storage.dart';
import 'package:isportal/data/models/cv_models/cv_models/experience_model/education_selectable_data.dart';
import 'package:isportal/data/models/cv_models/cv_models/experience_model/experience_model.dart';
import 'package:isportal/data/repositories/api_provider.dart';

class ExperienceRepository extends ApiProvider {
  LocalStorageService localStorageService = LocalStorageService();

  Future<bool> addExperience(ExperienceModel ExperienceModel) async {
    var key = await localStorageService.getValue("key");

    try {
      var queryParameters = {
        'cvHtml': '23424',
        'ticket': key ?? "",
      };

      var response = await postWithDataAndParams(
        endpoint: 'Cv/SaveExperience',
        data: {},
        queryParameters: queryParameters,
      );

      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print("addExperience repo: $e");
      throw Exception('addExperience Error: $e');
    }
  }

  Future<bool> editExperience(Map<String, Object?> ExperienceMap) async {
    var key = await localStorageService.getValue("key");

    try {
      var queryParameters = {
        'cvHtml': '23424',
        'ticket': key ?? "",
      };

      var response = await postWithDataAndParams(
        endpoint: 'Cv/SaveExperience',
        data: ExperienceMap,
        queryParameters: queryParameters,
      );

      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print("addExperience repo: $e");
      throw Exception('addExperience Error: $e');
    }
  }

  Future<bool> deleteExperience(
      {required String? cvID,
      required String? ExperienceID,
      required String? ExperienceLevel}) async {
    var key = await localStorageService.getValue("key");
    try {
      final response = await postWithQueryParams("Cv/RemoveExperience", {
        "ticket": key,
        "cvID": cvID,
        "ExperienceID": ExperienceID,
        "ExperienceLevel": ExperienceLevel
      });

      bool isSuccess = response['IsSuccess'];

      return isSuccess;
    } catch (e) {
      print("deleteExperience repo: $e");
      throw Exception('deleteExperience Error: $e');
    }
  }

  Future<List<ExperienceModel>> getExperienceList(
      {required String cvID}) async {
    var key = await localStorageService.getValue("key");

    try {
      final response =
          await getWithQueryParams("Cv/Get", {"Ticket": key, "cvID": cvID});

      print("cvid $cvID");
      print("ticket $key");

      var rawJson = jsonDecode(response.body)['Data']["ExperienceList"];

      List<ExperienceModel> ExperienceList = List<ExperienceModel>.from(
          rawJson.map((item) => ExperienceModel.fromJson(item)));

      return ExperienceList;
    } catch (e) {
      print("getExperienceList repo: $e");
      throw Exception('getExperienceList Error: $e');
    }
  }

  Future<ExperienceSelectableDataModel> getSelectableValue() async {
    try {
      final response = await postWithData("Lookup/GetList", {
        "TypeNameList[0]": "Company",
        "TypeNameList[1]": "Position",
        "TypeNameList[2]": "Sector",
        "TypeNameList[3]": "JobCategory",
        "TypeNameList[4]": "WorkingType",
        "TypeNameList[5]": "PositionLevel",
        "TypeNameList[6]": "City",
      });

      var rawJson = jsonDecode(response.body)["Data"];

      ExperienceSelectableDataModel cvCreateDataModel =
          ExperienceSelectableDataModel.fromJson(rawJson);

      return cvCreateDataModel;
    } catch (e) {
      print("getSelectableValue repo: $e");
      throw Exception('getSelectableValue Error: $e');
    }
  }
}
