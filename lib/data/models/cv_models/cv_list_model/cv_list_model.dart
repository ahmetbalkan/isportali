import 'package:freezed_annotation/freezed_annotation.dart';

part 'cv_list_model.freezed.dart';
part 'cv_list_model.g.dart';

@freezed
class CvListModel with _$CvListModel {
  factory CvListModel({
    @JsonKey(name: 'ID') int? id,
    @JsonKey(name: 'Name') String? name,
    @JsonKey(name: 'Status') int? status,
    @JsonKey(name: 'LastUpdateDate') String? lastUpdateDate,
    @JsonKey(name: 'ViewedCount') int? viewedCount,
    @JsonKey(name: 'FoundCountInSearchResults') int? foundCountInSearchResults,
    @JsonKey(name: 'LastFound') String? lastFound,
    @JsonKey(name: 'CvFullness') int? cvFullness,
    @JsonKey(name: 'MissingInfoType') int? missingInfoType,
  }) = _CvListModel;

  factory CvListModel.fromJson(Map<String, dynamic> json) =>
      _$CvListModelFromJson(json);
}
