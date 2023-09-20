import 'package:freezed_annotation/freezed_annotation.dart';

part 'secrecy_model.freezed.dart';
part 'secrecy_model.g.dart';

@freezed
class SecrecyModel with _$SecrecyModel {
  factory SecrecyModel({
    @JsonKey(name: 'CvID')
        int? cvID,
    @JsonKey(name: 'HideCurrentCompany')
        bool? hideCurrentCompany,
    @JsonKey(name: 'HideCommunicationInfo')
        bool? hideCommunicationInfo,
    @JsonKey(name: 'HideReferences')
        bool? hideReferences,
    @JsonKey(name: 'BlacklistedCompanyList')
        List<dynamic>? blacklistedCompanyList,
  }) = _SecrecyModel;

  factory SecrecyModel.fromJson(Map<String, dynamic> json) =>
      _$SecrecyModelFromJson(json);
}
