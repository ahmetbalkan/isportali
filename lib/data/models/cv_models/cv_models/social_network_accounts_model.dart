import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_network_accounts_model.freezed.dart';
part 'social_network_accounts_model.g.dart';

@freezed
class SocialNetworkAccountsModel with _$SocialNetworkAccountsModel {
  factory SocialNetworkAccountsModel({
    @JsonKey(name: 'CvID') int? cvID,
    @JsonKey(name: 'Msn') String? msn,
    @JsonKey(name: 'Facebook') String? facebook,
    @JsonKey(name: 'Twitter') String? twitter,
    @JsonKey(name: 'Skype') String? skype,
    @JsonKey(name: 'Website') String? website,
    @JsonKey(name: 'Linkedin') String? linkedin,
    @JsonKey(name: 'FriendFeed') String? friendFeed,
    @JsonKey(name: 'Yahoo') String? yahoo,
    @JsonKey(name: 'GooglePlus') String? googlePlus,
  }) = _SocialNetworkAccountsModel;

  factory SocialNetworkAccountsModel.fromJson(Map<String, dynamic> json) =>
      _$SocialNetworkAccountsModelFromJson(json);
}
