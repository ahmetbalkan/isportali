import 'package:isportal/data/models/cv_models/cv_models/other_info_model/src_model.dart';
import 'package:isportal/data/models/cv_models/cv_models/personal_data_model/handicap_model.dart';
import 'package:isportal/data/models/cv_models/cv_models/personal_data_model/iskur_info_model.dart';
import 'package:isportal/data/models/cv_models/cv_models/personal_data_model/lookup_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'other_info_model.freezed.dart';
part 'other_info_model.g.dart';

@freezed
class OtherInfoModel with _$OtherInfoModel {
  factory OtherInfoModel({
    @JsonKey(name: 'CvID') int? cvID,
    @JsonKey(name: 'WebSite') String? website,
    @JsonKey(name: 'Linkedin') String? linkedin,
    @JsonKey(name: 'Twitter') String? twitter,
    @JsonKey(name: 'Handicap') HandicapModel? handicap,
    @JsonKey(name: 'Conviction') dynamic conviction,
    @JsonKey(name: 'TerrorismVictim') dynamic terrorismVictim,
    @JsonKey(name: 'IskurInfo') IskurInfoModel? iskurInfo,
    @JsonKey(name: 'IDNumber') int? idNumber,
    @JsonKey(name: 'Smoker') LookupModel? smoker,
    @JsonKey(name: 'IHaveTravelDisability') LookupModel? iHaveTravelDisability,
    @JsonKey(name: 'DrivingLicenseList') List<LookupModel>? drivingLicenseList,
    @JsonKey(name: 'SrcList') List<SrcModel>? srcList,
    @JsonKey(name: 'MaritalStatus') LookupModel? maritalStatus,
    @JsonKey(name: 'Nationality') LookupModel? nationality,
    @JsonKey(name: 'Nationality2') LookupModel? nationality2,
  }) = _OtherInfoModel;

  factory OtherInfoModel.fromJson(Map<String, dynamic> json) =>
      _$OtherInfoModelFromJson(json);
}
