// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'certificate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CertificateModel _$$_CertificateModelFromJson(Map<String, dynamic> json) =>
    _$_CertificateModel(
      id: json['ID'] as int?,
      cvID: json['CvID'] as int?,
      name: json['Name'] == null
          ? null
          : NameModel.fromJson(json['Name'] as Map<String, dynamic>),
      description: json['Description'] as String?,
      institution: json['Institution'] as String?,
      year: json['Year'] as int?,
    );

Map<String, dynamic> _$$_CertificateModelToJson(_$_CertificateModel instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'CvID': instance.cvID,
      'Name': instance.name,
      'Description': instance.description,
      'Institution': instance.institution,
      'Year': instance.year,
    };
