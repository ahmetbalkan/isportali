// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'district_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DistrictModel _$$_DistrictModelFromJson(Map<String, dynamic> json) =>
    _$_DistrictModel(
      name: json['Name'] as String?,
      value: json['Value'] as int?,
      parentID: json['ParentID'] as int?,
      hasChildren: json['HasChildren'] as bool?,
    );

Map<String, dynamic> _$$_DistrictModelToJson(_$_DistrictModel instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'Value': instance.value,
      'ParentID': instance.parentID,
      'HasChildren': instance.hasChildren,
    };
