// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'messagelist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessageListModel _$$_MessageListModelFromJson(Map<String, dynamic> json) =>
    _$_MessageListModel(
      type: json['Type'] as int?,
      code: json['Code'] as String?,
      description: json['Description'] as String?,
      placeholderValues: json['PlaceholderValues'] == null
          ? null
          : PlaceholderValuesModel.fromJson(
              json['PlaceholderValues'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MessageListModelToJson(_$_MessageListModel instance) =>
    <String, dynamic>{
      'Type': instance.type,
      'Code': instance.code,
      'Description': instance.description,
      'PlaceholderValues': instance.placeholderValues,
    };

_$_PlaceholderValuesModel _$$_PlaceholderValuesModelFromJson(
        Map<String, dynamic> json) =>
    _$_PlaceholderValuesModel(
      propertyName: json['PropertyName'] as String?,
      propertyValue: json['PropertyValue'] as int?,
    );

Map<String, dynamic> _$$_PlaceholderValuesModelToJson(
        _$_PlaceholderValuesModel instance) =>
    <String, dynamic>{
      'PropertyName': instance.propertyName,
      'PropertyValue': instance.propertyValue,
    };
