// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attribute_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AttributeModel _$AttributeModelFromJson(Map<String, dynamic> json) {
  return _AttributeModel.fromJson(json);
}

/// @nodoc
mixin _$AttributeModel {
  @JsonKey(name: 'ID')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'Text')
  String? get text => throw _privateConstructorUsedError;
  @JsonKey(name: 'Type')
  int? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'DataType')
  int? get dataType => throw _privateConstructorUsedError;
  @JsonKey(name: 'OrderID')
  int? get orderID => throw _privateConstructorUsedError;
  @JsonKey(name: 'IsRequired')
  bool? get isRequired => throw _privateConstructorUsedError;
  @JsonKey(name: 'OptionList')
  List<OptionModel>? get optionList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttributeModelCopyWith<AttributeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributeModelCopyWith<$Res> {
  factory $AttributeModelCopyWith(
          AttributeModel value, $Res Function(AttributeModel) then) =
      _$AttributeModelCopyWithImpl<$Res, AttributeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ID') int? id,
      @JsonKey(name: 'Text') String? text,
      @JsonKey(name: 'Type') int? type,
      @JsonKey(name: 'DataType') int? dataType,
      @JsonKey(name: 'OrderID') int? orderID,
      @JsonKey(name: 'IsRequired') bool? isRequired,
      @JsonKey(name: 'OptionList') List<OptionModel>? optionList});
}

/// @nodoc
class _$AttributeModelCopyWithImpl<$Res, $Val extends AttributeModel>
    implements $AttributeModelCopyWith<$Res> {
  _$AttributeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? type = freezed,
    Object? dataType = freezed,
    Object? orderID = freezed,
    Object? isRequired = freezed,
    Object? optionList = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      dataType: freezed == dataType
          ? _value.dataType
          : dataType // ignore: cast_nullable_to_non_nullable
              as int?,
      orderID: freezed == orderID
          ? _value.orderID
          : orderID // ignore: cast_nullable_to_non_nullable
              as int?,
      isRequired: freezed == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool?,
      optionList: freezed == optionList
          ? _value.optionList
          : optionList // ignore: cast_nullable_to_non_nullable
              as List<OptionModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AttributeModelCopyWith<$Res>
    implements $AttributeModelCopyWith<$Res> {
  factory _$$_AttributeModelCopyWith(
          _$_AttributeModel value, $Res Function(_$_AttributeModel) then) =
      __$$_AttributeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ID') int? id,
      @JsonKey(name: 'Text') String? text,
      @JsonKey(name: 'Type') int? type,
      @JsonKey(name: 'DataType') int? dataType,
      @JsonKey(name: 'OrderID') int? orderID,
      @JsonKey(name: 'IsRequired') bool? isRequired,
      @JsonKey(name: 'OptionList') List<OptionModel>? optionList});
}

/// @nodoc
class __$$_AttributeModelCopyWithImpl<$Res>
    extends _$AttributeModelCopyWithImpl<$Res, _$_AttributeModel>
    implements _$$_AttributeModelCopyWith<$Res> {
  __$$_AttributeModelCopyWithImpl(
      _$_AttributeModel _value, $Res Function(_$_AttributeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? type = freezed,
    Object? dataType = freezed,
    Object? orderID = freezed,
    Object? isRequired = freezed,
    Object? optionList = freezed,
  }) {
    return _then(_$_AttributeModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      dataType: freezed == dataType
          ? _value.dataType
          : dataType // ignore: cast_nullable_to_non_nullable
              as int?,
      orderID: freezed == orderID
          ? _value.orderID
          : orderID // ignore: cast_nullable_to_non_nullable
              as int?,
      isRequired: freezed == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool?,
      optionList: freezed == optionList
          ? _value._optionList
          : optionList // ignore: cast_nullable_to_non_nullable
              as List<OptionModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AttributeModel implements _AttributeModel {
  _$_AttributeModel(
      {@JsonKey(name: 'ID') this.id,
      @JsonKey(name: 'Text') this.text,
      @JsonKey(name: 'Type') this.type,
      @JsonKey(name: 'DataType') this.dataType,
      @JsonKey(name: 'OrderID') this.orderID,
      @JsonKey(name: 'IsRequired') this.isRequired,
      @JsonKey(name: 'OptionList') final List<OptionModel>? optionList})
      : _optionList = optionList;

  factory _$_AttributeModel.fromJson(Map<String, dynamic> json) =>
      _$$_AttributeModelFromJson(json);

  @override
  @JsonKey(name: 'ID')
  final int? id;
  @override
  @JsonKey(name: 'Text')
  final String? text;
  @override
  @JsonKey(name: 'Type')
  final int? type;
  @override
  @JsonKey(name: 'DataType')
  final int? dataType;
  @override
  @JsonKey(name: 'OrderID')
  final int? orderID;
  @override
  @JsonKey(name: 'IsRequired')
  final bool? isRequired;
  final List<OptionModel>? _optionList;
  @override
  @JsonKey(name: 'OptionList')
  List<OptionModel>? get optionList {
    final value = _optionList;
    if (value == null) return null;
    if (_optionList is EqualUnmodifiableListView) return _optionList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AttributeModel(id: $id, text: $text, type: $type, dataType: $dataType, orderID: $orderID, isRequired: $isRequired, optionList: $optionList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttributeModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.dataType, dataType) ||
                other.dataType == dataType) &&
            (identical(other.orderID, orderID) || other.orderID == orderID) &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired) &&
            const DeepCollectionEquality()
                .equals(other._optionList, _optionList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, text, type, dataType,
      orderID, isRequired, const DeepCollectionEquality().hash(_optionList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AttributeModelCopyWith<_$_AttributeModel> get copyWith =>
      __$$_AttributeModelCopyWithImpl<_$_AttributeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttributeModelToJson(
      this,
    );
  }
}

abstract class _AttributeModel implements AttributeModel {
  factory _AttributeModel(
          {@JsonKey(name: 'ID') final int? id,
          @JsonKey(name: 'Text') final String? text,
          @JsonKey(name: 'Type') final int? type,
          @JsonKey(name: 'DataType') final int? dataType,
          @JsonKey(name: 'OrderID') final int? orderID,
          @JsonKey(name: 'IsRequired') final bool? isRequired,
          @JsonKey(name: 'OptionList') final List<OptionModel>? optionList}) =
      _$_AttributeModel;

  factory _AttributeModel.fromJson(Map<String, dynamic> json) =
      _$_AttributeModel.fromJson;

  @override
  @JsonKey(name: 'ID')
  int? get id;
  @override
  @JsonKey(name: 'Text')
  String? get text;
  @override
  @JsonKey(name: 'Type')
  int? get type;
  @override
  @JsonKey(name: 'DataType')
  int? get dataType;
  @override
  @JsonKey(name: 'OrderID')
  int? get orderID;
  @override
  @JsonKey(name: 'IsRequired')
  bool? get isRequired;
  @override
  @JsonKey(name: 'OptionList')
  List<OptionModel>? get optionList;
  @override
  @JsonKey(ignore: true)
  _$$_AttributeModelCopyWith<_$_AttributeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
