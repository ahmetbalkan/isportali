import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_model.freezed.dart';
part 'file_model.g.dart';

@freezed
class FileModel with _$FileModel {
  factory FileModel({
    @JsonKey(name: 'FileID') int? fileID,
    @JsonKey(name: 'Name') String? name,
    @JsonKey(name: 'Description') String? description,
    @JsonKey(name: 'Mime') String? mime,
    @JsonKey(name: 'Date') String? date,
    @JsonKey(name: 'Extension') String? extension,
    @JsonKey(name: 'FileData') String? fileData,
  }) = _FileModel;

  factory FileModel.fromJson(Map<String, dynamic> json) =>
      _$FileModelFromJson(json);
}
