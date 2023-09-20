// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attribute_group_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AttributeGroupModel _$AttributeGroupModelFromJson(Map<String, dynamic> json) {
  return _AttributeGroupModel.fromJson(json);
}

/// @nodoc
mixin _$AttributeGroupModel {
  @JsonKey(name: 'ID')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'Name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'AttributeList')
  List<AttributeModel>? get attributeList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttributeGroupModelCopyWith<AttributeGroupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributeGroupModelCopyWith<$Res> {
  factory $AttributeGroupModelCopyWith(
          AttributeGroupModel value, $Res Function(AttributeGroupModel) then) =
      _$AttributeGroupModelCopyWithImpl<$Res, AttributeGroupModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ID') int? id,
      @JsonKey(name: 'Name') String? name,
      @JsonKey(name: 'AttributeList') List<AttributeModel>? attributeList});
}

/// @nodoc
class _$AttributeGroupModelCopyWithImpl<$Res, $Val extends AttributeGroupModel>
    implements $AttributeGroupModelCopyWith<$Res> {
  _$AttributeGroupModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? attributeList = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      attributeList: freezed == attributeList
          ? _value.attributeList
          : attributeList // ignore: cast_nullable_to_non_nullable
              as List<AttributeModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AttributeGroupModelCopyWith<$Res>
    implements $AttributeGroupModelCopyWith<$Res> {
  factory _$$_AttributeGroupModelCopyWith(_$_AttributeGroupModel value,
          $Res Function(_$_AttributeGroupModel) then) =
      __$$_AttributeGroupModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ID') int? id,
      @JsonKey(name: 'Name') String? name,
      @JsonKey(name: 'AttributeList') List<AttributeModel>? attributeList});
}

/// @nodoc
class __$$_AttributeGroupModelCopyWithImpl<$Res>
    extends _$AttributeGroupModelCopyWithImpl<$Res, _$_AttributeGroupModel>
    implements _$$_AttributeGroupModelCopyWith<$Res> {
  __$$_AttributeGroupModelCopyWithImpl(_$_AttributeGroupModel _value,
      $Res Function(_$_AttributeGroupModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? attributeList = freezed,
  }) {
    return _then(_$_AttributeGroupModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      attributeList: freezed == attributeList
          ? _value._attributeList
          : attributeList // ignore: cast_nullable_to_non_nullable
              as List<AttributeModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AttributeGroupModel implements _AttributeGroupModel {
  _$_AttributeGroupModel(
      {@JsonKey(name: 'ID')
          this.id,
      @JsonKey(name: 'Name')
          this.name,
      @JsonKey(name: 'AttributeList')
          final List<AttributeModel>? attributeList})
      : _attributeList = attributeList;

  factory _$_AttributeGroupModel.fromJson(Map<String, dynamic> json) =>
      _$$_AttributeGroupModelFromJson(json);

  @override
  @JsonKey(name: 'ID')
  final int? id;
  @override
  @JsonKey(name: 'Name')
  final String? name;
  final List<AttributeModel>? _attributeList;
  @override
  @JsonKey(name: 'AttributeList')
  List<AttributeModel>? get attributeList {
    final value = _attributeList;
    if (value == null) return null;
    if (_attributeList is EqualUnmodifiableListView) return _attributeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AttributeGroupModel(id: $id, name: $name, attributeList: $attributeList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttributeGroupModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._attributeList, _attributeList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name,
      const DeepCollectionEquality().hash(_attributeList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AttributeGroupModelCopyWith<_$_AttributeGroupModel> get copyWith =>
      __$$_AttributeGroupModelCopyWithImpl<_$_AttributeGroupModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttributeGroupModelToJson(
      this,
    );
  }
}

abstract class _AttributeGroupModel implements AttributeGroupModel {
  factory _AttributeGroupModel(
      {@JsonKey(name: 'ID')
          final int? id,
      @JsonKey(name: 'Name')
          final String? name,
      @JsonKey(name: 'AttributeList')
          final List<AttributeModel>? attributeList}) = _$_AttributeGroupModel;

  factory _AttributeGroupModel.fromJson(Map<String, dynamic> json) =
      _$_AttributeGroupModel.fromJson;

  @override
  @JsonKey(name: 'ID')
  int? get id;
  @override
  @JsonKey(name: 'Name')
  String? get name;
  @override
  @JsonKey(name: 'AttributeList')
  List<AttributeModel>? get attributeList;
  @override
  @JsonKey(ignore: true)
  _$$_AttributeGroupModelCopyWith<_$_AttributeGroupModel> get copyWith =>
      throw _privateConstructorUsedError;
}
