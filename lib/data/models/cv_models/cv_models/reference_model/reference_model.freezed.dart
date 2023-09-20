// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reference_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReferenceModel _$ReferenceModelFromJson(Map<String, dynamic> json) {
  return _ReferenceModel.fromJson(json);
}

/// @nodoc
mixin _$ReferenceModel {
  @JsonKey(name: 'ID')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'CvID')
  int? get cvID => throw _privateConstructorUsedError;
  @JsonKey(name: 'FullName')
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'Company')
  CvDataModel? get company => throw _privateConstructorUsedError;
  @JsonKey(name: 'OrganizationalLevel')
  String? get organizationalLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'PhoneNumber')
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'Email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'CreateDate')
  String? get createDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'DeleteDate')
  String? get deleteDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'IsActive')
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'Type')
  NameModel? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReferenceModelCopyWith<ReferenceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferenceModelCopyWith<$Res> {
  factory $ReferenceModelCopyWith(
          ReferenceModel value, $Res Function(ReferenceModel) then) =
      _$ReferenceModelCopyWithImpl<$Res, ReferenceModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ID') int? id,
      @JsonKey(name: 'CvID') int? cvID,
      @JsonKey(name: 'FullName') String? fullName,
      @JsonKey(name: 'Company') CvDataModel? company,
      @JsonKey(name: 'OrganizationalLevel') String? organizationalLevel,
      @JsonKey(name: 'PhoneNumber') String? phoneNumber,
      @JsonKey(name: 'Email') String? email,
      @JsonKey(name: 'CreateDate') String? createDate,
      @JsonKey(name: 'DeleteDate') String? deleteDate,
      @JsonKey(name: 'IsActive') bool? isActive,
      @JsonKey(name: 'Type') NameModel? type});

  $NameModelCopyWith<$Res>? get type;
}

/// @nodoc
class _$ReferenceModelCopyWithImpl<$Res, $Val extends ReferenceModel>
    implements $ReferenceModelCopyWith<$Res> {
  _$ReferenceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? cvID = freezed,
    Object? fullName = freezed,
    Object? company = freezed,
    Object? organizationalLevel = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? createDate = freezed,
    Object? deleteDate = freezed,
    Object? isActive = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      cvID: freezed == cvID
          ? _value.cvID
          : cvID // ignore: cast_nullable_to_non_nullable
              as int?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CvDataModel?,
      organizationalLevel: freezed == organizationalLevel
          ? _value.organizationalLevel
          : organizationalLevel // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      createDate: freezed == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as String?,
      deleteDate: freezed == deleteDate
          ? _value.deleteDate
          : deleteDate // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NameModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NameModelCopyWith<$Res>? get type {
    if (_value.type == null) {
      return null;
    }

    return $NameModelCopyWith<$Res>(_value.type!, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ReferenceModelCopyWith<$Res>
    implements $ReferenceModelCopyWith<$Res> {
  factory _$$_ReferenceModelCopyWith(
          _$_ReferenceModel value, $Res Function(_$_ReferenceModel) then) =
      __$$_ReferenceModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ID') int? id,
      @JsonKey(name: 'CvID') int? cvID,
      @JsonKey(name: 'FullName') String? fullName,
      @JsonKey(name: 'Company') CvDataModel? company,
      @JsonKey(name: 'OrganizationalLevel') String? organizationalLevel,
      @JsonKey(name: 'PhoneNumber') String? phoneNumber,
      @JsonKey(name: 'Email') String? email,
      @JsonKey(name: 'CreateDate') String? createDate,
      @JsonKey(name: 'DeleteDate') String? deleteDate,
      @JsonKey(name: 'IsActive') bool? isActive,
      @JsonKey(name: 'Type') NameModel? type});

  @override
  $NameModelCopyWith<$Res>? get type;
}

