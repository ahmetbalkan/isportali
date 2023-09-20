// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attribute_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AttributeModel _$$_AttributeModelFromJson(Map<String, dynamic> json) =>
    _$_AttributeModel(
      id: json['ID'] as int?,
      text: json['Text'] as String?,
      type: json['Type'] as int?,
      dataType: json['DataType'] as int?,
      orderID: json['OrderID'] as int?,
      isRequired: json['IsRequired'] as bool?,
      optionList: (json['OptionList'] as List<dynamic>?)
          ?.map((e) => OptionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AttributeModelToJson(_$_AttributeModel instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'Text': instance.text,
      'Type': instance.type,
      'DataType': instance.dataType,
      'OrderID': instance.orderID,
      'IsRequired': instance.isRequired,
      'OptionList': instance.optionList,
    };
