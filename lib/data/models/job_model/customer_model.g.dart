// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomerModel _$$_CustomerModelFromJson(Map<String, dynamic> json) =>
    _$_CustomerModel(
      customerID: json['CustomerID'] as int?,
      webAddress: json['WebAddress'] as String?,
      companyName: json['CompanyName'] as String?,
      infoHtml: json['InfoHtml'] as String?,
      logoPath: json['LogoPath'] as String?,
      isUserSubscribedToCompany: json['IsUserSubscribedToCompany'] as bool?,
      cityName: json['CityName'] as String?,
    );

Map<String, dynamic> _$$_CustomerModelToJson(_$_CustomerModel instance) =>
    <String, dynamic>{
      'CustomerID': instance.customerID,
      'WebAddress': instance.webAddress,
      'CompanyName': instance.companyName,
      'InfoHtml': instance.infoHtml,
      'LogoPath': instance.logoPath,
      'IsUserSubscribedToCompany': instance.isUserSubscribedToCompany,
      'CityName': instance.cityName,
    };
