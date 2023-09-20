// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nationality_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NationalityModel _$$_NationalityModelFromJson(Map<String, dynamic> json) =>
    _$_NationalityModel(
      name: json['Name'] as String?,
      value: json['Value'] as int?,
      parentID: json['ParentID'] as int?,
      hasChildren: json['HasChildren'] as bool?,
    );

Map<String, dynamic> _$$_NationalityModelToJson(_$_NationalityModel instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'Value': instance.value,
      'ParentID': instance.parentID,
      'HasChildren': instance.hasChildren,
    };
