// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phone_number_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PhoneNumberModel _$$_PhoneNumberModelFromJson(Map<String, dynamic> json) =>
    _$_PhoneNumberModel(
      country: json['Country'] == null
          ? null
          : CountryModel.fromJson(json['Country'] as Map<String, dynamic>),
      areaCode: json['AreaCode'] as int?,
      number: json['Number'] as String?,
    );

Map<String, dynamic> _$$_PhoneNumberModelToJson(_$_PhoneNumberModel instance) =>
    <String, dynamic>{
      'Country': instance.country,
      'AreaCode': instance.areaCode,
      'Number': instance.number,
    };
