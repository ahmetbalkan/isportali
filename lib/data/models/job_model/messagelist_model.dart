// restaurant.dart
import 'package:freezed_annotation/freezed_annotation.dart';
// bağımlı olduğumuz diğer modelleri içe aktarın

part 'messagelist_model.freezed.dart';
part 'messagelist_model.g.dart';

@freezed
class MessageListModel with _$MessageListModel {
  factory MessageListModel({
    @JsonKey(name: 'Type') int? type,
    @JsonKey(name: 'Code') String? code,
    @JsonKey(name: 'Description') String? description,
    @JsonKey(name: 'PlaceholderValues')
        PlaceholderValuesModel? placeholderValues,
  }) = _MessageListModel;

  factory MessageListModel.fromJson(Map<String, dynamic> json) =>
      _$MessageListModelFromJson(json);
}

@freezed
class PlaceholderValuesModel with _$PlaceholderValuesModel {
  factory PlaceholderValuesModel({
    @JsonKey(name: 'PropertyName') String? propertyName,
    @JsonKey(name: 'PropertyValue') int? propertyValue,
  }) = _PlaceholderValuesModel;

  factory PlaceholderValuesModel.fromJson(Map<String, dynamic> json) =>
      _$PlaceholderValuesModelFromJson(json);
}
