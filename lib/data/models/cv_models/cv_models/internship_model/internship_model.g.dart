// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'internship_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InternshipModel _$$_InternshipModelFromJson(Map<String, dynamic> json) =>
    _$_InternshipModel(
      name: json['Name'] as String?,
      position: json['Position'] as String?,
      startDate: json['StartDate'] as String?,
      endDate: json['EndDate'] as String?,
      description: json['Description'] as String?,
    );

Map<String, dynamic> _$$_InternshipModelToJson(_$_InternshipModel instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'Position': instance.position,
      'StartDate': instance.startDate,
      'EndDate': instance.endDate,
      'Description': instance.description,
    };
