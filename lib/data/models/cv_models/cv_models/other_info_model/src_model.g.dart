// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'src_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SrcModel _$$_SrcModelFromJson(Map<String, dynamic> json) => _$_SrcModel(
      lookup: json['Lookup'] == null
          ? null
          : LookupModel.fromJson(json['Lookup'] as Map<String, dynamic>),
      date: json['Date'] as int?,
    );

Map<String, dynamic> _$$_SrcModelToJson(_$_SrcModel instance) =>
    <String, dynamic>{
      'Lookup': instance.lookup,
      'Date': instance.date,
    };
