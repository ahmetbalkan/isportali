// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'communication_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommunicationDetailsModel _$$_CommunicationDetailsModelFromJson(
        Map<String, dynamic> json) =>
    _$_CommunicationDetailsModel(
      cvID: json['CvID'] as int?,
      mobilePhoneNumber: json['MobilePhoneNumber'] == null
          ? null
          : PhoneNumberModel.fromJson(
              json['MobilePhoneNumber'] as Map<String, dynamic>),
      mobilePhoneNumber2: json['MobilePhoneNumber2'] == null
          ? null
          : PhoneNumberModel.fromJson(
              json['MobilePhoneNumber2'] as Map<String, dynamic>),
      homePhoneNumber: json['HomePhoneNumber'] == null
          ? null
          : PhoneNumberModel.fromJson(
              json['HomePhoneNumber'] as Map<String, dynamic>),
      address: json['Address'] == null
          ? null
          : AddressModel.fromJson(json['Address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CommunicationDetailsModelToJson(
        _$_CommunicationDetailsModel instance) =>
    <String, dynamic>{
      'CvID': instance.cvID,
      'MobilePhoneNumber': instance.mobilePhoneNumber,
      'MobilePhoneNumber2': instance.mobilePhoneNumber2,
      'HomePhoneNumber': instance.homePhoneNumber,
      'Address': instance.address,
    };
