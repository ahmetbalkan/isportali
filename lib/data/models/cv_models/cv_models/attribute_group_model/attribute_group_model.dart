import 'package:isportal/data/models/cv_models/cv_models/attribute_group_model/attribute_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'attribute_group_model.freezed.dart';
part 'attribute_group_model.g.dart';

@freezed
class AttributeGroupModel with _$AttributeGroupModel {
  factory AttributeGroupModel({
    @JsonKey(name: 'ID') int? id,
    @JsonKey(name: 'Name') String? name,
    @JsonKey(name: 'AttributeList') List<AttributeModel>? attributeList,
  }) = _AttributeGroupModel;

  factory AttributeGroupModel.fromJson(Map<String, dynamic> json) =>
      _$AttributeGroupModelFromJson(json);
}