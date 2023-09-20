import 'package:isportal/data/models/cv_models/cv_models/personal_data_model/lookup_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'military_model.freezed.dart';
part 'military_model.g.dart';

@freezed
class MilitaryModel with _$MilitaryModel {
  factory MilitaryModel({
    @JsonKey(name: 'Status') LookupModel? status,
    @JsonKey(name: 'Date') dynamic date,
    @JsonKey(name: 'Description') String? description,
  }) = _MilitaryModel;

  factory MilitaryModel.fromJson(Map<String, dynamic> json) =>
      _$MilitaryModelFromJson(json);
}
