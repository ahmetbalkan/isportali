// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attribute_answer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AttributeAnswerModel _$AttributeAnswerModelFromJson(Map<String, dynamic> json) {
  return _AttributeAnswerModel.fromJson(json);
}

/// @nodoc
mixin _$AttributeAnswerModel {
  @JsonKey(name: 'AttributeID')
  int? get attributeID => throw _privateConstructorUsedError;
  @JsonKey(name: 'AnswerAsText')
  String? get answerAsText => throw _privateConstructorUsedError;
  @JsonKey(name: 'AnswerAsID')
  String? get answerAsID => throw _privateConstructorUsedError;
  @JsonKey(name: 'AttributeText')
  String? get attributeText => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttributeAnswerModelCopyWith<AttributeAnswerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributeAnswerModelCopyWith<$Res> {
  factory $AttributeAnswerModelCopyWith(AttributeAnswerModel value,
          $Res Function(AttributeAnswerModel) then) =
      _$AttributeAnswerModelCopyWithImpl<$Res, AttributeAnswerModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'AttributeID') int? attributeID,
      @JsonKey(name: 'AnswerAsText') String? answerAsText,
      @JsonKey(name: 'AnswerAsID') String? answerAsID,
      @JsonKey(name: 'AttributeText') String? attributeText});
}

/// @nodoc
class _$AttributeAnswerModelCopyWithImpl<$Res,
        $Val extends AttributeAnswerModel>
    implements $AttributeAnswerModelCopyWith<$Res> {
  _$AttributeAnswerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attributeID = freezed,
    Object? answerAsText = freezed,
    Object? answerAsID = freezed,
    Object? attributeText = freezed,
  }) {
    return _then(_value.copyWith(
      attributeID: freezed == attributeID
          ? _value.attributeID
          : attributeID // ignore: cast_nullable_to_non_nullable
              as int?,
      answerAsText: freezed == answerAsText
          ? _value.answerAsText
          : answerAsText // ignore: cast_nullable_to_non_nullable
              as String?,
      answerAsID: freezed == answerAsID
          ? _value.answerAsID
          : answerAsID // ignore: cast_nullable_to_non_nullable
              as String?,
      attributeText: freezed == attributeText
          ? _value.attributeText
          : attributeText // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AttributeAnswerModelCopyWith<$Res>
    implements $AttributeAnswerModelCopyWith<$Res> {
  factory _$$_AttributeAnswerModelCopyWith(_$_AttributeAnswerModel value,
          $Res Function(_$_AttributeAnswerModel) then) =
      __$$_AttributeAnswerModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'AttributeID') int? attributeID,
      @JsonKey(name: 'AnswerAsText') String? answerAsText,
      @JsonKey(name: 'AnswerAsID') String? answerAsID,
      @JsonKey(name: 'AttributeText') String? attributeText});
}

/// @nodoc
class __$$_AttributeAnswerModelCopyWithImpl<$Res>
    extends _$AttributeAnswerModelCopyWithImpl<$Res, _$_AttributeAnswerModel>
    implements _$$_AttributeAnswerModelCopyWith<$Res> {
  __$$_AttributeAnswerModelCopyWithImpl(_$_AttributeAnswerModel _value,
      $Res Function(_$_AttributeAnswerModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attributeID = freezed,
    Object? answerAsText = freezed,
    Object? answerAsID = freezed,
    Object? attributeText = freezed,
  }) {
    return _then(_$_AttributeAnswerModel(
      attributeID: freezed == attributeID
          ? _value.attributeID
          : attributeID // ignore: cast_nullable_to_non_nullable
              as int?,
      answerAsText: freezed == answerAsText
          ? _value.answerAsText
          : answerAsText // ignore: cast_nullable_to_non_nullable
              as String?,
      answerAsID: freezed == answerAsID
          ? _value.answerAsID
          : answerAsID // ignore: cast_nullable_to_non_nullable
              as String?,
      attributeText: freezed == attributeText
          ? _value.attributeText
          : attributeText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AttributeAnswerModel implements _AttributeAnswerModel {
  _$_AttributeAnswerModel(
      {@JsonKey(name: 'AttributeID') this.attributeID,
      @JsonKey(name: 'AnswerAsText') this.answerAsText,
      @JsonKey(name: 'AnswerAsID') this.answerAsID,
      @JsonKey(name: 'AttributeText') this.attributeText});

  factory _$_AttributeAnswerModel.fromJson(Map<String, dynamic> json) =>
      _$$_AttributeAnswerModelFromJson(json);

  @override
  @JsonKey(name: 'AttributeID')
  final int? attributeID;
  @override
  @JsonKey(name: 'AnswerAsText')
  final String? answerAsText;
  @override
  @JsonKey(name: 'AnswerAsID')
  final String? answerAsID;
  @override
  @JsonKey(name: 'AttributeText')
  final String? attributeText;

  @override
  String toString() {
    return 'AttributeAnswerModel(attributeID: $attributeID, answerAsText: $answerAsText, answerAsID: $answerAsID, attributeText: $attributeText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttributeAnswerModel &&
            (identical(other.attributeID, attributeID) ||
                other.attributeID == attributeID) &&
            (identical(other.answerAsText, answerAsText) ||
                other.answerAsText == answerAsText) &&
            (identical(other.answerAsID, answerAsID) ||
                other.answerAsID == answerAsID) &&
            (identical(other.attributeText, attributeText) ||
                other.attributeText == attributeText));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, attributeID, answerAsText, answerAsID, attributeText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AttributeAnswerModelCopyWith<_$_AttributeAnswerModel> get copyWith =>
      __$$_AttributeAnswerModelCopyWithImpl<_$_AttributeAnswerModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttributeAnswerModelToJson(
      this,
    );
  }
}

abstract class _AttributeAnswerModel implements AttributeAnswerModel {
  factory _AttributeAnswerModel(
          {@JsonKey(name: 'AttributeID') final int? attributeID,
          @JsonKey(name: 'AnswerAsText') final String? answerAsText,
          @JsonKey(name: 'AnswerAsID') final String? answerAsID,
          @JsonKey(name: 'AttributeText') final String? attributeText}) =
      _$_AttributeAnswerModel;

  factory _AttributeAnswerModel.fromJson(Map<String, dynamic> json) =
      _$_AttributeAnswerModel.fromJson;

  @override
  @JsonKey(name: 'AttributeID')
  int? get attributeID;
  @override
  @JsonKey(name: 'AnswerAsText')
  String? get answerAsText;
  @override
  @JsonKey(name: 'AnswerAsID')
  String? get answerAsID;
  @override
  @JsonKey(name: 'AttributeText')
  String? get attributeText;
  @override
  @JsonKey(ignore: true)
  _$$_AttributeAnswerModelCopyWith<_$_AttributeAnswerModel> get copyWith =>
      throw _privateConstructorUsedError;
}
