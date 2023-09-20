// restaurant.dart
import 'package:freezed_annotation/freezed_annotation.dart';
// bağımlı olduğumuz diğer modelleri içe aktarın

part 'properties_model.freezed.dart';
part 'properties_model.g.dart';

@freezed
class PropertiesModel with _$PropertiesModel {
  factory PropertiesModel({
    @JsonKey(name: 'Title') String? title,
    @JsonKey(name: 'Detail') String? description,
  }) = _PropertiesModel;

  factory PropertiesModel.fromJson(Map<String, dynamic> json) =>
      _$PropertiesModelFromJson(json);
}
