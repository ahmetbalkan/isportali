// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CourseModel _$$_CourseModelFromJson(Map<String, dynamic> json) =>
    _$_CourseModel(
      id: json['ID'] as int?,
      cvID: json['CvID'] as int?,
      name: json['Name'] == null
          ? null
          : NameModel.fromJson(json['Name'] as Map<String, dynamic>),
      description: json['Description'] as String?,
      institution: json['Institution'] as String?,
      year: json['Year'] as int?,
    );

Map<String, dynamic> _$$_CourseModelToJson(_$_CourseModel instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'CvID': instance.cvID,
      'Name': instance.name,
      'Description': instance.description,
      'Institution': instance.institution,
      'Year': instance.year,
    };
