// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_network_accounts_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SocialNetworkAccountsModel _$$_SocialNetworkAccountsModelFromJson(
        Map<String, dynamic> json) =>
    _$_SocialNetworkAccountsModel(
      cvID: json['CvID'] as int?,
      msn: json['Msn'] as String?,
      facebook: json['Facebook'] as String?,
      twitter: json['Twitter'] as String?,
      skype: json['Skype'] as String?,
      website: json['Website'] as String?,
      linkedin: json['Linkedin'] as String?,
      friendFeed: json['FriendFeed'] as String?,
      yahoo: json['Yahoo'] as String?,
      googlePlus: json['GooglePlus'] as String?,
    );

Map<String, dynamic> _$$_SocialNetworkAccountsModelToJson(
        _$_SocialNetworkAccountsModel instance) =>
    <String, dynamic>{
      'CvID': instance.cvID,
      'Msn': instance.msn,
      'Facebook': instance.facebook,
      'Twitter': instance.twitter,
      'Skype': instance.skype,
      'Website': instance.website,
      'Linkedin': instance.linkedin,
      'FriendFeed': instance.friendFeed,
      'Yahoo': instance.yahoo,
      'GooglePlus': instance.googlePlus,
    };
