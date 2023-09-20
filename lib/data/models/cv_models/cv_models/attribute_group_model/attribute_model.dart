import 'package:isportal/data/models/cv_models/cv_models/attribute_group_model/option_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'attribute_model.freezed.dart';
part 'attribute_model.g.dart';

@freezed
class AttributeModel with _$AttributeModel {
  factory AttributeModel({
    @JsonKey(name: 'ID') int? id,
    @JsonKey(name: 'Text') String? text,
    @JsonKey(name: 'Type') int? type,
    @JsonKey(name: 'DataType') int? dataType,
    @JsonKey(name: 'OrderID') int? orderID,
    @JsonKey(name: 'IsRequired') bool? isRequired,
    @JsonKey(name: 'OptionList') List<OptionModel>? optionList,
  }) = _AttributeModel;

  factory AttributeModel.fromJson(Map<String, dynamic> json) =>
      _$AttributeModelFromJson(json);
}
