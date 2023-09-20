import 'dart:convert';

import 'package:isportal/data/models/job_list_model/filter_data_model/job_list_filter_model.dart';
import 'package:isportal/data/models/job_model/job_list_model.dart';
import 'package:isportal/data/models/job_model/job_model.dart';
import 'package:isportal/data/repositories/api_provider.dart';


class JobRepository extends ApiProvider {
  Future<JobModel?> getSingleAds(String jobId) async {
    try {
      final response =
          await postWithData("HaveAJob/GetAd", {"AdvertisementID": jobId});
      var rawJson = jsonDecode(response.body);

      var job = JobModel.fromJson(rawJson);

      if (job.isSuccess) {
        return job;
      } else {
        return null;
      }
    } catch (e) {
      throw Exception('getSingleAds Error: $e');
    }
  }

  Future<List<JobListModel>?> searchJob1({
    String? position,
    List<String>? city,
    String? country,
    String? jobCategory,
    String? sector,
    String? workingType,
    String? experience,
    String? pageIndex,
  }) async {
    try {
      final response = await postWithData("HaveAJob/Search", {
        "Keyword": position ?? "",
        "CityList": city ?? "",
        "PageSize": "20",
        "PageIndex": pageIndex ?? "",
      });
      var data = jsonDecode(response.body)['Data']['AdDetailList'];
      List<JobListModel> ads = List<JobListModel>.from(
          data.map((item) => JobListModel.fromJson(item)));
      return ads;
    } catch (e) {
      print("searchJob1 repo: $e");
      throw Exception('searchJob1 Error: $e');
    }
  }

  Future<void> sendRequest() async {
    Map<String, String> bodyFields = {
      'WorkingTypeList': '1',
    };

    var response = await postRequest('HaveAJob/Search', bodyFields);

    if (response.statusCode == 200) {
      print(response.body);
    } else {
      print('Error: ${response.reasonPhrase}');
    }
  }

  Future<List<JobListFilterModel>?> filterCity() async {
    try {
      final response = await postWithData("Lookup/GetList", {
        "TypeNameList": "City",
      });

      var data = jsonDecode(response.body)['Data']['City'];
      List<JobListFilterModel> ads = List<JobListFilterModel>.from(
          data.map((item) => JobListFilterModel.fromJson(item)));
      return ads;
    } catch (e) {
      print("filterCity repo: $e");
      throw Exception('filterCity Error: $e');
    }
  }

  Future<List<JobListFilterModel>?> filterCategory() async {
    try {
      final response = await postWithData("Lookup/GetList", {
        "TypeNameList": "JobCategory",
      });

      var data = jsonDecode(response.body)['Data']['JobCategory'];
      List<JobListFilterModel> ads = List<JobListFilterModel>.from(
          data.map((item) => JobListFilterModel.fromJson(item)));
      return ads;
    } catch (e) {
      print("filterCategory repo: $e");
      throw Exception('filterCategory Error: $e');
    }
  }

  Future<List<JobListFilterModel>?> filterSector() async {
    try {
      final response = await postWithData("Lookup/GetList", {
        "TypeNameList": "Sector",
      });

      var data = jsonDecode(response.body)['Data']['Sector'];
      List<JobListFilterModel> ads = List<JobListFilterModel>.from(
          data.map((item) => JobListFilterModel.fromJson(item)));
      return ads;
    } catch (e) {
      print("Sector repo: $e");
      throw Exception('Sector Error: $e');
    }
  }

  Future<List<JobListFilterModel>?> filterWorkingType() async {
    try {
      final response = await postWithData("Lookup/GetList", {
        "TypeNameList": "WorkingType",
      });

      var data = jsonDecode(response.body)['Data']['WorkingType'];
      List<JobListFilterModel> ads = List<JobListFilterModel>.from(
          data.map((item) => JobListFilterModel.fromJson(item)));
      return ads;
    } catch (e) {
      print("WorkingType repo: $e");
      throw Exception('WorkingType Error: $e');
    }
  }

  Future<List<JobListFilterModel>?> filterExperience() async {
    try {
      final response = await postWithData("Lookup/GetList", {
        "TypeNameList": "Experience",
      });

      var data = jsonDecode(response.body)['Data']['Experience'];
      List<JobListFilterModel> ads = List<JobListFilterModel>.from(
          data.map((item) => JobListFilterModel.fromJson(item)));

      return ads;
    } catch (e) {
      print("Experience repo: $e");
      throw Exception('JobListFilterModel Error: $e');
    }
  }

  Future<List<JobListModel>?> searchJob({
    String? position,
    String? city,
    String? pageIndex,
  }) async {
    try {
      final response = await postWithData("HaveAJob/Search", {
        "Keyword": position ?? "",
        "CityList": city ?? "",
        "PageSize": "20",
        "PageIndex": pageIndex ?? "",
      });
      var data = jsonDecode(response.body)['Data']['AdDetailList'];
      List<JobListModel> ads = List<JobListModel>.from(
          data.map((item) => JobListModel.fromJson(item)));
      return ads;
    } catch (e) {
      print("searchJob repo: $e");
      throw Exception('searchJob Error: $e');
    }
  }
}
