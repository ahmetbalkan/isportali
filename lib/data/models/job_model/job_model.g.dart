// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JobModel _$$_JobModelFromJson(Map<String, dynamic> json) => _$_JobModel(
      isSuccess: json['IsSuccess'] as bool? ?? false,
      messageList: (json['MessageList'] as List<dynamic>?)
          ?.map((e) => MessageListModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      data: json['Data'] == null
          ? null
          : DataModel.fromJson(json['Data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_JobModelToJson(_$_JobModel instance) =>
    <String, dynamic>{
      'IsSuccess': instance.isSuccess,
      'MessageList': instance.messageList,
      'Data': instance.data,
    };
