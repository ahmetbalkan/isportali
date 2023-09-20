// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'experience_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExperienceModel _$ExperienceModelFromJson(Map<String, dynamic> json) =>
    ExperienceModel(
      position: json['Position'] == null
          ? null
          : CvDataModel.fromJson(json['Position'] as Map<String, dynamic>),
      organizationalLevel: json['OrganizationalLevel'] == null
          ? null
          : CvDataModel.fromJson(
              json['OrganizationalLevel'] as Map<String, dynamic>),
      jobStatus: json['JobStatus'] == null
          ? null
          : CvDataModel.fromJson(json['JobStatus'] as Map<String, dynamic>),
      supervisorTitle: json['SupervisorTitle'] as String?,
      subordinateCount: json['SubordinateCount'] as int?,
      resignationReason: json['ResignationReason'] == null
          ? null
          : CvDataModel.fromJson(
              json['ResignationReason'] as Map<String, dynamic>),
      id: json['ID'] as int?,
      cvID: json['CvID'] as int?,
      company: json['Company'] == null
          ? null
          : CvDataModel.fromJson(json['Company'] as Map<String, dynamic>),
      sector: json['Sector'] == null
          ? null
          : CvDataModel.fromJson(json['Sector'] as Map<String, dynamic>),
      jobCategory: json['JobCategory'] == null
          ? null
          : CvDataModel.fromJson(json['JobCategory'] as Map<String, dynamic>),
      country: json['Country'] == null
          ? null
          : CvDataModel.fromJson(json['Country'] as Map<String, dynamic>),
      city: json['City'] == null
          ? null
          : CvDataModel.fromJson(json['City'] as Map<String, dynamic>),
      startDate: json['StartDate'] as String?,
      endDate: json['EndDate'] as String?,
      description: json['Description'] as String?,
      durationInfo: json['DurationInfo'] as String?,
    );

Map<String, dynamic> _$ExperienceModelToJson(ExperienceModel instance) =>
    <String, dynamic>{
      'Position': instance.position,
      'OrganizationalLevel': instance.organizationalLevel,
      'JobStatus': instance.jobStatus,
      'SupervisorTitle': instance.supervisorTitle,
      'SubordinateCount': instance.subordinateCount,
      'ResignationReason': instance.resignationReason,
      'ID': instance.id,
      'CvID': instance.cvID,
      'Company': instance.company,
      'Sector': instance.sector,
      'JobCategory': instance.jobCategory,
      'Country': instance.country,
      'City': instance.city,
      'StartDate': instance.startDate,
      'EndDate': instance.endDate,
      'Description': instance.description,
      'DurationInfo': instance.durationInfo,
    };
