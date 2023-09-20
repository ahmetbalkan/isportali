import 'package:isportal/data/models/auth_models/created_users/data_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'created_user_model.freezed.dart';
part 'created_user_model.g.dart';

@freezed
class CreatedUserModel with _$CreatedUserModel {
  factory CreatedUserModel({
    @JsonKey(name: 'IsSuccess') @Default(false) bool isSuccess,
    @JsonKey(name: 'MessageList') dynamic messageList,
    @JsonKey(name: 'Data') UserModelData? data,
  }) = _CreatedUserModel;

  factory CreatedUserModel.fromJson(Map<String, dynamic> json) =>
      _$CreatedUserModelFromJson(json);
}
