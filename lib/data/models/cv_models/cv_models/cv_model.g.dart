// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cv_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CvModel _$CvModelFromJson(Map<String, dynamic> json) => CvModel(
      id: json['id'] as int?,
      userID: json['userID'] as int?,
      name: json['name'] as String?,
      isActive: json['isActive'] as bool?,
      isDefaultCv: json['isDefaultCv'] as bool?,
      isLinkedinCv: json['isLinkedinCv'] as bool?,
      hasVConnectVideo: json['hasVConnectVideo'] as bool?,
      language: json['language'] as int?,
      createDate: json['createDate'] as String?,
      lastUpdateDate: json['lastUpdateDate'] as String?,
      fullness: json['fullness'] as int?,
      viewCount: json['viewCount'] as int?,
      photoPath: json['photoPath'] as String?,
      forPdf: json['forPdf'] as bool,
      emailForSendCv: json['emailForSendCv'] as String?,
      userTypeIdList: (json['userTypeIdList'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
      forPreview: json['forPreview'] as bool,
      edudegree: json['edudegree'] as int,
      personalDetailsModel: json['personalDetailsModel'] == null
          ? null
          : PersonalDetailsModel.fromJson(
              json['personalDetailsModel'] as Map<String, dynamic>),
      communicationDetailsModel: json['communicationDetailsModel'] == null
          ? null
          : CommunicationDetailsModel.fromJson(
              json['communicationDetailsModel'] as Map<String, dynamic>),
      socialNetworkAccountsModel: json['socialNetworkAccountsModel'] == null
          ? null
          : SocialNetworkAccountsModel.fromJson(
              json['socialNetworkAccountsModel'] as Map<String, dynamic>),
      experienceList: (json['experienceList'] as List<dynamic>?)
          ?.map((e) => ExperienceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      internShipModel: (json['internShipModel'] as List<dynamic>?)
          ?.map((e) => InternshipModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      educationList: (json['educationList'] as List<dynamic>?)
          ?.map((e) => EducationModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      foreignLanguageList: (json['foreignLanguageList'] as List<dynamic>?)
          ?.map((e) => ForeignLanguageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      computerSkillList: (json['computerSkillList'] as List<dynamic>?)
          ?.map((e) => ComputerSkillModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      computerSkillNewList: (json['computerSkillNewList'] as List<dynamic>?)
          ?.map(
              (e) => ComputerSkillNewModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      courseList: (json['courseList'] as List<dynamic>?)
          ?.map((e) => CourseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      examList: (json['examList'] as List<dynamic>?)
          ?.map((e) => ExamModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      certificateList: (json['certificateList'] as List<dynamic>?)
          ?.map((e) => CertificateModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      referenceList: (json['referenceList'] as List<dynamic>?)
          ?.map((e) => ReferenceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      wordCvModel: (json['wordCvModel'] as List<dynamic>?)
          ?.map((e) => WordCvModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      fileList: (json['fileList'] as List<dynamic>?)
          ?.map((e) => FileModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      attributeGroupList: (json['attributeGroupList'] as List<dynamic>?)
          ?.map((e) => AttributeGroupModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      attributeAnswerList: (json['attributeAnswerList'] as List<dynamic>?)
          ?.map((e) => AttributeAnswerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      secrecy: json['secrecy'] == null
          ? null
          : SecrecyModel.fromJson(json['secrecy'] as Map<String, dynamic>),
      otherInfo: json['otherInfo'] == null
          ? null
          : OtherInfoModel.fromJson(json['otherInfo'] as Map<String, dynamic>),
      extraInfoModel: json['extraInfoModel'] == null
          ? null
          : ExtraInfoModel.fromJson(
              json['extraInfoModel'] as Map<String, dynamic>),
      preferences: json['preferences'] == null
          ? null
          : PreferencesModel.fromJson(
              json['preferences'] as Map<String, dynamic>),
      literalsModel: json['literalsModel'] == null
          ? null
          : LiteralsModel.fromJson(
              json['literalsModel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CvModelToJson(CvModel instance) => <String, dynamic>{
      'id': instance.id,
      'userID': instance.userID,
      'name': instance.name,
      'isActive': instance.isActive,
      'isDefaultCv': instance.isDefaultCv,
      'isLinkedinCv': instance.isLinkedinCv,
      'hasVConnectVideo': instance.hasVConnectVideo,
      'language': instance.language,
      'createDate': instance.createDate,
      'lastUpdateDate': instance.lastUpdateDate,
      'fullness': instance.fullness,
      'viewCount': instance.viewCount,
      'photoPath': instance.photoPath,
      'forPdf': instance.forPdf,
      'emailForSendCv': instance.emailForSendCv,
      'userTypeIdList': instance.userTypeIdList,
      'forPreview': instance.forPreview,
      'edudegree': instance.edudegree,
      'personalDetailsModel': instance.personalDetailsModel,
      'communicationDetailsModel': instance.communicationDetailsModel,
      'socialNetworkAccountsModel': instance.socialNetworkAccountsModel,
      'experienceList': instance.experienceList,
      'internShipModel': instance.internShipModel,
      'educationList': instance.educationList,
      'foreignLanguageList': instance.foreignLanguageList,
      'computerSkillList': instance.computerSkillList,
      'computerSkillNewList': instance.computerSkillNewList,
      'courseList': instance.courseList,
      'examList': instance.examList,
      'certificateList': instance.certificateList,
      'referenceList': instance.referenceList,
      'wordCvModel': instance.wordCvModel,
      'fileList': instance.fileList,
      'attributeGroupList': instance.attributeGroupList,
      'attributeAnswerList': instance.attributeAnswerList,
      'secrecy': instance.secrecy,
      'otherInfo': instance.otherInfo,
      'extraInfoModel': instance.extraInfoModel,
      'preferences': instance.preferences,
      'literalsModel': instance.literalsModel,
    };
