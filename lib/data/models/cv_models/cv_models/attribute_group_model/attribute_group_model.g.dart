// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attribute_group_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AttributeGroupModel _$$_AttributeGroupModelFromJson(
        Map<String, dynamic> json) =>
    _$_AttributeGroupModel(
      id: json['ID'] as int?,
      name: json['Name'] as String?,
      attributeList: (json['AttributeList'] as List<dynamic>?)
          ?.map((e) => AttributeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AttributeGroupModelToJson(
        _$_AttributeGroupModel instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'Name': instance.name,
      'AttributeList': instance.attributeList,
    };
