import 'package:isportal/data/models/cv_models/cv_models/computer_skill_model/name_model.dart';
import 'package:isportal/data/models/cv_models/lookup_models/cv_data_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reference_model.freezed.dart';
part 'reference_model.g.dart';

@freezed
class ReferenceModel with _$ReferenceModel {
  factory ReferenceModel({
    @JsonKey(name: 'ID') int? id,
    @JsonKey(name: 'CvID') int? cvID,
    @JsonKey(name: 'FullName') String? fullName,
    @JsonKey(name: 'Company') CvDataModel? company,
    @JsonKey(name: 'OrganizationalLevel') String? organizationalLevel,
    @JsonKey(name: 'PhoneNumber') String? phoneNumber,
    @JsonKey(name: 'Email') String? email,
    @JsonKey(name: 'CreateDate') String? createDate,
    @JsonKey(name: 'DeleteDate') String? deleteDate,
    @JsonKey(name: 'IsActive') bool? isActive,
    @JsonKey(name: 'Type') NameModel? type,
  }) = _ReferenceModel;

  factory ReferenceModel.fromJson(Map<String, dynamic> json) =>
      _$ReferenceModelFromJson(json);
}
