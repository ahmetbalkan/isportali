// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocationModel _$$_LocationModelFromJson(Map<String, dynamic> json) =>
    _$_LocationModel(
      adLocationID: json['AdLocationID'] as int?,
      countryID: json['CountryID'] as int?,
      cityID: json['CityID'] as int?,
      name: json['Name'] as String?,
      applicationDate: json['ApplicationDate'] as String?,
      address: json['Address'] as String?,
      latitude: (json['Latitude'] as num?)?.toDouble(),
      Longitude: (json['Longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_LocationModelToJson(_$_LocationModel instance) =>
    <String, dynamic>{
      'AdLocationID': instance.adLocationID,
      'CountryID': instance.countryID,
      'CityID': instance.cityID,
      'Name': instance.name,
      'ApplicationDate': instance.applicationDate,
      'Address': instance.address,
      'Latitude': instance.latitude,
      'Longitude': instance.Longitude,
    };
