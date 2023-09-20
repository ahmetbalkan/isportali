// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'salary_expectation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SalaryExpectationModel _$$_SalaryExpectationModelFromJson(
        Map<String, dynamic> json) =>
    _$_SalaryExpectationModel(
      name: json['Name'] as String?,
      value: json['Value'] as int?,
      parentID: json['ParentID'] as int?,
      hasChildren: json['HasChildren'] as bool?,
    );

Map<String, dynamic> _$$_SalaryExpectationModelToJson(
        _$_SalaryExpectationModel instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'Value': instance.value,
      'ParentID': instance.parentID,
      'HasChildren': instance.hasChildren,
    };
