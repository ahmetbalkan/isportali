// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'insider_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InsiderInfo _$$_InsiderInfoFromJson(Map<String, dynamic> json) =>
    _$_InsiderInfo(
      firstName: json['FirstName'] as String?,
      lastName: json['LastName'] as String?,
      age: json['Age'] as int?,
      email: json['Email'] as String?,
      locationCity: json['LocationCity'] as String?,
      locationTown: json['LocationTown'] as String?,
      cvCompletion: json['CvCompletion'] as int?,
      edLevel: json['EdLevel'],
      englishLevel: json['EnglishLevel'],
      exDuration: json['ExDuration'] as int?,
      lastInterestedAdposition: json['LastInterestedAdposition'],
      lastInterestedAdsector: json['LastInterestedAdsector'],
    );

Map<String, dynamic> _$$_InsiderInfoToJson(_$_InsiderInfo instance) =>
    <String, dynamic>{
      'FirstName': instance.firstName,
      'LastName': instance.lastName,
      'Age': instance.age,
      'Email': instance.email,
      'LocationCity': instance.locationCity,
      'LocationTown': instance.locationTown,
      'CvCompletion': instance.cvCompletion,
      'EdLevel': instance.edLevel,
      'EnglishLevel': instance.englishLevel,
      'ExDuration': instance.exDuration,
      'LastInterestedAdposition': instance.lastInterestedAdposition,
      'LastInterestedAdsector': instance.lastInterestedAdsector,
    };
