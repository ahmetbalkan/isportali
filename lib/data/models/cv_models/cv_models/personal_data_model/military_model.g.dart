// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'military_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MilitaryModel _$$_MilitaryModelFromJson(Map<String, dynamic> json) =>
    _$_MilitaryModel(
      status: json['Status'] == null
          ? null
          : LookupModel.fromJson(json['Status'] as Map<String, dynamic>),
      date: json['Date'],
      description: json['Description'] as String?,
    );

Map<String, dynamic> _$$_MilitaryModelToJson(_$_MilitaryModel instance) =>
    <String, dynamic>{
      'Status': instance.status,
      'Date': instance.date,
      'Description': instance.description,
    };
