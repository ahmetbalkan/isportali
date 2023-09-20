// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JobListModel _$$_JobListModelFromJson(Map<String, dynamic> json) =>
    _$_JobListModel(
      advertisementID: json['AdvertisementID'] as int?,
      customerID: json['CustomerID'] as int?,
      companyName: json['CompanyName'] as String?,
      isCompanyHidden: json['IsCompanyHidden'] as bool?,
      isHandicapped: json['IsHandicapped'] as bool?,
      isQuakeVictim: json['IsQuakeVictim'] as bool?,
      title: json['Title'] as String?,
      logoUrl: json['LogoUrl'] as String?,
      orderDate: json['OrderDate'] as String?,
      isAppliedByUser: json['IsAppliedByUser'] as bool?,
      isViewedByUser: json['IsViewedByUser'] as bool?,
      isSavedByUser: json['IsSavedByUser'] as bool?,
      evaluationCount: json['EvaluationCount'] as int?,
      messageCount: json['MessageCount'] as int?,
      viewsCount: json['ViewsCount'] as int?,
      isSponsored: json['IsSponsored'] as bool?,
      locationName: (json['LocationName'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_JobListModelToJson(_$_JobListModel instance) =>
    <String, dynamic>{
      'AdvertisementID': instance.advertisementID,
      'CustomerID': instance.customerID,
      'CompanyName': instance.companyName,
      'IsCompanyHidden': instance.isCompanyHidden,
      'IsHandicapped': instance.isHandicapped,
      'IsQuakeVictim': instance.isQuakeVictim,
      'Title': instance.title,
      'LogoUrl': instance.logoUrl,
      'OrderDate': instance.orderDate,
      'IsAppliedByUser': instance.isAppliedByUser,
      'IsViewedByUser': instance.isViewedByUser,
      'IsSavedByUser': instance.isSavedByUser,
      'EvaluationCount': instance.evaluationCount,
      'MessageCount': instance.messageCount,
      'ViewsCount': instance.viewsCount,
      'IsSponsored': instance.isSponsored,
      'LocationName': instance.locationName,
    };
