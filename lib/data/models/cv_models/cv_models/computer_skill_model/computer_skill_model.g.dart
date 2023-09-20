// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'computer_skill_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ComputerSkillModel _$$_ComputerSkillModelFromJson(
        Map<String, dynamic> json) =>
    _$_ComputerSkillModel(
      id: json['ID'] as int?,
      cvID: json['CvID'] as int?,
      name: json['Name'] == null
          ? null
          : NameModel.fromJson(json['Name'] as Map<String, dynamic>),
      experience: json['Experience'],
      level: json['Level'],
    );

Map<String, dynamic> _$$_ComputerSkillModelToJson(
        _$_ComputerSkillModel instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'CvID': instance.cvID,
      'Name': instance.name,
      'Experience': instance.experience,
      'Level': instance.level,
    };
