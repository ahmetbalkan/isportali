import 'package:freezed_annotation/freezed_annotation.dart';

part 'word_cv_model.freezed.dart';
part 'word_cv_model.g.dart';

@freezed
class WordCvModel with _$WordCvModel {
  factory WordCvModel({
    @JsonKey(name: 'Name') String? name,
    @JsonKey(name: 'Path') String? path,
    @JsonKey(name: 'Size') int? size,
  }) = _WordCvModel;

  factory WordCvModel.fromJson(Map<String, dynamic> json) =>
      _$WordCvModelFromJson(json);
}
