import 'package:isportal/data/models/cv_models/lookup_models/cv_data_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'experience_model.g.dart';

@JsonSerializable()
class ExperienceModel {
  @JsonKey(name: 'Position')
  CvDataModel? position;

  @JsonKey(name: 'OrganizationalLevel')
  CvDataModel? organizationalLevel;

  @JsonKey(name: 'JobStatus')
  CvDataModel? jobStatus;

  @JsonKey(name: 'SupervisorTitle')
  String? supervisorTitle;

  @JsonKey(name: 'SubordinateCount')
  int? subordinateCount;

  @JsonKey(name: 'ResignationReason')
  CvDataModel? resignationReason;

  @JsonKey(name: 'ID')
  int? id;

  @JsonKey(name: 'CvID')
  int? cvID;

  @JsonKey(name: 'Company')
  CvDataModel? company;

  @JsonKey(name: 'Sector')
  CvDataModel? sector;

  @JsonKey(name: 'JobCategory')
  CvDataModel? jobCategory;

  @JsonKey(name: 'Country')
  CvDataModel? country;

  @JsonKey(name: 'City')
  CvDataModel? city;

  @JsonKey(name: 'StartDate')
  String? startDate;

  @JsonKey(name: 'EndDate')
  String? endDate;

  @JsonKey(name: 'Description')
  String? description;

  @JsonKey(name: 'DurationInfo')
  String? durationInfo;

  ExperienceModel({
    this.position,
    this.organizationalLevel,
    this.jobStatus,
    this.supervisorTitle,
    this.subordinateCount,
    this.resignationReason,
    this.id,
    this.cvID,
    this.company,
    this.sector,
    this.jobCategory,
    this.country,
    this.city,
    this.startDate,
    this.endDate,
    this.description,
    this.durationInfo,
  });

  factory ExperienceModel.fromJson(Map<String, dynamic> json) =>
      _$ExperienceModelFromJson(json);

  Map<String, dynamic> toJson() => _$ExperienceModelToJson(this);
}
