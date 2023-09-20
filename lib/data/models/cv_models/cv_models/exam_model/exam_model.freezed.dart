// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exam_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExamModel _$ExamModelFromJson(Map<String, dynamic> json) {
  return _ExamModel.fromJson(json);
}

/// @nodoc
mixin _$ExamModel {
  @JsonKey(name: 'ID')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'CvID')
  int? get cvID => throw _privateConstructorUsedError;
  @JsonKey(name: 'Name')
  NameModel? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'Institution')
  String? get institution => throw _privateConstructorUsedError;
  @JsonKey(name: 'Description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'Grade')
  String? get grade => throw _privateConstructorUsedError;
  @JsonKey(name: 'Year')
  int? get year => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExamModelCopyWith<ExamModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExamModelCopyWith<$Res> {
  factory $ExamModelCopyWith(ExamModel value, $Res Function(ExamModel) then) =
      _$ExamModelCopyWithImpl<$Res, ExamModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ID') int? id,
      @JsonKey(name: 'CvID') int? cvID,
      @JsonKey(name: 'Name') NameModel? name,
      @JsonKey(name: 'Institution') String? institution,
      @JsonKey(name: 'Description') String? description,
      @JsonKey(name: 'Grade') String? grade,
      @JsonKey(name: 'Year') int? year});

  $NameModelCopyWith<$Res>? get name;
}

/// @nodoc
class _$ExamModelCopyWithImpl<$Res, $Val extends ExamModel>
    implements $ExamModelCopyWith<$Res> {
  _$ExamModelCopyWithImpl(this._value, this._then);

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
    Object? institution = freezed,
    Object? description = freezed,
    Object? grade = freezed,
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
      institution: freezed == institution
          ? _value.institution
          : institution // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      grade: freezed == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_ExamModelCopyWith<$Res> implements $ExamModelCopyWith<$Res> {
  factory _$$_ExamModelCopyWith(
          _$_ExamModel value, $Res Function(_$_ExamModel) then) =
      __$$_ExamModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ID') int? id,
      @JsonKey(name: 'CvID') int? cvID,
      @JsonKey(name: 'Name') NameModel? name,
      @JsonKey(name: 'Institution') String? institution,
      @JsonKey(name: 'Description') String? description,
      @JsonKey(name: 'Grade') String? grade,
      @JsonKey(name: 'Year') int? year});

  @override
  $NameModelCopyWith<$Res>? get name;
}

/// @nodoc
class __$$_ExamModelCopyWithImpl<$Res>
    extends _$ExamModelCopyWithImpl<$Res, _$_ExamModel>
    implements _$$_ExamModelCopyWith<$Res> {
  __$$_ExamModelCopyWithImpl(
      _$_ExamModel _value, $Res Function(_$_ExamModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? cvID = freezed,
    Object? name = freezed,
    Object? institution = freezed,
    Object? description = freezed,
    Object? grade = freezed,
    Object? year = freezed,
  }) {
    return _then(_$_ExamModel(
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
      institution: freezed == institution
          ? _value.institution
          : institution // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      grade: freezed == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
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
class _$_ExamModel implements _ExamModel {
  _$_ExamModel(
      {@JsonKey(name: 'ID') this.id,
      @JsonKey(name: 'CvID') this.cvID,
      @JsonKey(name: 'Name') this.name,
      @JsonKey(name: 'Institution') this.institution,
      @JsonKey(name: 'Description') this.description,
      @JsonKey(name: 'Grade') this.grade,
      @JsonKey(name: 'Year') this.year});

  factory _$_ExamModel.fromJson(Map<String, dynamic> json) =>
      _$$_ExamModelFromJson(json);

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
  @JsonKey(name: 'Institution')
  final String? institution;
  @override
  @JsonKey(name: 'Description')
  final String? description;
  @override
  @JsonKey(name: 'Grade')
  final String? grade;
  @override
  @JsonKey(name: 'Year')
  final int? year;

  @override
  String toString() {
    return 'ExamModel(id: $id, cvID: $cvID, name: $name, institution: $institution, description: $description, grade: $grade, year: $year)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExamModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.cvID, cvID) || other.cvID == cvID) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.institution, institution) ||
                other.institution == institution) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.grade, grade) || other.grade == grade) &&
            (identical(other.year, year) || other.year == year));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, cvID, name, institution, description, grade, year);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExamModelCopyWith<_$_ExamModel> get copyWith =>
      __$$_ExamModelCopyWithImpl<_$_ExamModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExamModelToJson(
      this,
    );
  }
}

abstract class _ExamModel implements ExamModel {
  factory _ExamModel(
      {@JsonKey(name: 'ID') final int? id,
      @JsonKey(name: 'CvID') final int? cvID,
      @JsonKey(name: 'Name') final NameModel? name,
      @JsonKey(name: 'Institution') final String? institution,
      @JsonKey(name: 'Description') final String? description,
      @JsonKey(name: 'Grade') final String? grade,
      @JsonKey(name: 'Year') final int? year}) = _$_ExamModel;

  factory _ExamModel.fromJson(Map<String, dynamic> json) =
      _$_ExamModel.fromJson;

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
  @JsonKey(name: 'Institution')
  String? get institution;
  @override
  @JsonKey(name: 'Description')
  String? get description;
  @override
  @JsonKey(name: 'Grade')
  String? get grade;
  @override
  @JsonKey(name: 'Year')
  int? get year;
  @override
  @JsonKey(ignore: true)
  _$$_ExamModelCopyWith<_$_ExamModel> get copyWith =>
      throw _privateConstructorUsedError;
}
