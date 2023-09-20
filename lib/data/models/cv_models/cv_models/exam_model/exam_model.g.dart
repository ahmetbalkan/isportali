// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exam_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExamModel _$$_ExamModelFromJson(Map<String, dynamic> json) => _$_ExamModel(
      id: json['ID'] as int?,
      cvID: json['CvID'] as int?,
      name: json['Name'] == null
          ? null
          : NameModel.fromJson(json['Name'] as Map<String, dynamic>),
      institution: json['Institution'] as String?,
      description: json['Description'] as String?,
      grade: json['Grade'] as String?,
      year: json['Year'] as int?,
    );

Map<String, dynamic> _$$_ExamModelToJson(_$_ExamModel instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'CvID': instance.cvID,
      'Name': instance.name,
      'Institution': instance.institution,
      'Description': instance.description,
      'Grade': instance.grade,
      'Year': instance.year,
    };
