// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ads_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AdsModel _$$_AdsModelFromJson(Map<String, dynamic> json) => _$_AdsModel(
      advertisementID: json['AdvertisementID'] as int?,
      customerID: json['CustomerID'] as int?,
      companyName: json['CompanyName'] as String?,
      isCompanyHidden: json['IsCompanyHidden'] as bool?,
      isHandicapped: json['IsHandicapped'] as bool?,
      isQuakeVictim: json['IsQuakeVictim'] as bool?,
      title: json['Title'] as String?,
      logoUrl: json['LogoUrl'] as String?,
      locationName: (json['LocationName'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      orderDate: json['OrderDate'] as String?,
      orderDateText: json['OrderDateText'] as String?,
      isAppliedByUser: json['IsAppliedByUser'] as bool?,
      isViewedByUser: json['IsViewedByUser'] as bool?,
      isSavedByUser: json['IsSavedByUser'] as bool?,
      evaluationCount: json['EvaluationCount'] as int?,
      messageCount: json['MessageCount'] as int?,
      viewsCount: json['ViewsCount'] as int?,
      isSponsored: json['IsSponsored'] as bool?,
    );

Map<String, dynamic> _$$_AdsModelToJson(_$_AdsModel instance) =>
    <String, dynamic>{
      'AdvertisementID': instance.advertisementID,
      'CustomerID': instance.customerID,
      'CompanyName': instance.companyName,
      'IsCompanyHidden': instance.isCompanyHidden,
      'IsHandicapped': instance.isHandicapped,
      'IsQuakeVictim': instance.isQuakeVictim,
      'Title': instance.title,
      'LogoUrl': instance.logoUrl,
      'LocationName': instance.locationName,
      'OrderDate': instance.orderDate,
      'OrderDateText': instance.orderDateText,
      'IsAppliedByUser': instance.isAppliedByUser,
      'IsViewedByUser': instance.isViewedByUser,
      'IsSavedByUser': instance.isSavedByUser,
      'EvaluationCount': instance.evaluationCount,
      'MessageCount': instance.messageCount,
      'ViewsCount': instance.viewsCount,
      'IsSponsored': instance.isSponsored,
    };
