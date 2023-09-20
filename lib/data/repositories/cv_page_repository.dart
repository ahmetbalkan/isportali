import 'dart:convert';
import 'package:isportal/data/local/local_key_storage.dart';
import 'package:isportal/data/models/cv_models/cv_list_model/cv_list_model.dart';
import 'package:isportal/data/models/cv_models/cv_models/main_model/main_cv_model.dart';
import 'package:isportal/data/models/cv_models/lookup_models/cv_create_selectable_data_model.dart';
import 'package:isportal/data/models/cv_models/lookup_models/cv_data_model.dart';
import 'package:isportal/data/repositories/api_provider.dart';
import 'package:http/http.dart' as http;

class CvRepository extends ApiProvider {
  LocalStorageService localStorageService = LocalStorageService();

  Future<void> getCvList1() async {
    try {
      String? ticket = await localStorageService.getValue('key');

      final response = await getWithQueryParams("Cv/GetUserProfile", {
        "ticket": ticket,
      });

      print(response);
    } catch (e) {
      print("getCvList error$e");
    }
  }

  Future<List<CvListModel>?> getCvList() async {
    try {
      String? ticket = await localStorageService.getValue('key');

      var response = await getWithQueryParams("Cv/GetUserProfile", {
        "ticket": ticket,
      });

      var data = jsonDecode(response.body)['Data']['CvList'];
      List<CvListModel> ads = List<CvListModel>.from(
          data.map((item) => CvListModel.fromJson(item)));

      return ads;
    } catch (e) {
      print("Sector repo: $e");
      throw Exception('Sector Error: $e');
    }
  }

  Future<MainCvModel> getCv({required String cvID}) async {
    var key = await localStorageService.getValue("key");
    try {
      final response =
          await getWithQueryParams("Cv/Get", {"Ticket": key, "cvID": cvID});

      var rawJson = jsonDecode(response.body);

      MainCvModel mainCvModel = MainCvModel.fromJson(rawJson);
      print("main cv$mainCvModel");
      return mainCvModel;
    } catch (e) {
      print("getCv repo: $e");
      throw Exception('getCv Error: $e');
    }
  }

  Future<CvCreateSelectableDataModel> getValue() async {
    try {
      final response = await postWithData("Lookup/GetList", {
        "TypeNameList[0]": "Country",
        "TypeNameList[1]": "City",
        "TypeNameList[2]": "University",
        "TypeNameList[3]": "UniversityDepartment",
        "TypeNameList[4]": "EducationRank",
        // "TypeNameList[2]": "Genders",
        // "TypeNameList[4]": "Position",
        // "TypeNameList[5]": "Sector",
        // "TypeNameList[6]": "WorkingType",
        // "TypeNameList[7]": "PositionLevel",
        // "TypeNameList[8]": "Language",
        //"TypeNameList[3]": "Engel Durumu",
        //"TypeNameList[6]": "İş Alanı",
        //"TypeNameList[10]": "Handicap Engel",
      });

      var rawJson = jsonDecode(response.body)["Data"];

      CvCreateSelectableDataModel cvCreateDataModel =
          CvCreateSelectableDataModel.fromJson(rawJson);
      return cvCreateDataModel;
    } catch (e) {
      print("getValue repo: $e");
      throw Exception('getValue Error: $e');
    }
  }

  Future<http.Response> postaRequest() async {
    const String url = 'https://www.yenibiris.com/api/Cv/SaveEducation';

    Map<String, dynamic> modelData = {
      "ID": 0,
      "CvID": 1091149,
      "EducationLevel": {
        "Name": "string",
        "Value": 0,
        "ParentID": 0,
        "HasChildren": true
      },
    };

    Map<String, dynamic> body = {
      "ticket": "a5414303-16be-79c5-5f55-9518dcd7aad1",
      "model": modelData,
      "cvHtml": "645645645645645"
    };

    final response = await http.post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(body),
    );

    return response;
  }

  addEducation({
    required int cvID,
    required CvDataModel educationLevel,
    required CvDataModel school,
    required CvDataModel department,
    required CvDataModel city,
    required CvDataModel country,
    required int graduationYear,
    required bool isStillStudent,
    required String description,
  }) async {
    print(school.toJson());
    Map<String, dynamic> modelData = {
      "ID": 0,
      "CvID": 1091149,
      "EducationLevel": {
        "Name": "string",
        "Value": 0,
        "ParentID": 0,
        "HasChildren": true
      },
      "School": {
        "Name": "string",
        "Value": 0,
        "ParentID": 0,
        "HasChildren": true
      },
      "Department": {
        "Name": "string",
        "Value": 0,
        "ParentID": 0,
        "HasChildren": true
      },
      "SchoolType": {
        "Name": "string",
        "Value": 0,
        "ParentID": 0,
        "HasChildren": true
      },
      "EducationType": {
        "Name": "string",
        "Value": 0,
        "ParentID": 0,
        "HasChildren": true
      },
      "City": {
        "Name": "string",
        "Value": 0,
        "ParentID": 0,
        "HasChildren": true
      },
      "Country": {
        "Name": "string",
        "Value": 0,
        "ParentID": 0,
        "HasChildren": true
      },
      "GraduationYear": 0,
      "GraduationGrade": "string",
      "IsStillStudent": true,
      "Language": {
        "Name": "string",
        "Value": 0,
        "ParentID": 0,
        "HasChildren": true
      },
      "Scholarship": {
        "Name": "string",
        "Value": 0,
        "ParentID": 0,
        "HasChildren": true
      },
      "ScholarshipRate": "string",
      "Description": "string"
    };
    Map<String, dynamic> body = {
      "ticket": "a5414303-16be-79c5-5f55-9518dcd7aad1",
      "model": modelData,
      "cvHtml": "645645645645645"
    };
    final response = await postWithData(
      "Cv/SaveEducation",
      body,
    );

    print(response);
  }
}
