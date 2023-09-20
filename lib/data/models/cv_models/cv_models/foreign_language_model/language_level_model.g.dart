// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_level_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LanguageLevelModel _$$_LanguageLevelModelFromJson(
        Map<String, dynamic> json) =>
    _$_LanguageLevelModel(
      name: json['Name'] as String?,
      value: json['Value'] as int?,
      parentID: json['ParentID'] as int?,
      hasChildren: json['HasChildren'],
    );

Map<String, dynamic> _$$_LanguageLevelModelToJson(
        _$_LanguageLevelModel instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'Value': instance.value,
      'ParentID': instance.parentID,
      'HasChildren': instance.hasChildren,
    };
