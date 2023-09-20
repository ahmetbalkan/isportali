// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reference_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReferenceModel _$$_ReferenceModelFromJson(Map<String, dynamic> json) =>
    _$_ReferenceModel(
      id: json['ID'] as int?,
      cvID: json['CvID'] as int?,
      fullName: json['FullName'] as String?,
      company: json['Company'] == null
          ? null
          : CvDataModel.fromJson(json['Company'] as Map<String, dynamic>),
      organizationalLevel: json['OrganizationalLevel'] as String?,
      phoneNumber: json['PhoneNumber'] as String?,
      email: json['Email'] as String?,
      createDate: json['CreateDate'] as String?,
      deleteDate: json['DeleteDate'] as String?,
      isActive: json['IsActive'] as bool?,
      type: json['Type'] == null
          ? null
          : NameModel.fromJson(json['Type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ReferenceModelToJson(_$_ReferenceModel instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'CvID': instance.cvID,
      'FullName': instance.fullName,
      'Company': instance.company,
      'OrganizationalLevel': instance.organizationalLevel,
      'PhoneNumber': instance.phoneNumber,
      'Email': instance.email,
      'CreateDate': instance.createDate,
      'DeleteDate': instance.deleteDate,
      'IsActive': instance.isActive,
      'Type': instance.type,
    };
