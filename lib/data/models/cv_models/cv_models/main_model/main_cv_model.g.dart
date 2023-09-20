// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_cv_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MainCvModel _$$_MainCvModelFromJson(Map<String, dynamic> json) =>
    _$_MainCvModel(
      isSuccess: json['IsSuccess'] as bool?,
      messageList: (json['MessageList'] as List<dynamic>?)
          ?.map((e) => MessageListModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      cvModel: json['Data'] == null
          ? null
          : CvModel.fromJson(json['Data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MainCvModelToJson(_$_MainCvModel instance) =>
    <String, dynamic>{
      'IsSuccess': instance.isSuccess,
      'MessageList': instance.messageList,
      'Data': instance.cvModel,
    };
