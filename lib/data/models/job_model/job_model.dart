import 'package:isportal/data/models/job_model/data_model.dart';
import 'package:isportal/data/models/job_model/messagelist_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'job_model.freezed.dart';
part 'job_model.g.dart';

@freezed
class JobModel with _$JobModel {
  factory JobModel({
    @JsonKey(name: 'IsSuccess') @Default(false) bool isSuccess,
    @JsonKey(name: 'MessageList') List<MessageListModel>? messageList,
    @JsonKey(name: 'Data') DataModel? data,
  }) = _JobModel;

  factory JobModel.fromJson(Map<String, dynamic> json) =>
      _$JobModelFromJson(json);
}
