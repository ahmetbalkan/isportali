import 'package:isportal/data/models/cv_models/cv_models/personal_data_model/lookup_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'src_model.freezed.dart';
part 'src_model.g.dart';

@freezed
class SrcModel with _$SrcModel {
  factory SrcModel({
    @JsonKey(name: 'Lookup') LookupModel? lookup,
    @JsonKey(name: 'Date') int? date,
  }) = _SrcModel;

  factory SrcModel.fromJson(Map<String, dynamic> json) =>
      _$SrcModelFromJson(json);
}
