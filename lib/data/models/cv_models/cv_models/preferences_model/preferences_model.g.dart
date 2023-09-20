// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preferences_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PreferencesModel _$$_PreferencesModelFromJson(Map<String, dynamic> json) =>
    _$_PreferencesModel(
      id: json['ID'] as int?,
      cvID: json['CvID'] as int?,
      countryList: (json['CountryList'] as List<dynamic>?)
          ?.map((e) => CountryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      cityList: (json['CityList'] as List<dynamic>?)
          ?.map((e) => CityModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      sectorList: (json['SectorList'] as List<dynamic>?)
          ?.map((e) => CvDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      jobCategoryList: (json['JobCategoryList'] as List<dynamic>?)
          ?.map((e) => CvDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      positionList: (json['PositionList'] as List<dynamic>?)
          ?.map((e) => CvDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      organizationalLevelList:
          (json['OrganizationalLevelList'] as List<dynamic>?)
              ?.map((e) => CvDataModel.fromJson(e as Map<String, dynamic>))
              .toList(),
      jobStatusList: (json['JobStatusList'] as List<dynamic>?)
          ?.map((e) => CvDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      contactChoice: json['ContactChoice'] as String?,
      salaryExpectation: json['SalaryExpectation'] == null
          ? null
          : SalaryExpectationModel.fromJson(
              json['SalaryExpectation'] as Map<String, dynamic>),
      otherExpectations: json['OtherExpectations'] as String?,
    );

Map<String, dynamic> _$$_PreferencesModelToJson(_$_PreferencesModel instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'CvID': instance.cvID,
      'CountryList': instance.countryList,
      'CityList': instance.cityList,
      'SectorList': instance.sectorList,
      'JobCategoryList': instance.jobCategoryList,
      'PositionList': instance.positionList,
      'OrganizationalLevelList': instance.organizationalLevelList,
      'JobStatusList': instance.jobStatusList,
      'ContactChoice': instance.contactChoice,
      'SalaryExpectation': instance.salaryExpectation,
      'OtherExpectations': instance.otherExpectations,
    };
