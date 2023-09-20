import 'package:isportal/data/models/cv_models/cv_models/personal_data_model/lookup_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'handicap_model.freezed.dart';
part 'handicap_model.g.dart';

@freezed
class HandicapModel with _$HandicapModel {
  factory HandicapModel({
    @JsonKey(name: 'Level') LookupModel? level,
    @JsonKey(name: 'TypeList') List<LookupModel>? typeList,
    @JsonKey(name: 'Description') String? description,
  }) = _HandicapModel;

  factory HandicapModel.fromJson(Map<String, dynamic> json) =>
      _$HandicapModelFromJson(json);
}
