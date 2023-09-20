// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extra_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExtraInfoModel _$$_ExtraInfoModelFromJson(Map<String, dynamic> json) =>
    _$_ExtraInfoModel(
      cvID: json['CvID'] as int?,
      scholarships: json['Scholarships'] as String?,
      publishings: json['Publishings'] as String?,
      clubMemberships: json['ClubMemberships'] as String?,
      voluntaryProjects: json['VoluntaryProjects'] as String?,
      interestsHobbies: json['InterestsHobbies'] as String?,
    );

Map<String, dynamic> _$$_ExtraInfoModelToJson(_$_ExtraInfoModel instance) =>
    <String, dynamic>{
      'CvID': instance.cvID,
      'Scholarships': instance.scholarships,
      'Publishings': instance.publishings,
      'ClubMemberships': instance.clubMemberships,
      'VoluntaryProjects': instance.voluntaryProjects,
      'InterestsHobbies': instance.interestsHobbies,
    };
