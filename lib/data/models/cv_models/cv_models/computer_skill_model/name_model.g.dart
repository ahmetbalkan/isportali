// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'name_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NameModel _$$_NameModelFromJson(Map<String, dynamic> json) => _$_NameModel(
      name: json['Name'] as String?,
      value: json['Value'] as int?,
      parentID: json['ParentID'] as int?,
      hasChildren: json['HasChildren'],
    );

Map<String, dynamic> _$$_NameModelToJson(_$_NameModel instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'Value': instance.value,
      'ParentID': instance.parentID,
      'HasChildren': instance.hasChildren,
    };
