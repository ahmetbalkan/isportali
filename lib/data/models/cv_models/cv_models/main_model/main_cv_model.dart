// ignore_for_file: invalid_annotation_target

import 'package:isportal/data/models/cv_models/cv_models/cv_model.dart';
import 'package:isportal/data/models/job_model/messagelist_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'main_cv_model.freezed.dart';
part 'main_cv_model.g.dart';

@freezed
class MainCvModel with _$MainCvModel {
  factory MainCvModel({
    @JsonKey(name: 'IsSuccess') bool? isSuccess,
    @JsonKey(name: 'MessageList') List<MessageListModel>? messageList,
    @JsonKey(name: 'Data') CvModel? cvModel,
  }) = _MainCvModel;

  factory MainCvModel.fromJson(Map<String, dynamic> json) =>
      _$MainCvModelFromJson(json);
}
