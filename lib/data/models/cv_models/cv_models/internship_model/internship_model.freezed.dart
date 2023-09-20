// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'internship_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InternshipModel _$InternshipModelFromJson(Map<String, dynamic> json) {
  return _InternshipModel.fromJson(json);
}

/// @nodoc
mixin _$InternshipModel {
  @JsonKey(name: 'Name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'Position')
  String? get position => throw _privateConstructorUsedError;
  @JsonKey(name: 'StartDate')
  String? get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'EndDate')
  String? get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'Description')
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InternshipModelCopyWith<InternshipModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternshipModelCopyWith<$Res> {
  factory $InternshipModelCopyWith(
          InternshipModel value, $Res Function(InternshipModel) then) =
      _$InternshipModelCopyWithImpl<$Res, InternshipModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Name') String? name,
      @JsonKey(name: 'Position') String? position,
      @JsonKey(name: 'StartDate') String? startDate,
      @JsonKey(name: 'EndDate') String? endDate,
      @JsonKey(name: 'Description') String? description});
}

/// @nodoc
class _$InternshipModelCopyWithImpl<$Res, $Val extends InternshipModel>
    implements $InternshipModelCopyWith<$Res> {
  _$InternshipModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? position = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InternshipModelCopyWith<$Res>
    implements $InternshipModelCopyWith<$Res> {
  factory _$$_InternshipModelCopyWith(
          _$_InternshipModel value, $Res Function(_$_InternshipModel) then) =
      __$$_InternshipModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Name') String? name,
      @JsonKey(name: 'Position') String? position,
      @JsonKey(name: 'StartDate') String? startDate,
      @JsonKey(name: 'EndDate') String? endDate,
      @JsonKey(name: 'Description') String? description});
}

/// @nodoc
class __$$_InternshipModelCopyWithImpl<$Res>
    extends _$InternshipModelCopyWithImpl<$Res, _$_InternshipModel>
    implements _$$_InternshipModelCopyWith<$Res> {
  __$$_InternshipModelCopyWithImpl(
      _$_InternshipModel _value, $Res Function(_$_InternshipModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? position = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_InternshipModel(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InternshipModel implements _InternshipModel {
  _$_InternshipModel(
      {@JsonKey(name: 'Name') this.name,
      @JsonKey(name: 'Position') this.position,
      @JsonKey(name: 'StartDate') this.startDate,
      @JsonKey(name: 'EndDate') this.endDate,
      @JsonKey(name: 'Description') this.description});

  factory _$_InternshipModel.fromJson(Map<String, dynamic> json) =>
      _$$_InternshipModelFromJson(json);

  @override
  @JsonKey(name: 'Name')
  final String? name;
  @override
  @JsonKey(name: 'Position')
  final String? position;
  @override
  @JsonKey(name: 'StartDate')
  final String? startDate;
  @override
  @JsonKey(name: 'EndDate')
  final String? endDate;
  @override
  @JsonKey(name: 'Description')
  final String? description;

  @override
  String toString() {
    return 'InternshipModel(name: $name, position: $position, startDate: $startDate, endDate: $endDate, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InternshipModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, position, startDate, endDate, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InternshipModelCopyWith<_$_InternshipModel> get copyWith =>
      __$$_InternshipModelCopyWithImpl<_$_InternshipModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InternshipModelToJson(
      this,
    );
  }
}

abstract class _InternshipModel implements InternshipModel {
  factory _InternshipModel(
          {@JsonKey(name: 'Name') final String? name,
          @JsonKey(name: 'Position') final String? position,
          @JsonKey(name: 'StartDate') final String? startDate,
          @JsonKey(name: 'EndDate') final String? endDate,
          @JsonKey(name: 'Description') final String? description}) =
      _$_InternshipModel;

  factory _InternshipModel.fromJson(Map<String, dynamic> json) =
      _$_InternshipModel.fromJson;

  @override
  @JsonKey(name: 'Name')
  String? get name;
  @override
  @JsonKey(name: 'Position')
  String? get position;
  @override
  @JsonKey(name: 'StartDate')
  String? get startDate;
  @override
  @JsonKey(name: 'EndDate')
  String? get endDate;
  @override
  @JsonKey(name: 'Description')
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_InternshipModelCopyWith<_$_InternshipModel> get copyWith =>
      throw _privateConstructorUsedError;
}
