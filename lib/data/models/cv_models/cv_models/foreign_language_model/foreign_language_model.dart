import 'package:isportal/data/models/cv_models/cv_models/foreign_language_model/language_level_model.dart';
import 'package:isportal/data/models/cv_models/cv_models/foreign_language_model/language_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'foreign_language_model.freezed.dart';
part 'foreign_language_model.g.dart';

@freezed
class ForeignLanguageModel with _$ForeignLanguageModel {
  factory ForeignLanguageModel({
    @JsonKey(name: 'ID') int? id,
    @JsonKey(name: 'CvID') int? cvID,
    @JsonKey(name: 'Language') LanguageModel? language,
    @JsonKey(name: 'ReadingLevel') LanguageLevelModel? readingLevel,
    @JsonKey(name: 'WritingLevel') LanguageLevelModel? writingLevel,
    @JsonKey(name: 'SpeakingLevel') LanguageLevelModel? speakingLevel,
    @JsonKey(name: 'Institution') String? institution,
  }) = _ForeignLanguageModel;

  factory ForeignLanguageModel.fromJson(Map<String, dynamic> json) =>
      _$ForeignLanguageModelFromJson(json);
}
