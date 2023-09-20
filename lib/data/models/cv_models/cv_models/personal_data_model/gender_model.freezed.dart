// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gender_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GenderModel _$GenderModelFromJson(Map<String, dynamic> json) {
  return _GenderModel.fromJson(json);
}

/// @nodoc
mixin _$GenderModel {
  @JsonKey(name: 'Name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'Value')
  int? get value => throw _privateConstructorUsedError;
  @JsonKey(name: 'ParentID')
  int? get parentID => throw _privateConstructorUsedError;
  @JsonKey(name: 'HasChildren')
  bool? get hasChildren => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenderModelCopyWith<GenderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenderModelCopyWith<$Res> {
  factory $GenderModelCopyWith(
          GenderModel value, $Res Function(GenderModel) then) =
      _$GenderModelCopyWithImpl<$Res, GenderModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Name') String? name,
      @JsonKey(name: 'Value') int? value,
      @JsonKey(name: 'ParentID') int? parentID,
      @JsonKey(name: 'HasChildren') bool? hasChildren});
}

/// @nodoc
class _$GenderModelCopyWithImpl<$Res, $Val extends GenderModel>
    implements $GenderModelCopyWith<$Res> {
  _$GenderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
    Object? parentID = freezed,
    Object? hasChildren = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
      parentID: freezed == parentID
          ? _value.parentID
          : parentID // ignore: cast_nullable_to_non_nullable
              as int?,
      hasChildren: freezed == hasChildren
          ? _value.hasChildren
          : hasChildren // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GenderModelCopyWith<$Res>
    implements $GenderModelCopyWith<$Res> {
  factory _$$_GenderModelCopyWith(
          _$_GenderModel value, $Res Function(_$_GenderModel) then) =
      __$$_GenderModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Name') String? name,
      @JsonKey(name: 'Value') int? value,
      @JsonKey(name: 'ParentID') int? parentID,
      @JsonKey(name: 'HasChildren') bool? hasChildren});
}

/// @nodoc
class __$$_GenderModelCopyWithImpl<$Res>
    extends _$GenderModelCopyWithImpl<$Res, _$_GenderModel>
    implements _$$_GenderModelCopyWith<$Res> {
  __$$_GenderModelCopyWithImpl(
      _$_GenderModel _value, $Res Function(_$_GenderModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
    Object? parentID = freezed,
    Object? hasChildren = freezed,
  }) {
    return _then(_$_GenderModel(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
      parentID: freezed == parentID
          ? _value.parentID
          : parentID // ignore: cast_nullable_to_non_nullable
              as int?,
      hasChildren: freezed == hasChildren
          ? _value.hasChildren
          : hasChildren // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GenderModel implements _GenderModel {
  _$_GenderModel(
      {@JsonKey(name: 'Name') this.name,
      @JsonKey(name: 'Value') this.value,
      @JsonKey(name: 'ParentID') this.parentID,
      @JsonKey(name: 'HasChildren') this.hasChildren});

  factory _$_GenderModel.fromJson(Map<String, dynamic> json) =>
      _$$_GenderModelFromJson(json);

  @override
  @JsonKey(name: 'Name')
  final String? name;
  @override
  @JsonKey(name: 'Value')
  final int? value;
  @override
  @JsonKey(name: 'ParentID')
  final int? parentID;
  @override
  @JsonKey(name: 'HasChildren')
  final bool? hasChildren;

  @override
  String toString() {
    return 'GenderModel(name: $name, value: $value, parentID: $parentID, hasChildren: $hasChildren)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GenderModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.parentID, parentID) ||
                other.parentID == parentID) &&
            (identical(other.hasChildren, hasChildren) ||
                other.hasChildren == hasChildren));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, value, parentID, hasChildren);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GenderModelCopyWith<_$_GenderModel> get copyWith =>
      __$$_GenderModelCopyWithImpl<_$_GenderModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GenderModelToJson(
      this,
    );
  }
}

abstract class _GenderModel implements GenderModel {
  factory _GenderModel(
      {@JsonKey(name: 'Name') final String? name,
      @JsonKey(name: 'Value') final int? value,
      @JsonKey(name: 'ParentID') final int? parentID,
      @JsonKey(name: 'HasChildren') final bool? hasChildren}) = _$_GenderModel;

  factory _GenderModel.fromJson(Map<String, dynamic> json) =
      _$_GenderModel.fromJson;

  @override
  @JsonKey(name: 'Name')
  String? get name;
  @override
  @JsonKey(name: 'Value')
  int? get value;
  @override
  @JsonKey(name: 'ParentID')
  int? get parentID;
  @override
  @JsonKey(name: 'HasChildren')
  bool? get hasChildren;
  @override
  @JsonKey(ignore: true)
  _$$_GenderModelCopyWith<_$_GenderModel> get copyWith =>
      throw _privateConstructorUsedError;
}
