// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'messagelist_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MessageListModel _$MessageListModelFromJson(Map<String, dynamic> json) {
  return _MessageListModel.fromJson(json);
}

/// @nodoc
mixin _$MessageListModel {
  @JsonKey(name: 'Type')
  int? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'Code')
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'Description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'PlaceholderValues')
  PlaceholderValuesModel? get placeholderValues =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageListModelCopyWith<MessageListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageListModelCopyWith<$Res> {
  factory $MessageListModelCopyWith(
          MessageListModel value, $Res Function(MessageListModel) then) =
      _$MessageListModelCopyWithImpl<$Res, MessageListModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Type')
          int? type,
      @JsonKey(name: 'Code')
          String? code,
      @JsonKey(name: 'Description')
          String? description,
      @JsonKey(name: 'PlaceholderValues')
          PlaceholderValuesModel? placeholderValues});

  $PlaceholderValuesModelCopyWith<$Res>? get placeholderValues;
}

/// @nodoc
class _$MessageListModelCopyWithImpl<$Res, $Val extends MessageListModel>
    implements $MessageListModelCopyWith<$Res> {
  _$MessageListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? code = freezed,
    Object? description = freezed,
    Object? placeholderValues = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      placeholderValues: freezed == placeholderValues
          ? _value.placeholderValues
          : placeholderValues // ignore: cast_nullable_to_non_nullable
              as PlaceholderValuesModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaceholderValuesModelCopyWith<$Res>? get placeholderValues {
    if (_value.placeholderValues == null) {
      return null;
    }

    return $PlaceholderValuesModelCopyWith<$Res>(_value.placeholderValues!,
        (value) {
      return _then(_value.copyWith(placeholderValues: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MessageListModelCopyWith<$Res>
    implements $MessageListModelCopyWith<$Res> {
  factory _$$_MessageListModelCopyWith(
          _$_MessageListModel value, $Res Function(_$_MessageListModel) then) =
      __$$_MessageListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Type')
          int? type,
      @JsonKey(name: 'Code')
          String? code,
      @JsonKey(name: 'Description')
          String? description,
      @JsonKey(name: 'PlaceholderValues')
          PlaceholderValuesModel? placeholderValues});

  @override
  $PlaceholderValuesModelCopyWith<$Res>? get placeholderValues;
}

/// @nodoc
class __$$_MessageListModelCopyWithImpl<$Res>
    extends _$MessageListModelCopyWithImpl<$Res, _$_MessageListModel>
    implements _$$_MessageListModelCopyWith<$Res> {
  __$$_MessageListModelCopyWithImpl(
      _$_MessageListModel _value, $Res Function(_$_MessageListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? code = freezed,
    Object? description = freezed,
    Object? placeholderValues = freezed,
  }) {
    return _then(_$_MessageListModel(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      placeholderValues: freezed == placeholderValues
          ? _value.placeholderValues
          : placeholderValues // ignore: cast_nullable_to_non_nullable
              as PlaceholderValuesModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MessageListModel implements _MessageListModel {
  _$_MessageListModel(
      {@JsonKey(name: 'Type') this.type,
      @JsonKey(name: 'Code') this.code,
      @JsonKey(name: 'Description') this.description,
      @JsonKey(name: 'PlaceholderValues') this.placeholderValues});

  factory _$_MessageListModel.fromJson(Map<String, dynamic> json) =>
      _$$_MessageListModelFromJson(json);

  @override
  @JsonKey(name: 'Type')
  final int? type;
  @override
  @JsonKey(name: 'Code')
  final String? code;
  @override
  @JsonKey(name: 'Description')
  final String? description;
  @override
  @JsonKey(name: 'PlaceholderValues')
  final PlaceholderValuesModel? placeholderValues;

  @override
  String toString() {
    return 'MessageListModel(type: $type, code: $code, description: $description, placeholderValues: $placeholderValues)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageListModel &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.placeholderValues, placeholderValues) ||
                other.placeholderValues == placeholderValues));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, type, code, description, placeholderValues);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageListModelCopyWith<_$_MessageListModel> get copyWith =>
      __$$_MessageListModelCopyWithImpl<_$_MessageListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageListModelToJson(
      this,
    );
  }
}

abstract class _MessageListModel implements MessageListModel {
  factory _MessageListModel(
          {@JsonKey(name: 'Type')
              final int? type,
          @JsonKey(name: 'Code')
              final String? code,
          @JsonKey(name: 'Description')
              final String? description,
          @JsonKey(name: 'PlaceholderValues')
              final PlaceholderValuesModel? placeholderValues}) =
      _$_MessageListModel;

  factory _MessageListModel.fromJson(Map<String, dynamic> json) =
      _$_MessageListModel.fromJson;

  @override
  @JsonKey(name: 'Type')
  int? get type;
  @override
  @JsonKey(name: 'Code')
  String? get code;
  @override
  @JsonKey(name: 'Description')
  String? get description;
  @override
  @JsonKey(name: 'PlaceholderValues')
  PlaceholderValuesModel? get placeholderValues;
  @override
  @JsonKey(ignore: true)
  _$$_MessageListModelCopyWith<_$_MessageListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

PlaceholderValuesModel _$PlaceholderValuesModelFromJson(
    Map<String, dynamic> json) {
  return _PlaceholderValuesModel.fromJson(json);
}

/// @nodoc
mixin _$PlaceholderValuesModel {
  @JsonKey(name: 'PropertyName')
  String? get propertyName => throw _privateConstructorUsedError;
  @JsonKey(name: 'PropertyValue')
  int? get propertyValue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceholderValuesModelCopyWith<PlaceholderValuesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceholderValuesModelCopyWith<$Res> {
  factory $PlaceholderValuesModelCopyWith(PlaceholderValuesModel value,
          $Res Function(PlaceholderValuesModel) then) =
      _$PlaceholderValuesModelCopyWithImpl<$Res, PlaceholderValuesModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'PropertyName') String? propertyName,
      @JsonKey(name: 'PropertyValue') int? propertyValue});
}

/// @nodoc
class _$PlaceholderValuesModelCopyWithImpl<$Res,
        $Val extends PlaceholderValuesModel>
    implements $PlaceholderValuesModelCopyWith<$Res> {
  _$PlaceholderValuesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? propertyName = freezed,
    Object? propertyValue = freezed,
  }) {
    return _then(_value.copyWith(
      propertyName: freezed == propertyName
          ? _value.propertyName
          : propertyName // ignore: cast_nullable_to_non_nullable
              as String?,
      propertyValue: freezed == propertyValue
          ? _value.propertyValue
          : propertyValue // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlaceholderValuesModelCopyWith<$Res>
    implements $PlaceholderValuesModelCopyWith<$Res> {
  factory _$$_PlaceholderValuesModelCopyWith(_$_PlaceholderValuesModel value,
          $Res Function(_$_PlaceholderValuesModel) then) =
      __$$_PlaceholderValuesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'PropertyName') String? propertyName,
      @JsonKey(name: 'PropertyValue') int? propertyValue});
}

/// @nodoc
class __$$_PlaceholderValuesModelCopyWithImpl<$Res>
    extends _$PlaceholderValuesModelCopyWithImpl<$Res,
        _$_PlaceholderValuesModel>
    implements _$$_PlaceholderValuesModelCopyWith<$Res> {
  __$$_PlaceholderValuesModelCopyWithImpl(_$_PlaceholderValuesModel _value,
      $Res Function(_$_PlaceholderValuesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? propertyName = freezed,
    Object? propertyValue = freezed,
  }) {
    return _then(_$_PlaceholderValuesModel(
      propertyName: freezed == propertyName
          ? _value.propertyName
          : propertyName // ignore: cast_nullable_to_non_nullable
              as String?,
      propertyValue: freezed == propertyValue
          ? _value.propertyValue
          : propertyValue // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlaceholderValuesModel implements _PlaceholderValuesModel {
  _$_PlaceholderValuesModel(
      {@JsonKey(name: 'PropertyName') this.propertyName,
      @JsonKey(name: 'PropertyValue') this.propertyValue});

  factory _$_PlaceholderValuesModel.fromJson(Map<String, dynamic> json) =>
      _$$_PlaceholderValuesModelFromJson(json);

  @override
  @JsonKey(name: 'PropertyName')
  final String? propertyName;
  @override
  @JsonKey(name: 'PropertyValue')
  final int? propertyValue;

  @override
  String toString() {
    return 'PlaceholderValuesModel(propertyName: $propertyName, propertyValue: $propertyValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaceholderValuesModel &&
            (identical(other.propertyName, propertyName) ||
                other.propertyName == propertyName) &&
            (identical(other.propertyValue, propertyValue) ||
                other.propertyValue == propertyValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, propertyName, propertyValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlaceholderValuesModelCopyWith<_$_PlaceholderValuesModel> get copyWith =>
      __$$_PlaceholderValuesModelCopyWithImpl<_$_PlaceholderValuesModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaceholderValuesModelToJson(
      this,
    );
  }
}

abstract class _PlaceholderValuesModel implements PlaceholderValuesModel {
  factory _PlaceholderValuesModel(
          {@JsonKey(name: 'PropertyName') final String? propertyName,
          @JsonKey(name: 'PropertyValue') final int? propertyValue}) =
      _$_PlaceholderValuesModel;

  factory _PlaceholderValuesModel.fromJson(Map<String, dynamic> json) =
      _$_PlaceholderValuesModel.fromJson;

  @override
  @JsonKey(name: 'PropertyName')
  String? get propertyName;
  @override
  @JsonKey(name: 'PropertyValue')
  int? get propertyValue;
  @override
  @JsonKey(ignore: true)
  _$$_PlaceholderValuesModelCopyWith<_$_PlaceholderValuesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
