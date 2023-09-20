// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personal_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PersonalDetailsModel _$$_PersonalDetailsModelFromJson(
        Map<String, dynamic> json) =>
    _$_PersonalDetailsModel(
      cvID: json['CvID'] as int?,
      firstName: json['FirstName'] as String?,
      lastName: json['LastName'] as String?,
      idNumber: json['IDNumber'] as int?,
      gender: json['Gender'] == null
          ? null
          : LookupModel.fromJson(json['Gender'] as Map<String, dynamic>),
      email: json['Email'] as String?,
      email2: json['Email2'] as String?,
      nationality: json['Nationality'] == null
          ? null
          : LookupModel.fromJson(json['Nationality'] as Map<String, dynamic>),
      nationality2: json['Nationality2'] == null
          ? null
          : LookupModel.fromJson(json['Nationality2'] as Map<String, dynamic>),
      summary: json['Summary'] as String?,
      birthDate: json['BirthDate'] as String?,
      birthPlace: json['BirthPlace'] == null
          ? null
          : BirthPlaceModel.fromJson(
              json['BirthPlace'] as Map<String, dynamic>),
      maritalStatus: json['MaritalStatus'] == null
          ? null
          : LookupModel.fromJson(json['MaritalStatus'] as Map<String, dynamic>),
      military: json['Military'] == null
          ? null
          : MilitaryModel.fromJson(json['Military'] as Map<String, dynamic>),
      iskurInfo: json['IskurInfo'] == null
          ? null
          : IskurInfoModel.fromJson(json['IskurInfo'] as Map<String, dynamic>),
      handicap: json['Handicap'] == null
          ? null
          : HandicapModel.fromJson(json['Handicap'] as Map<String, dynamic>),
      conviction: json['Conviction'],
      terrorismVictim: json['TerrorismVictim'],
      linkedin: json['LinkedIn'] as String?,
      educationStatus: json['EducationStatus'],
    );

Map<String, dynamic> _$$_PersonalDetailsModelToJson(
        _$_PersonalDetailsModel instance) =>
    <String, dynamic>{
      'CvID': instance.cvID,
      'FirstName': instance.firstName,
      'LastName': instance.lastName,
      'IDNumber': instance.idNumber,
      'Gender': instance.gender,
      'Email': instance.email,
      'Email2': instance.email2,
      'Nationality': instance.nationality,
      'Nationality2': instance.nationality2,
      'Summary': instance.summary,
      'BirthDate': instance.birthDate,
      'BirthPlace': instance.birthPlace,
      'MaritalStatus': instance.maritalStatus,
      'Military': instance.military,
      'IskurInfo': instance.iskurInfo,
      'Handicap': instance.handicap,
      'Conviction': instance.conviction,
      'TerrorismVictim': instance.terrorismVictim,
      'LinkedIn': instance.linkedin,
      'EducationStatus': instance.educationStatus,
    };
