// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'foreign_language_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ForeignLanguageModel _$$_ForeignLanguageModelFromJson(
        Map<String, dynamic> json) =>
    _$_ForeignLanguageModel(
      id: json['ID'] as int?,
      cvID: json['CvID'] as int?,
      language: json['Language'] == null
          ? null
          : LanguageModel.fromJson(json['Language'] as Map<String, dynamic>),
      readingLevel: json['ReadingLevel'] == null
          ? null
          : LanguageLevelModel.fromJson(
              json['ReadingLevel'] as Map<String, dynamic>),
      writingLevel: json['WritingLevel'] == null
          ? null
          : LanguageLevelModel.fromJson(
              json['WritingLevel'] as Map<String, dynamic>),
      speakingLevel: json['SpeakingLevel'] == null
          ? null
          : LanguageLevelModel.fromJson(
              json['SpeakingLevel'] as Map<String, dynamic>),
      institution: json['Institution'] as String?,
    );

Map<String, dynamic> _$$_ForeignLanguageModelToJson(
        _$_ForeignLanguageModel instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'CvID': instance.cvID,
      'Language': instance.language,
      'ReadingLevel': instance.readingLevel,
      'WritingLevel': instance.writingLevel,
      'SpeakingLevel': instance.speakingLevel,
      'Institution': instance.institution,
    };
