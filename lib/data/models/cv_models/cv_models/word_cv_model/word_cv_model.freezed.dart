// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'word_cv_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WordCvModel _$WordCvModelFromJson(Map<String, dynamic> json) {
  return _WordCvModel.fromJson(json);
}

/// @nodoc
mixin _$WordCvModel {
  @JsonKey(name: 'Name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'Path')
  String? get path => throw _privateConstructorUsedError;
  @JsonKey(name: 'Size')
  int? get size => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WordCvModelCopyWith<WordCvModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordCvModelCopyWith<$Res> {
  factory $WordCvModelCopyWith(
          WordCvModel value, $Res Function(WordCvModel) then) =
      _$WordCvModelCopyWithImpl<$Res, WordCvModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Name') String? name,
      @JsonKey(name: 'Path') String? path,
      @JsonKey(name: 'Size') int? size});
}

/// @nodoc
class _$WordCvModelCopyWithImpl<$Res, $Val extends WordCvModel>
    implements $WordCvModelCopyWith<$Res> {
  _$WordCvModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? path = freezed,
    Object? size = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WordCvModelCopyWith<$Res>
    implements $WordCvModelCopyWith<$Res> {
  factory _$$_WordCvModelCopyWith(
          _$_WordCvModel value, $Res Function(_$_WordCvModel) then) =
      __$$_WordCvModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Name') String? name,
      @JsonKey(name: 'Path') String? path,
      @JsonKey(name: 'Size') int? size});
}

/// @nodoc
class __$$_WordCvModelCopyWithImpl<$Res>
    extends _$WordCvModelCopyWithImpl<$Res, _$_WordCvModel>
    implements _$$_WordCvModelCopyWith<$Res> {
  __$$_WordCvModelCopyWithImpl(
      _$_WordCvModel _value, $Res Function(_$_WordCvModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? path = freezed,
    Object? size = freezed,
  }) {
    return _then(_$_WordCvModel(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WordCvModel implements _WordCvModel {
  _$_WordCvModel(
      {@JsonKey(name: 'Name') this.name,
      @JsonKey(name: 'Path') this.path,
      @JsonKey(name: 'Size') this.size});

  factory _$_WordCvModel.fromJson(Map<String, dynamic> json) =>
      _$$_WordCvModelFromJson(json);

  @override
  @JsonKey(name: 'Name')
  final String? name;
  @override
  @JsonKey(name: 'Path')
  final String? path;
  @override
  @JsonKey(name: 'Size')
  final int? size;

  @override
  String toString() {
    return 'WordCvModel(name: $name, path: $path, size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WordCvModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.size, size) || other.size == size));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, path, size);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WordCvModelCopyWith<_$_WordCvModel> get copyWith =>
      __$$_WordCvModelCopyWithImpl<_$_WordCvModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WordCvModelToJson(
      this,
    );
  }
}

abstract class _WordCvModel implements WordCvModel {
  factory _WordCvModel(
      {@JsonKey(name: 'Name') final String? name,
      @JsonKey(name: 'Path') final String? path,
      @JsonKey(name: 'Size') final int? size}) = _$_WordCvModel;

  factory _WordCvModel.fromJson(Map<String, dynamic> json) =
      _$_WordCvModel.fromJson;

  @override
  @JsonKey(name: 'Name')
  String? get name;
  @override
  @JsonKey(name: 'Path')
  String? get path;
  @override
  @JsonKey(name: 'Size')
  int? get size;
  @override
  @JsonKey(ignore: true)
  _$$_WordCvModelCopyWith<_$_WordCvModel> get copyWith =>
      throw _privateConstructorUsedError;
}
