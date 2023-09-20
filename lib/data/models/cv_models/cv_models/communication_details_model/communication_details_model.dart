import 'package:isportal/data/models/cv_models/cv_models/communication_details_model/address_model.dart';
import 'package:isportal/data/models/cv_models/cv_models/communication_details_model/phone_number_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'communication_details_model.freezed.dart';
part 'communication_details_model.g.dart';

@freezed
class CommunicationDetailsModel with _$CommunicationDetailsModel {
  factory CommunicationDetailsModel({
    @JsonKey(name: 'CvID') int? cvID,
    @JsonKey(name: 'MobilePhoneNumber') PhoneNumberModel? mobilePhoneNumber,
    @JsonKey(name: 'MobilePhoneNumber2') PhoneNumberModel? mobilePhoneNumber2,
    @JsonKey(name: 'HomePhoneNumber') PhoneNumberModel? homePhoneNumber,
    @JsonKey(name: 'Address') AddressModel? address,
  }) = _CommunicationDetailsModel;

  factory CommunicationDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$CommunicationDetailsModelFromJson(json);
}
