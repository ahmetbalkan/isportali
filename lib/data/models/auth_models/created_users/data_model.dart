import 'package:isportal/data/models/auth_models/created_users/insider_info_model.dart';
import 'package:isportal/data/models/auth_models/created_users/membership_info_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_model.freezed.dart';
part 'data_model.g.dart';

@freezed
class UserModelData with _$UserModelData {
  factory UserModelData({
    @JsonKey(name: 'PersistentTicket') String? persistentTicket,
    @JsonKey(name: 'MembershipInfo') MembershipInfo? membershipInfo,
    @JsonKey(name: 'InsiderInfo') InsiderInfo? insiderInfo,
    @JsonKey(name: 'Ticket') String? ticket,
  }) = _UserModelData;

  factory UserModelData.fromJson(Map<String, dynamic> json) =>
      _$UserModelDataFromJson(json);
}
