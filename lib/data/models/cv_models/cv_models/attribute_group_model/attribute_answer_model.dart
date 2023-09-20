import 'package:freezed_annotation/freezed_annotation.dart';

part 'attribute_answer_model.freezed.dart';
part 'attribute_answer_model.g.dart';

@freezed
class AttributeAnswerModel with _$AttributeAnswerModel {
  factory AttributeAnswerModel({
    @JsonKey(name: 'AttributeID') int? attributeID,
    @JsonKey(name: 'AnswerAsText') String? answerAsText,
    @JsonKey(name: 'AnswerAsID') String? answerAsID,
    @JsonKey(name: 'AttributeText') String? attributeText,
  }) = _AttributeAnswerModel;

  factory AttributeAnswerModel.fromJson(Map<String, dynamic> json) =>
      _$AttributeAnswerModelFromJson(json);
}
