import 'package:json_annotation/json_annotation.dart';

part 'cv_data_model.g.dart';

@JsonSerializable()
class CvDataModel {
  @JsonKey(name: 'Value')
  int? value;

  @JsonKey(name: 'Name')
  String? name;

  @JsonKey(ignore: true)
  int parentID;

  CvDataModel({
    this.value,
    this.name,
    this.parentID = 0,
  });

  factory CvDataModel.fromJson(Map<String, dynamic> json) =>
      _$CvDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$CvDataModelToJson(this);

  @override
  String toString() {
    return 'CvDataModel(value: $value, name: $name, parentID: $parentID)';
  }
}
