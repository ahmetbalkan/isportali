// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cv_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CvListModel _$$_CvListModelFromJson(Map<String, dynamic> json) =>
    _$_CvListModel(
      id: json['ID'] as int?,
      name: json['Name'] as String?,
      status: json['Status'] as int?,
      lastUpdateDate: json['LastUpdateDate'] as String?,
      viewedCount: json['ViewedCount'] as int?,
      foundCountInSearchResults: json['FoundCountInSearchResults'] as int?,
      lastFound: json['LastFound'] as String?,
      cvFullness: json['CvFullness'] as int?,
      missingInfoType: json['MissingInfoType'] as int?,
    );

Map<String, dynamic> _$$_CvListModelToJson(_$_CvListModel instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'Name': instance.name,
      'Status': instance.status,
      'LastUpdateDate': instance.lastUpdateDate,
      'ViewedCount': instance.viewedCount,
      'FoundCountInSearchResults': instance.foundCountInSearchResults,
      'LastFound': instance.lastFound,
      'CvFullness': instance.cvFullness,
      'MissingInfoType': instance.missingInfoType,
    };
