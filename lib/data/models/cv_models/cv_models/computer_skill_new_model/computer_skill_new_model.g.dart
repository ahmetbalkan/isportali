// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'computer_skill_new_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ComputerSkillNewModel _$$_ComputerSkillNewModelFromJson(
        Map<String, dynamic> json) =>
    _$_ComputerSkillNewModel(
      name: json['Name'] as String?,
      value: json['Value'] as int?,
      parentID: json['ParentID'] as int?,
      hasChildren: json['HasChildren'],
    );

Map<String, dynamic> _$$_ComputerSkillNewModelToJson(
        _$_ComputerSkillNewModel instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'Value': instance.value,
      'ParentID': instance.parentID,
      'HasChildren': instance.hasChildren,
    };
