// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'properties_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PropertiesModel _$PropertiesModelFromJson(Map<String, dynamic> json) {
  return _PropertiesModel.fromJson(json);
}

/// @nodoc
mixin _$PropertiesModel {
  @JsonKey(name: 'Title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'Detail')
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PropertiesModelCopyWith<PropertiesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertiesModelCopyWith<$Res> {
  factory $PropertiesModelCopyWith(
          PropertiesModel value, $Res Function(PropertiesModel) then) =
      _$PropertiesModelCopyWithImpl<$Res, PropertiesModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Title') String? title,
      @JsonKey(name: 'Detail') String? description});
}

/// @nodoc
class _$PropertiesModelCopyWithImpl<$Res, $Val extends PropertiesModel>
    implements $PropertiesModelCopyWith<$Res> {
  _$PropertiesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PropertiesModelCopyWith<$Res>
    implements $PropertiesModelCopyWith<$Res> {
  factory _$$_PropertiesModelCopyWith(
          _$_PropertiesModel value, $Res Function(_$_PropertiesModel) then) =
      __$$_PropertiesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Title') String? title,
      @JsonKey(name: 'Detail') String? description});
}

/// @nodoc
class __$$_PropertiesModelCopyWithImpl<$Res>
    extends _$PropertiesModelCopyWithImpl<$Res, _$_PropertiesModel>
    implements _$$_PropertiesModelCopyWith<$Res> {
  __$$_PropertiesModelCopyWithImpl(
      _$_PropertiesModel _value, $Res Function(_$_PropertiesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_PropertiesModel(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
class _$_PropertiesModel implements _PropertiesModel {
  _$_PropertiesModel(
      {@JsonKey(name: 'Title') this.title,
      @JsonKey(name: 'Detail') this.description});

  factory _$_PropertiesModel.fromJson(Map<String, dynamic> json) =>
      _$$_PropertiesModelFromJson(json);

  @override
  @JsonKey(name: 'Title')
  final String? title;
  @override
  @JsonKey(name: 'Detail')
  final String? description;

  @override
  String toString() {
    return 'PropertiesModel(title: $title, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PropertiesModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PropertiesModelCopyWith<_$_PropertiesModel> get copyWith =>
      __$$_PropertiesModelCopyWithImpl<_$_PropertiesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PropertiesModelToJson(
      this,
    );
  }
}

abstract class _PropertiesModel implements PropertiesModel {
  factory _PropertiesModel(
      {@JsonKey(name: 'Title') final String? title,
      @JsonKey(name: 'Detail') final String? description}) = _$_PropertiesModel;

  factory _PropertiesModel.fromJson(Map<String, dynamic> json) =
      _$_PropertiesModel.fromJson;

  @override
  @JsonKey(name: 'Title')
  String? get title;
  @override
  @JsonKey(name: 'Detail')
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_PropertiesModelCopyWith<_$_PropertiesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