/// @nodoc
class __$$_ReferenceModelCopyWithImpl<$Res>
    extends _$ReferenceModelCopyWithImpl<$Res, _$_ReferenceModel>
    implements _$$_ReferenceModelCopyWith<$Res> {
  __$$_ReferenceModelCopyWithImpl(
      _$_ReferenceModel _value, $Res Function(_$_ReferenceModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? cvID = freezed,
    Object? fullName = freezed,
    Object? company = freezed,
    Object? organizationalLevel = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? createDate = freezed,
    Object? deleteDate = freezed,
    Object? isActive = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_ReferenceModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      cvID: freezed == cvID
          ? _value.cvID
          : cvID // ignore: cast_nullable_to_non_nullable
              as int?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CvDataModel?,
      organizationalLevel: freezed == organizationalLevel
          ? _value.organizationalLevel
          : organizationalLevel // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      createDate: freezed == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as String?,
      deleteDate: freezed == deleteDate
          ? _value.deleteDate
          : deleteDate // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NameModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReferenceModel implements _ReferenceModel {
  _$_ReferenceModel(
      {@JsonKey(name: 'ID') this.id,
      @JsonKey(name: 'CvID') this.cvID,
      @JsonKey(name: 'FullName') this.fullName,
      @JsonKey(name: 'Company') this.company,
      @JsonKey(name: 'OrganizationalLevel') this.organizationalLevel,
      @JsonKey(name: 'PhoneNumber') this.phoneNumber,
      @JsonKey(name: 'Email') this.email,
      @JsonKey(name: 'CreateDate') this.createDate,
      @JsonKey(name: 'DeleteDate') this.deleteDate,
      @JsonKey(name: 'IsActive') this.isActive,
      @JsonKey(name: 'Type') this.type});

  factory _$_ReferenceModel.fromJson(Map<String, dynamic> json) =>
      _$$_ReferenceModelFromJson(json);

  @override
  @JsonKey(name: 'ID')
  final int? id;
  @override
  @JsonKey(name: 'CvID')
  final int? cvID;
  @override
  @JsonKey(name: 'FullName')
  final String? fullName;
  @override
  @JsonKey(name: 'Company')
  final CvDataModel? company;
  @override
  @JsonKey(name: 'OrganizationalLevel')
  final String? organizationalLevel;
  @override
  @JsonKey(name: 'PhoneNumber')
  final String? phoneNumber;
  @override
  @JsonKey(name: 'Email')
  final String? email;
  @override
  @JsonKey(name: 'CreateDate')
  final String? createDate;
  @override
  @JsonKey(name: 'DeleteDate')
  final String? deleteDate;
  @override
  @JsonKey(name: 'IsActive')
  final bool? isActive;
  @override
  @JsonKey(name: 'Type')
  final NameModel? type;

  @override
  String toString() {
    return 'ReferenceModel(id: $id, cvID: $cvID, fullName: $fullName, company: $company, organizationalLevel: $organizationalLevel, phoneNumber: $phoneNumber, email: $email, createDate: $createDate, deleteDate: $deleteDate, isActive: $isActive, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReferenceModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.cvID, cvID) || other.cvID == cvID) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.organizationalLevel, organizationalLevel) ||
                other.organizationalLevel == organizationalLevel) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.createDate, createDate) ||
                other.createDate == createDate) &&
            (identical(other.deleteDate, deleteDate) ||
                other.deleteDate == deleteDate) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      cvID,
      fullName,
      company,
      organizationalLevel,
      phoneNumber,
      email,
      createDate,
      deleteDate,
      isActive,
      type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReferenceModelCopyWith<_$_ReferenceModel> get copyWith =>
      __$$_ReferenceModelCopyWithImpl<_$_ReferenceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReferenceModelToJson(
      this,
    );
  }
}

abstract class _ReferenceModel implements ReferenceModel {
  factory _ReferenceModel(
      {@JsonKey(name: 'ID') final int? id,
      @JsonKey(name: 'CvID') final int? cvID,
      @JsonKey(name: 'FullName') final String? fullName,
      @JsonKey(name: 'Company') final CvDataModel? company,
      @JsonKey(name: 'OrganizationalLevel') final String? organizationalLevel,
      @JsonKey(name: 'PhoneNumber') final String? phoneNumber,
      @JsonKey(name: 'Email') final String? email,
      @JsonKey(name: 'CreateDate') final String? createDate,
      @JsonKey(name: 'DeleteDate') final String? deleteDate,
      @JsonKey(name: 'IsActive') final bool? isActive,
      @JsonKey(name: 'Type') final NameModel? type}) = _$_ReferenceModel;

  factory _ReferenceModel.fromJson(Map<String, dynamic> json) =
      _$_ReferenceModel.fromJson;

  @override
  @JsonKey(name: 'ID')
  int? get id;
  @override
  @JsonKey(name: 'CvID')
  int? get cvID;
  @override
  @JsonKey(name: 'FullName')
  String? get fullName;
  @override
  @JsonKey(name: 'Company')
  CvDataModel? get company;
  @override
  @JsonKey(name: 'OrganizationalLevel')
  String? get organizationalLevel;
  @override
  @JsonKey(name: 'PhoneNumber')
  String? get phoneNumber;
  @override
  @JsonKey(name: 'Email')
  String? get email;
  @override
  @JsonKey(name: 'CreateDate')
  String? get createDate;
  @override
  @JsonKey(name: 'DeleteDate')
  String? get deleteDate;
  @override
  @JsonKey(name: 'IsActive')
  bool? get isActive;
  @override
  @JsonKey(name: 'Type')
  NameModel? get type;
  @override
  @JsonKey(ignore: true)
  _$$_ReferenceModelCopyWith<_$_ReferenceModel> get copyWith =>
      throw _privateConstructorUsedError;
}
