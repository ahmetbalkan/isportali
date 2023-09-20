import 'package:freezed_annotation/freezed_annotation.dart';

part 'membership_info_model.freezed.dart';
part 'membership_info_model.g.dart';

@freezed
class MembershipInfo with _$MembershipInfo {
  factory MembershipInfo({
    @JsonKey(name: 'UserID') int? userID,
    @JsonKey(name: 'CvIDList') List<int>? cvIDList,
    @JsonKey(name: 'FirstName') String? firstName,
    @JsonKey(name: 'LastName') String? lastName,
    @JsonKey(name: 'Email') String? email,
    @JsonKey(name: 'Sex') int? sex,
    @JsonKey(name: 'PhotoUrl') String? photoUrl,
  }) = _MembershipInfo;

  factory MembershipInfo.fromJson(Map<String, dynamic> json) =>
      _$MembershipInfoFromJson(json);
}


