import 'package:isportal/data/models/cv_models/cv_models/computer_skill_model/name_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'certificate_model.freezed.dart';
part 'certificate_model.g.dart';

@freezed
class CertificateModel with _$CertificateModel {
  factory CertificateModel({
    @JsonKey(name: 'ID') int? id,
    @JsonKey(name: 'CvID') int? cvID,
    @JsonKey(name: 'Name') NameModel? name,
    @JsonKey(name: 'Description') String? description,
    @JsonKey(name: 'Institution') String? institution,
    @JsonKey(name: 'Year') int? year,
  }) = _CertificateModel;

  factory CertificateModel.fromJson(Map<String, dynamic> json) =>
      _$CertificateModelFromJson(json);
}
