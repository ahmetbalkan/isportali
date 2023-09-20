// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'handicap_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HandicapModel _$HandicapModelFromJson(Map<String, dynamic> json) {
  return _HandicapModel.fromJson(json);
}

/// @nodoc
mixin _$HandicapModel {
  @JsonKey(name: 'Level')
  LookupModel? get level => throw _privateConstructorUsedError;
  @JsonKey(name: 'TypeList')
  List<LookupModel>? get typeList => throw _privateConstructorUsedError;
  @JsonKey(name: 'Description')
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HandicapModelCopyWith<HandicapModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HandicapModelCopyWith<$Res> {
  factory $HandicapModelCopyWith(
          HandicapModel value, $Res Function(HandicapModel) then) =
      _$HandicapModelCopyWithImpl<$Res, HandicapModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Level') LookupModel? level,
      @JsonKey(name: 'TypeList') List<LookupModel>? typeList,
      @JsonKey(name: 'Description') String? description});

  $LookupModelCopyWith<$Res>? get level;
}

/// @nodoc
class _$HandicapModelCopyWithImpl<$Res, $Val extends HandicapModel>
    implements $HandicapModelCopyWith<$Res> {
  _$HandicapModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = freezed,
    Object? typeList = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as LookupModel?,
      typeList: freezed == typeList
          ? _value.typeList
          : typeList // ignore: cast_nullable_to_non_nullable
              as List<LookupModel>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LookupModelCopyWith<$Res>? get level {
    if (_value.level == null) {
      return null;
    }

    return $LookupModelCopyWith<$Res>(_value.level!, (value) {
      return _then(_value.copyWith(level: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HandicapModelCopyWith<$Res>
    implements $HandicapModelCopyWith<$Res> {
  factory _$$_HandicapModelCopyWith(
          _$_HandicapModel value, $Res Function(_$_HandicapModel) then) =
      __$$_HandicapModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Level') LookupModel? level,
      @JsonKey(name: 'TypeList') List<LookupModel>? typeList,
      @JsonKey(name: 'Description') String? description});

  @override
  $LookupModelCopyWith<$Res>? get level;
}

/// @nodoc
class __$$_HandicapModelCopyWithImpl<$Res>
    extends _$HandicapModelCopyWithImpl<$Res, _$_HandicapModel>
    implements _$$_HandicapModelCopyWith<$Res> {
  __$$_HandicapModelCopyWithImpl(
      _$_HandicapModel _value, $Res Function(_$_HandicapModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = freezed,
    Object? typeList = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_HandicapModel(
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as LookupModel?,
      typeList: freezed == typeList
          ? _value._typeList
          : typeList // ignore: cast_nullable_to_non_nullable
              as List<LookupModel>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HandicapModel implements _HandicapModel {
  _$_HandicapModel(
      {@JsonKey(name: 'Level') this.level,
      @JsonKey(name: 'TypeList') final List<LookupModel>? typeList,
      @JsonKey(name: 'Description') this.description})
      : _typeList = typeList;

  factory _$_HandicapModel.fromJson(Map<String, dynamic> json) =>
      _$$_HandicapModelFromJson(json);

  @override
  @JsonKey(name: 'Level')
  final LookupModel? level;
  final List<LookupModel>? _typeList;
  @override
  @JsonKey(name: 'TypeList')
  List<LookupModel>? get typeList {
    final value = _typeList;
    if (value == null) return null;
    if (_typeList is EqualUnmodifiableListView) return _typeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'Description')
  final String? description;

  @override
  String toString() {
    return 'HandicapModel(level: $level, typeList: $typeList, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HandicapModel &&
            (identical(other.level, level) || other.level == level) &&
            const DeepCollectionEquality().equals(other._typeList, _typeList) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, level,
      const DeepCollectionEquality().hash(_typeList), description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HandicapModelCopyWith<_$_HandicapModel> get copyWith =>
      __$$_HandicapModelCopyWithImpl<_$_HandicapModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HandicapModelToJson(
      this,
    );
  }
}

abstract class _HandicapModel implements HandicapModel {
  factory _HandicapModel(
          {@JsonKey(name: 'Level') final LookupModel? level,
          @JsonKey(name: 'TypeList') final List<LookupModel>? typeList,
          @JsonKey(name: 'Description') final String? description}) =
      _$_HandicapModel;

  factory _HandicapModel.fromJson(Map<String, dynamic> json) =
      _$_HandicapModel.fromJson;

  @override
  @JsonKey(name: 'Level')
  LookupModel? get level;
  @override
  @JsonKey(name: 'TypeList')
  List<LookupModel>? get typeList;
  @override
  @JsonKey(name: 'Description')
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_HandicapModelCopyWith<_$_HandicapModel> get copyWith =>
      throw _privateConstructorUsedError;
}
