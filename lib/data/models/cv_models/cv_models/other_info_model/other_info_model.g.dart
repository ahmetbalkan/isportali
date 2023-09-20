// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'other_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OtherInfoModel _$$_OtherInfoModelFromJson(Map<String, dynamic> json) =>
    _$_OtherInfoModel(
      cvID: json['CvID'] as int?,
      website: json['WebSite'] as String?,
      linkedin: json['Linkedin'] as String?,
      twitter: json['Twitter'] as String?,
      handicap: json['Handicap'] == null
          ? null
          : HandicapModel.fromJson(json['Handicap'] as Map<String, dynamic>),
      conviction: json['Conviction'],
      terrorismVictim: json['TerrorismVictim'],
      iskurInfo: json['IskurInfo'] == null
          ? null
          : IskurInfoModel.fromJson(json['IskurInfo'] as Map<String, dynamic>),
      idNumber: json['IDNumber'] as int?,
      smoker: json['Smoker'] == null
          ? null
          : LookupModel.fromJson(json['Smoker'] as Map<String, dynamic>),
      iHaveTravelDisability: json['IHaveTravelDisability'] == null
          ? null
          : LookupModel.fromJson(
              json['IHaveTravelDisability'] as Map<String, dynamic>),
      drivingLicenseList: (json['DrivingLicenseList'] as List<dynamic>?)
          ?.map((e) => LookupModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      srcList: (json['SrcList'] as List<dynamic>?)
          ?.map((e) => SrcModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      maritalStatus: json['MaritalStatus'] == null
          ? null
          : LookupModel.fromJson(json['MaritalStatus'] as Map<String, dynamic>),
      nationality: json['Nationality'] == null
          ? null
          : LookupModel.fromJson(json['Nationality'] as Map<String, dynamic>),
      nationality2: json['Nationality2'] == null
          ? null
          : LookupModel.fromJson(json['Nationality2'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OtherInfoModelToJson(_$_OtherInfoModel instance) =>
    <String, dynamic>{
      'CvID': instance.cvID,
      'WebSite': instance.website,
      'Linkedin': instance.linkedin,
      'Twitter': instance.twitter,
      'Handicap': instance.handicap,
      'Conviction': instance.conviction,
      'TerrorismVictim': instance.terrorismVictim,
      'IskurInfo': instance.iskurInfo,
      'IDNumber': instance.idNumber,
      'Smoker': instance.smoker,
      'IHaveTravelDisability': instance.iHaveTravelDisability,
      'DrivingLicenseList': instance.drivingLicenseList,
      'SrcList': instance.srcList,
      'MaritalStatus': instance.maritalStatus,
      'Nationality': instance.nationality,
      'Nationality2': instance.nationality2,
    };
