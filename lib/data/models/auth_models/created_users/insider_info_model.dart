import 'package:freezed_annotation/freezed_annotation.dart';

part 'insider_info_model.freezed.dart';
part 'insider_info_model.g.dart';

@freezed
class InsiderInfo with _$InsiderInfo {
  factory InsiderInfo({
    @JsonKey(name: 'FirstName') String? firstName,
    @JsonKey(name: 'LastName') String? lastName,
    @JsonKey(name: 'Age') int? age,
    @JsonKey(name: 'Email') String? email,
    @JsonKey(name: 'LocationCity') String? locationCity,
    @JsonKey(name: 'LocationTown') String? locationTown,
    @JsonKey(name: 'CvCompletion') int? cvCompletion,
    @JsonKey(name: 'EdLevel') dynamic edLevel,
    @JsonKey(name: 'EnglishLevel') dynamic englishLevel,
    @JsonKey(name: 'ExDuration') int? exDuration,
    @JsonKey(name: 'LastInterestedAdposition') dynamic lastInterestedAdposition,
    @JsonKey(name: 'LastInterestedAdsector') dynamic lastInterestedAdsector,
  }) = _InsiderInfo;

  factory InsiderInfo.fromJson(Map<String, dynamic> json) =>
      _$InsiderInfoFromJson(json);
}


