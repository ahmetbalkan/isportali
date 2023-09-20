import 'package:isportal/data/models/cv_models/cv_models/personal_data_model/city_model.dart';
import 'package:isportal/data/models/cv_models/cv_models/personal_data_model/country_model.dart';
import 'package:isportal/data/models/cv_models/cv_models/preferences_model/salary_expectation_model.dart';
import 'package:isportal/data/models/cv_models/lookup_models/cv_data_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'preferences_model.freezed.dart';
part 'preferences_model.g.dart';

@freezed
class PreferencesModel with _$PreferencesModel {
  factory PreferencesModel({
    @JsonKey(name: 'ID') int? id,
    @JsonKey(name: 'CvID') int? cvID,
    @JsonKey(name: 'CountryList') List<CountryModel>? countryList,
    @JsonKey(name: 'CityList') List<CityModel>? cityList,
    @JsonKey(name: 'SectorList') List<CvDataModel>? sectorList,
    @JsonKey(name: 'JobCategoryList') List<CvDataModel>? jobCategoryList,
    @JsonKey(name: 'PositionList') List<CvDataModel>? positionList,
    @JsonKey(name: 'OrganizationalLevelList')
    List<CvDataModel>? organizationalLevelList,
    @JsonKey(name: 'JobStatusList') List<CvDataModel>? jobStatusList,
    @JsonKey(name: 'ContactChoice') String? contactChoice,
    @JsonKey(name: 'SalaryExpectation')
    SalaryExpectationModel? salaryExpectation,
    @JsonKey(name: 'OtherExpectations') String? otherExpectations,
  }) = _PreferencesModel;

  factory PreferencesModel.fromJson(Map<String, dynamic> json) =>
      _$PreferencesModelFromJson(json);
}
