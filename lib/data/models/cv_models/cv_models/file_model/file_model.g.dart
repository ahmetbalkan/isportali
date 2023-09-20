// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FileModel _$$_FileModelFromJson(Map<String, dynamic> json) => _$_FileModel(
      fileID: json['FileID'] as int?,
      name: json['Name'] as String?,
      description: json['Description'] as String?,
      mime: json['Mime'] as String?,
      date: json['Date'] as String?,
      extension: json['Extension'] as String?,
      fileData: json['FileData'] as String?,
    );

Map<String, dynamic> _$$_FileModelToJson(_$_FileModel instance) =>
    <String, dynamic>{
      'FileID': instance.fileID,
      'Name': instance.name,
      'Description': instance.description,
      'Mime': instance.mime,
      'Date': instance.date,
      'Extension': instance.extension,
      'FileData': instance.fileData,
    };
