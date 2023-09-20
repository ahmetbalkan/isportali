// ignore_for_file: invalid_annotation_target

import 'package:isportal/data/models/cv_models/cv_models/attribute_group_model/attribute_answer_model.dart';
import 'package:isportal/data/models/cv_models/cv_models/attribute_group_model/attribute_group_model.dart';
import 'package:isportal/data/models/cv_models/cv_models/certificate_model/certificate_model.dart';
import 'package:isportal/data/models/cv_models/cv_models/communication_details_model/communication_details_model.dart';
import 'package:isportal/data/models/cv_models/cv_models/computer_skill_model/computer_skill_model.dart';
import 'package:isportal/data/models/cv_models/cv_models/computer_skill_new_model/computer_skill_new_model.dart';
import 'package:isportal/data/models/cv_models/cv_models/course_model/course_model.dart';
import 'package:isportal/data/models/cv_models/cv_models/education_model/education_model.dart';
import 'package:isportal/data/models/cv_models/cv_models/exam_model/exam_model.dart';
import 'package:isportal/data/models/cv_models/cv_models/experience_model/experience_model.dart';
import 'package:isportal/data/models/cv_models/cv_models/extra_info_model/extra_info_model.dart';
import 'package:isportal/data/models/cv_models/cv_models/file_model/file_model.dart';
import 'package:isportal/data/models/cv_models/cv_models/foreign_language_model/foreign_language_model.dart';
import 'package:isportal/data/models/cv_models/cv_models/internship_model/internship_model.dart';
import 'package:isportal/data/models/cv_models/cv_models/literals_model/literals_model.dart';
import 'package:isportal/data/models/cv_models/cv_models/other_info_model/other_info_model.dart';
import 'package:isportal/data/models/cv_models/cv_models/preferences_model/preferences_model.dart';
import 'package:isportal/data/models/cv_models/cv_models/reference_model/reference_model.dart';
import 'package:isportal/data/models/cv_models/cv_models/secrecy_model/secrecy_model.dart';
import 'package:isportal/data/models/cv_models/cv_models/social_network_accounts_model.dart';
import 'package:isportal/data/models/cv_models/cv_models/word_cv_model/word_cv_model.dart';
import 'package:json_annotation/json_annotation.dart';

import 'personal_data_model/personal_details_model.dart';

part 'cv_model.g.dart';

@JsonSerializable()
class CvModel {
  CvModel({
    @JsonKey(name: 'ID') this.id,
    @JsonKey(name: 'UserID') this.userID,
    @JsonKey(name: 'Name') this.name,
    @JsonKey(name: 'IsActive') this.isActive,
    @JsonKey(name: 'IsDefaultCv') this.isDefaultCv,
    @JsonKey(name: 'IsLinkedinCv') this.isLinkedinCv,
    @JsonKey(name: 'HasVConnectVideo') this.hasVConnectVideo,
    @JsonKey(name: 'Language') this.language,
    @JsonKey(name: 'CreateDate') this.createDate,
    @JsonKey(name: 'LastUpdateDate') this.lastUpdateDate,
    @JsonKey(name: 'Fullness') this.fullness,
    @JsonKey(name: 'ViewCount') this.viewCount,
    @JsonKey(name: 'PhotoPath') this.photoPath,
    @JsonKey(name: 'ForPdf') required this.forPdf,
    @JsonKey(name: 'EmailForSendCv') this.emailForSendCv,
    @JsonKey(name: 'UserTypeIdList') required this.userTypeIdList,
    @JsonKey(name: 'ForPreview') required this.forPreview,
    @JsonKey(name: 'Edudegree') required this.edudegree,
    @JsonKey(name: 'PersonalDetails') this.personalDetailsModel,
    @JsonKey(name: 'CommunicationDetails') this.communicationDetailsModel,
    @JsonKey(name: 'SocialNetworkAccounts') this.socialNetworkAccountsModel,
    @JsonKey(name: 'ExperienceList') this.experienceList,
    @JsonKey(name: 'InternshipList') this.internShipModel,
    @JsonKey(name: 'EducationList') this.educationList,
    @JsonKey(name: 'ForeignLanguageList') this.foreignLanguageList,
    @JsonKey(name: 'ComputerSkillList') this.computerSkillList,
    @JsonKey(name: 'ComputerSkillNewList') this.computerSkillNewList,
    @JsonKey(name: 'CourseList') this.courseList,
    @JsonKey(name: 'ExamList') this.examList,
    @JsonKey(name: 'CertificateList') this.certificateList,
    @JsonKey(name: 'ReferenceList') this.referenceList,
    @JsonKey(name: 'WordCvList') this.wordCvModel,
    @JsonKey(name: 'FileList') this.fileList,
    @JsonKey(name: 'AttributeGroupList') this.attributeGroupList,
    @JsonKey(name: 'AttributeAnswerList') this.attributeAnswerList,
    @JsonKey(name: 'Secrecy') this.secrecy,
    @JsonKey(name: 'OtherInfo') this.otherInfo,
    @JsonKey(name: 'ExtraInfo') this.extraInfoModel,
    @JsonKey(name: 'Preferences') this.preferences,
    @JsonKey(name: 'Literals') this.literalsModel,
  });

  final int? id;
  final int? userID;
  final String? name;
  final bool? isActive;
  final bool? isDefaultCv;
  final bool? isLinkedinCv;
  final bool? hasVConnectVideo;
  final int? language;
  final String? createDate;
  final String? lastUpdateDate;
  final int? fullness;
  final int? viewCount;
  final String? photoPath;
  final bool forPdf;
  final String? emailForSendCv;
  final List<int> userTypeIdList;
  final bool forPreview;
  final int edudegree;
  final PersonalDetailsModel? personalDetailsModel;
  final CommunicationDetailsModel? communicationDetailsModel;
  final SocialNetworkAccountsModel? socialNetworkAccountsModel;
  final List<ExperienceModel>? experienceList;
  final List<InternshipModel>? internShipModel;
  final List<EducationModel>? educationList;
  final List<ForeignLanguageModel>? foreignLanguageList;
  final List<ComputerSkillModel>? computerSkillList;
  final List<ComputerSkillNewModel>? computerSkillNewList;
  final List<CourseModel>? courseList;
  final List<ExamModel>? examList;
  final List<CertificateModel>? certificateList;
  final List<ReferenceModel>? referenceList;
  final List<WordCvModel>? wordCvModel;
  final List<FileModel>? fileList;
  final List<AttributeGroupModel>? attributeGroupList;
  final List<AttributeAnswerModel>? attributeAnswerList;
  final SecrecyModel? secrecy;
  final OtherInfoModel? otherInfo;
  final ExtraInfoModel? extraInfoModel;
  final PreferencesModel? preferences;
  final LiteralsModel? literalsModel;

  factory CvModel.fromJson(Map<String, dynamic> json) =>
      _$CvModelFromJson(json);

  Map<String, dynamic> toJson() => _$CvModelToJson(this);
}
