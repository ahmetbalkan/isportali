import 'package:freezed_annotation/freezed_annotation.dart';

part 'iskur_info_model.freezed.dart';
part 'iskur_info_model.g.dart';

@freezed
class IskurInfoModel with _$IskurInfoModel {
  factory IskurInfoModel({
    @JsonKey(name: 'IsRegistered') bool? isRegistered,
    @JsonKey(name: 'ID') String? id,
  }) = _IskurInfoModel;

  factory IskurInfoModel.fromJson(Map<String, dynamic> json) =>
      _$IskurInfoModelFromJson(json);
}
