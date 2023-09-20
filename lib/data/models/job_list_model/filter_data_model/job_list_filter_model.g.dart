// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_list_filter_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JobListFilterModel _$$_JobListFilterModelFromJson(
        Map<String, dynamic> json) =>
    _$_JobListFilterModel(
      value: json['Value'] as int?,
      name: json['Name'] as String?,
      type: json['Type'] as int?,
      languageID: json['LanguageID'] as int?,
      orderNo: json['OrderNo'] as int?,
    );

Map<String, dynamic> _$$_JobListFilterModelToJson(
        _$_JobListFilterModel instance) =>
    <String, dynamic>{
      'Value': instance.value,
      'Name': instance.name,
      'Type': instance.type,
      'LanguageID': instance.languageID,
      'OrderNo': instance.orderNo,
    };
