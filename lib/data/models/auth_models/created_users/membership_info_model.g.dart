// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'membership_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MembershipInfo _$$_MembershipInfoFromJson(Map<String, dynamic> json) =>
    _$_MembershipInfo(
      userID: json['UserID'] as int?,
      cvIDList:
          (json['CvIDList'] as List<dynamic>?)?.map((e) => e as int).toList(),
      firstName: json['FirstName'] as String?,
      lastName: json['LastName'] as String?,
      email: json['Email'] as String?,
      sex: json['Sex'] as int?,
      photoUrl: json['PhotoUrl'] as String?,
    );

Map<String, dynamic> _$$_MembershipInfoToJson(_$_MembershipInfo instance) =>
    <String, dynamic>{
      'UserID': instance.userID,
      'CvIDList': instance.cvIDList,
      'FirstName': instance.firstName,
      'LastName': instance.lastName,
      'Email': instance.email,
      'Sex': instance.sex,
      'PhotoUrl': instance.photoUrl,
    };
