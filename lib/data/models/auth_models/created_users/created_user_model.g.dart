// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'created_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreatedUserModel _$$_CreatedUserModelFromJson(Map<String, dynamic> json) =>
    _$_CreatedUserModel(
      isSuccess: json['IsSuccess'] as bool? ?? false,
      messageList: json['MessageList'],
      data: json['Data'] == null
          ? null
          : UserModelData.fromJson(json['Data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CreatedUserModelToJson(_$_CreatedUserModel instance) =>
    <String, dynamic>{
      'IsSuccess': instance.isSuccess,
      'MessageList': instance.messageList,
      'Data': instance.data,
    };
