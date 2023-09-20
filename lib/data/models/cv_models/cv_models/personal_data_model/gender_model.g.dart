// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gender_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GenderModel _$$_GenderModelFromJson(Map<String, dynamic> json) =>
    _$_GenderModel(
      name: json['Name'] as String?,
      value: json['Value'] as int?,
      parentID: json['ParentID'] as int?,
      hasChildren: json['HasChildren'] as bool?,
    );

Map<String, dynamic> _$$_GenderModelToJson(_$_GenderModel instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'Value': instance.value,
      'ParentID': instance.parentID,
      'HasChildren': instance.hasChildren,
    };
