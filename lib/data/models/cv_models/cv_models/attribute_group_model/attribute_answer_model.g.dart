// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attribute_answer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AttributeAnswerModel _$$_AttributeAnswerModelFromJson(
        Map<String, dynamic> json) =>
    _$_AttributeAnswerModel(
      attributeID: json['AttributeID'] as int?,
      answerAsText: json['AnswerAsText'] as String?,
      answerAsID: json['AnswerAsID'] as String?,
      attributeText: json['AttributeText'] as String?,
    );

Map<String, dynamic> _$$_AttributeAnswerModelToJson(
        _$_AttributeAnswerModel instance) =>
    <String, dynamic>{
      'AttributeID': instance.attributeID,
      'AnswerAsText': instance.answerAsText,
      'AnswerAsID': instance.answerAsID,
      'AttributeText': instance.attributeText,
    };
