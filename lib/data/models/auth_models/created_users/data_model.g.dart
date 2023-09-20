// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModelData _$$_UserModelDataFromJson(Map<String, dynamic> json) =>
    _$_UserModelData(
      persistentTicket: json['PersistentTicket'] as String?,
      membershipInfo: json['MembershipInfo'] == null
          ? null
          : MembershipInfo.fromJson(
              json['MembershipInfo'] as Map<String, dynamic>),
      insiderInfo: json['InsiderInfo'] == null
          ? null
          : InsiderInfo.fromJson(json['InsiderInfo'] as Map<String, dynamic>),
      ticket: json['Ticket'] as String?,
    );

Map<String, dynamic> _$$_UserModelDataToJson(_$_UserModelData instance) =>
    <String, dynamic>{
      'PersistentTicket': instance.persistentTicket,
      'MembershipInfo': instance.membershipInfo,
      'InsiderInfo': instance.insiderInfo,
      'Ticket': instance.ticket,
    };
