// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddressModel _$$_AddressModelFromJson(Map<String, dynamic> json) =>
    _$_AddressModel(
      country: json['Country'] == null
          ? null
          : CountryModel.fromJson(json['Country'] as Map<String, dynamic>),
      city: json['City'] == null
          ? null
          : CityModel.fromJson(json['City'] as Map<String, dynamic>),
      district: json['District'] == null
          ? null
          : DistrictModel.fromJson(json['District'] as Map<String, dynamic>),
      text: json['Text'] as String?,
    );

Map<String, dynamic> _$$_AddressModelToJson(_$_AddressModel instance) =>
    <String, dynamic>{
      'Country': instance.country,
      'City': instance.city,
      'District': instance.district,
      'Text': instance.text,
    };
