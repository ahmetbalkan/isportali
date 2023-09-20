import 'package:isportal/data/models/cv_models/cv_models/personal_data_model/country_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'phone_number_model.freezed.dart';
part 'phone_number_model.g.dart';

@freezed
class PhoneNumberModel with _$PhoneNumberModel {
  factory PhoneNumberModel({
    @JsonKey(name: 'Country') CountryModel? country,
    @JsonKey(name: 'AreaCode') int? areaCode,
    @JsonKey(name: 'Number') String? number,
  }) = _PhoneNumberModel;

  factory PhoneNumberModel.fromJson(Map<String, dynamic> json) =>
      _$PhoneNumberModelFromJson(json);
}
