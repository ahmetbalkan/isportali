// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marital_status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MaritalStatusModel _$$_MaritalStatusModelFromJson(
        Map<String, dynamic> json) =>
    _$_MaritalStatusModel(
      name: json['Name'] as String?,
      value: json['Value'] as int?,
      parentID: json['ParentID'] as int?,
      hasChildren: json['HasChildren'] as bool?,
    );

Map<String, dynamic> _$$_MaritalStatusModelToJson(
        _$_MaritalStatusModel instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'Value': instance.value,
      'ParentID': instance.parentID,
      'HasChildren': instance.hasChildren,
    };
