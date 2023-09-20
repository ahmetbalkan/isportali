// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'handicap_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HandicapModel _$$_HandicapModelFromJson(Map<String, dynamic> json) =>
    _$_HandicapModel(
      level: json['Level'] == null
          ? null
          : LookupModel.fromJson(json['Level'] as Map<String, dynamic>),
      typeList: (json['TypeList'] as List<dynamic>?)
          ?.map((e) => LookupModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['Description'] as String?,
    );

Map<String, dynamic> _$$_HandicapModelToJson(_$_HandicapModel instance) =>
    <String, dynamic>{
      'Level': instance.level,
      'TypeList': instance.typeList,
      'Description': instance.description,
    };
