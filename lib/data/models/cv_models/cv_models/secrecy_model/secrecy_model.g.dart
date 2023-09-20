// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'secrecy_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SecrecyModel _$$_SecrecyModelFromJson(Map<String, dynamic> json) =>
    _$_SecrecyModel(
      cvID: json['CvID'] as int?,
      hideCurrentCompany: json['HideCurrentCompany'] as bool?,
      hideCommunicationInfo: json['HideCommunicationInfo'] as bool?,
      hideReferences: json['HideReferences'] as bool?,
      blacklistedCompanyList: json['BlacklistedCompanyList'] as List<dynamic>?,
    );

Map<String, dynamic> _$$_SecrecyModelToJson(_$_SecrecyModel instance) =>
    <String, dynamic>{
      'CvID': instance.cvID,
      'HideCurrentCompany': instance.hideCurrentCompany,
      'HideCommunicationInfo': instance.hideCommunicationInfo,
      'HideReferences': instance.hideReferences,
      'BlacklistedCompanyList': instance.blacklistedCompanyList,
    };
