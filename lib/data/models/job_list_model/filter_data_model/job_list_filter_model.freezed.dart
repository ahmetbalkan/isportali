// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_list_filter_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JobListFilterModel _$JobListFilterModelFromJson(Map<String, dynamic> json) {
  return _JobListFilterModel.fromJson(json);
}

/// @nodoc
mixin _$JobListFilterModel {
  @JsonKey(name: 'Value')
  int? get value => throw _privateConstructorUsedError;
  @JsonKey(name: 'Name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'Type')
  int? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'LanguageID')
  int? get languageID => throw _privateConstructorUsedError;
  @JsonKey(name: 'OrderNo')
  int? get orderNo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobListFilterModelCopyWith<JobListFilterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobListFilterModelCopyWith<$Res> {
  factory $JobListFilterModelCopyWith(
          JobListFilterModel value, $Res Function(JobListFilterModel) then) =
      _$JobListFilterModelCopyWithImpl<$Res, JobListFilterModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Value') int? value,
      @JsonKey(name: 'Name') String? name,
      @JsonKey(name: 'Type') int? type,
      @JsonKey(name: 'LanguageID') int? languageID,
      @JsonKey(name: 'OrderNo') int? orderNo});
}

/// @nodoc
class _$JobListFilterModelCopyWithImpl<$Res, $Val extends JobListFilterModel>
    implements $JobListFilterModelCopyWith<$Res> {
  _$JobListFilterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? languageID = freezed,
    Object? orderNo = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      languageID: freezed == languageID
          ? _value.languageID
          : languageID // ignore: cast_nullable_to_non_nullable
              as int?,
      orderNo: freezed == orderNo
          ? _value.orderNo
          : orderNo // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_JobListFilterModelCopyWith<$Res>
    implements $JobListFilterModelCopyWith<$Res> {
  factory _$$_JobListFilterModelCopyWith(_$_JobListFilterModel value,
          $Res Function(_$_JobListFilterModel) then) =
      __$$_JobListFilterModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Value') int? value,
      @JsonKey(name: 'Name') String? name,
      @JsonKey(name: 'Type') int? type,
      @JsonKey(name: 'LanguageID') int? languageID,
      @JsonKey(name: 'OrderNo') int? orderNo});
}

/// @nodoc
class __$$_JobListFilterModelCopyWithImpl<$Res>
    extends _$JobListFilterModelCopyWithImpl<$Res, _$_JobListFilterModel>
    implements _$$_JobListFilterModelCopyWith<$Res> {
  __$$_JobListFilterModelCopyWithImpl(
      _$_JobListFilterModel _value, $Res Function(_$_JobListFilterModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? languageID = freezed,
    Object? orderNo = freezed,
  }) {
    return _then(_$_JobListFilterModel(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      languageID: freezed == languageID
          ? _value.languageID
          : languageID // ignore: cast_nullable_to_non_nullable
              as int?,
      orderNo: freezed == orderNo
          ? _value.orderNo
          : orderNo // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JobListFilterModel implements _JobListFilterModel {
  _$_JobListFilterModel(
      {@JsonKey(name: 'Value') this.value,
      @JsonKey(name: 'Name') this.name,
      @JsonKey(name: 'Type') this.type,
      @JsonKey(name: 'LanguageID') this.languageID,
      @JsonKey(name: 'OrderNo') this.orderNo});

  factory _$_JobListFilterModel.fromJson(Map<String, dynamic> json) =>
      _$$_JobListFilterModelFromJson(json);

  @override
  @JsonKey(name: 'Value')
  final int? value;
  @override
  @JsonKey(name: 'Name')
  final String? name;
  @override
  @JsonKey(name: 'Type')
  final int? type;
  @override
  @JsonKey(name: 'LanguageID')
  final int? languageID;
  @override
  @JsonKey(name: 'OrderNo')
  final int? orderNo;

  @override
  String toString() {
    return 'JobListFilterModel(value: $value, name: $name, type: $type, languageID: $languageID, orderNo: $orderNo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JobListFilterModel &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.languageID, languageID) ||
                other.languageID == languageID) &&
            (identical(other.orderNo, orderNo) || other.orderNo == orderNo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, value, name, type, languageID, orderNo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JobListFilterModelCopyWith<_$_JobListFilterModel> get copyWith =>
      __$$_JobListFilterModelCopyWithImpl<_$_JobListFilterModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JobListFilterModelToJson(
      this,
    );
  }
}

abstract class _JobListFilterModel implements JobListFilterModel {
  factory _JobListFilterModel(
      {@JsonKey(name: 'Value') final int? value,
      @JsonKey(name: 'Name') final String? name,
      @JsonKey(name: 'Type') final int? type,
      @JsonKey(name: 'LanguageID') final int? languageID,
      @JsonKey(name: 'OrderNo') final int? orderNo}) = _$_JobListFilterModel;

  factory _JobListFilterModel.fromJson(Map<String, dynamic> json) =
      _$_JobListFilterModel.fromJson;

  @override
  @JsonKey(name: 'Value')
  int? get value;
  @override
  @JsonKey(name: 'Name')
  String? get name;
  @override
  @JsonKey(name: 'Type')
  int? get type;
  @override
  @JsonKey(name: 'LanguageID')
  int? get languageID;
  @override
  @JsonKey(name: 'OrderNo')
  int? get orderNo;
  @override
  @JsonKey(ignore: true)
  _$$_JobListFilterModelCopyWith<_$_JobListFilterModel> get copyWith =>
      throw _privateConstructorUsedError;
}
