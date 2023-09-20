// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataModel _$$_DataModelFromJson(Map<String, dynamic> json) => _$_DataModel(
      advertisementID: json['AdvertisementID'] as int?,
      customerID: json['CustomerID'] as int?,
      companyName: json['CompanyName'] as String?,
      title: json['Title'] as String?,
      description: json['Description'] as String?,
      logoUrl: json['LogoUrl'] as String?,
      shareUrl: json['ShareUrl'] as String?,
      redirectionUrl: json['RedirectionUrl'] as String?,
      templateUrl: json['TemplateUrl'] as String?,
      preferredSkillsText: json['PreferredSkillsText'] as String?,
      status: json['Status'] as int?,
      isCompanyHidden: json['IsCompanyHidden'] as bool?,
      isHandicapped: json['IsHandicapped'] as bool?,
      isQuakeVictim: json['IsQuakeVictim'] as bool?,
      isViewedByUser: json['IsViewedByUser'] as bool?,
      isAppliedByUser: json['IsAppliedByUser'] as bool?,
      isFavoriteByUser: json['IsFavoriteByUser'] as bool?,
      applicationCount: json['ApplicationCount'] as String?,
      isUserSubscribedToCompany: json['IsUserSubscribedToCompany'] as bool?,
      createDateText: json['CreateDateText'] as String?,
      viewCount: json['ViewCount'] as int?,
      applicationViewed: json['ApplicationViewed'] as bool?,
      applicationAnswerMessage: json['ApplicationAnswerMessage'] as bool?,
      applicationAnswerMessageCount:
          json['ApplicationAnswerMessageCount'] as int?,
      advertisementRedirectionType:
          json['AdvertisementRedirectionType'] as int?,
      propertiesList: (json['PropertiesList'] as List<dynamic>?)
          ?.map((e) => PropertiesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      similarAdsList: (json['SimilarAds'] as List<dynamic>?)
          ?.map((e) => AdsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      customerAdsList: (json['CustomerAds'] as List<dynamic>?)
          ?.map((e) => AdsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      locationList: (json['LocationList'] as List<dynamic>?)
          ?.map((e) => LocationModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      customer: json['Customer'] == null
          ? null
          : CustomerModel.fromJson(json['Customer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DataModelToJson(_$_DataModel instance) =>
    <String, dynamic>{
      'AdvertisementID': instance.advertisementID,
      'CustomerID': instance.customerID,
      'CompanyName': instance.companyName,
      'Title': instance.title,
      'Description': instance.description,
      'LogoUrl': instance.logoUrl,
      'ShareUrl': instance.shareUrl,
      'RedirectionUrl': instance.redirectionUrl,
      'TemplateUrl': instance.templateUrl,
      'PreferredSkillsText': instance.preferredSkillsText,
      'Status': instance.status,
      'IsCompanyHidden': instance.isCompanyHidden,
      'IsHandicapped': instance.isHandicapped,
      'IsQuakeVictim': instance.isQuakeVictim,
      'IsViewedByUser': instance.isViewedByUser,
      'IsAppliedByUser': instance.isAppliedByUser,
      'IsFavoriteByUser': instance.isFavoriteByUser,
      'ApplicationCount': instance.applicationCount,
      'IsUserSubscribedToCompany': instance.isUserSubscribedToCompany,
      'CreateDateText': instance.createDateText,
      'ViewCount': instance.viewCount,
      'ApplicationViewed': instance.applicationViewed,
      'ApplicationAnswerMessage': instance.applicationAnswerMessage,
      'ApplicationAnswerMessageCount': instance.applicationAnswerMessageCount,
      'AdvertisementRedirectionType': instance.advertisementRedirectionType,
      'PropertiesList': instance.propertiesList,
      'SimilarAds': instance.similarAdsList,
      'CustomerAds': instance.customerAdsList,
      'LocationList': instance.locationList,
      'Customer': instance.customer,
    };
