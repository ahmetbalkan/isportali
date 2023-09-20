// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'certificate_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CertificateModel _$CertificateModelFromJson(Map<String, dynamic> json) {
  return _CertificateModel.fromJson(json);
}

/// @nodoc
mixin _$CertificateModel {
  @JsonKey(name: 'ID')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'CvID')
  int? get cvID => throw _privateConstructorUsedError;
  @JsonKey(name: 'Name')
  NameModel? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'Description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'Institution')
  String? get institution => throw _privateConstructorUsedError;
  @JsonKey(name: 'Year')
  int? get year => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CertificateModelCopyWith<CertificateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CertificateModelCopyWith<$Res> {
  factory $CertificateModelCopyWith(
          CertificateModel value, $Res Function(CertificateModel) then) =
      _$CertificateModelCopyWithImpl<$Res, CertificateModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ID') int? id,
      @JsonKey(name: 'CvID') int? cvID,
      @JsonKey(name: 'Name') NameModel? name,
      @JsonKey(name: 'Description') String? description,
      @JsonKey(name: 'Institution') String? institution,
      @JsonKey(name: 'Year') int? year});

  $NameModelCopyWith<$Res>? get name;
}

/// @nodoc
class _$CertificateModelCopyWithImpl<$Res, $Val extends CertificateModel>
    implements $CertificateModelCopyWith<$Res> {
  _$CertificateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? cvID = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? institution = freezed,
    Object? year = freezed,
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as NameModel?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      institution: freezed == institution
          ? _value.institution
          : institution // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NameModelCopyWith<$Res>? get name {
    if (_value.name == null) {
      return null;
    }

    return $NameModelCopyWith<$Res>(_value.name!, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CertificateModelCopyWith<$Res>
    implements $CertificateModelCopyWith<$Res> {
  factory _$$_CertificateModelCopyWith(
          _$_CertificateModel value, $Res Function(_$_CertificateModel) then) =
      __$$_CertificateModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ID') int? id,
      @JsonKey(name: 'CvID') int? cvID,
      @JsonKey(name: 'Name') NameModel? name,
      @JsonKey(name: 'Description') String? description,
      @JsonKey(name: 'Institution') String? institution,
      @JsonKey(name: 'Year') int? year});

  @override
  $NameModelCopyWith<$Res>? get name;
}

/// @nodoc
class __$$_CertificateModelCopyWithImpl<$Res>
    extends _$CertificateModelCopyWithImpl<$Res, _$_CertificateModel>
    implements _$$_CertificateModelCopyWith<$Res> {
  __$$_CertificateModelCopyWithImpl(
      _$_CertificateModel _value, $Res Function(_$_CertificateModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? cvID = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? institution = freezed,
    Object? year = freezed,
  }) {
    return _then(_$_CertificateModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      cvID: freezed == cvID
          ? _value.cvID
          : cvID // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as NameModel?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      institution: freezed == institution
          ? _value.institution
          : institution // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CertificateModel implements _CertificateModel {
  _$_CertificateModel(
      {@JsonKey(name: 'ID') this.id,
      @JsonKey(name: 'CvID') this.cvID,
      @JsonKey(name: 'Name') this.name,
      @JsonKey(name: 'Description') this.description,
      @JsonKey(name: 'Institution') this.institution,
      @JsonKey(name: 'Year') this.year});

  factory _$_CertificateModel.fromJson(Map<String, dynamic> json) =>
      _$$_CertificateModelFromJson(json);

  @override
  @JsonKey(name: 'ID')
  final int? id;
  @override
  @JsonKey(name: 'CvID')
  final int? cvID;
  @override
  @JsonKey(name: 'Name')
  final NameModel? name;
  @override
  @JsonKey(name: 'Description')
  final String? description;
  @override
  @JsonKey(name: 'Institution')
  final String? institution;
  @override
  @JsonKey(name: 'Year')
  final int? year;

  @override
  String toString() {
    return 'CertificateModel(id: $id, cvID: $cvID, name: $name, description: $description, institution: $institution, year: $year)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CertificateModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.cvID, cvID) || other.cvID == cvID) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.institution, institution) ||
                other.institution == institution) &&
            (identical(other.year, year) || other.year == year));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, cvID, name, description, institution, year);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CertificateModelCopyWith<_$_CertificateModel> get copyWith =>
      __$$_CertificateModelCopyWithImpl<_$_CertificateModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CertificateModelToJson(
      this,
    );
  }
}

abstract class _CertificateModel implements CertificateModel {
  factory _CertificateModel(
      {@JsonKey(name: 'ID') final int? id,
      @JsonKey(name: 'CvID') final int? cvID,
      @JsonKey(name: 'Name') final NameModel? name,
      @JsonKey(name: 'Description') final String? description,
      @JsonKey(name: 'Institution') final String? institution,
      @JsonKey(name: 'Year') final int? year}) = _$_CertificateModel;

  factory _CertificateModel.fromJson(Map<String, dynamic> json) =
      _$_CertificateModel.fromJson;

  @override
  @JsonKey(name: 'ID')
  int? get id;
  @override
  @JsonKey(name: 'CvID')
  int? get cvID;
  @override
  @JsonKey(name: 'Name')
  NameModel? get name;
  @override
  @JsonKey(name: 'Description')
  String? get description;
  @override
  @JsonKey(name: 'Institution')
  String? get institution;
  @override
  @JsonKey(name: 'Year')
  int? get year;
  @override
  @JsonKey(ignore: true)
  _$$_CertificateModelCopyWith<_$_CertificateModel> get copyWith =>
      throw _privateConstructorUsedError;
}
