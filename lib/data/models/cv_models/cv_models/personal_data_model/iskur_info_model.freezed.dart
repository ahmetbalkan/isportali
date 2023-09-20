// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'iskur_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IskurInfoModel _$IskurInfoModelFromJson(Map<String, dynamic> json) {
  return _IskurInfoModel.fromJson(json);
}

/// @nodoc
mixin _$IskurInfoModel {
  @JsonKey(name: 'IsRegistered')
  bool? get isRegistered => throw _privateConstructorUsedError;
  @JsonKey(name: 'ID')
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IskurInfoModelCopyWith<IskurInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IskurInfoModelCopyWith<$Res> {
  factory $IskurInfoModelCopyWith(
          IskurInfoModel value, $Res Function(IskurInfoModel) then) =
      _$IskurInfoModelCopyWithImpl<$Res, IskurInfoModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'IsRegistered') bool? isRegistered,
      @JsonKey(name: 'ID') String? id});
}

/// @nodoc
class _$IskurInfoModelCopyWithImpl<$Res, $Val extends IskurInfoModel>
    implements $IskurInfoModelCopyWith<$Res> {
  _$IskurInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRegistered = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      isRegistered: freezed == isRegistered
          ? _value.isRegistered
          : isRegistered // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IskurInfoModelCopyWith<$Res>
    implements $IskurInfoModelCopyWith<$Res> {
  factory _$$_IskurInfoModelCopyWith(
          _$_IskurInfoModel value, $Res Function(_$_IskurInfoModel) then) =
      __$$_IskurInfoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'IsRegistered') bool? isRegistered,
      @JsonKey(name: 'ID') String? id});
}

/// @nodoc
class __$$_IskurInfoModelCopyWithImpl<$Res>
    extends _$IskurInfoModelCopyWithImpl<$Res, _$_IskurInfoModel>
    implements _$$_IskurInfoModelCopyWith<$Res> {
  __$$_IskurInfoModelCopyWithImpl(
      _$_IskurInfoModel _value, $Res Function(_$_IskurInfoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRegistered = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_IskurInfoModel(
      isRegistered: freezed == isRegistered
          ? _value.isRegistered
          : isRegistered // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IskurInfoModel implements _IskurInfoModel {
  _$_IskurInfoModel(
      {@JsonKey(name: 'IsRegistered') this.isRegistered,
      @JsonKey(name: 'ID') this.id});

  factory _$_IskurInfoModel.fromJson(Map<String, dynamic> json) =>
      _$$_IskurInfoModelFromJson(json);

  @override
  @JsonKey(name: 'IsRegistered')
  final bool? isRegistered;
  @override
  @JsonKey(name: 'ID')
  final String? id;

  @override
  String toString() {
    return 'IskurInfoModel(isRegistered: $isRegistered, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IskurInfoModel &&
            (identical(other.isRegistered, isRegistered) ||
                other.isRegistered == isRegistered) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isRegistered, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IskurInfoModelCopyWith<_$_IskurInfoModel> get copyWith =>
      __$$_IskurInfoModelCopyWithImpl<_$_IskurInfoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IskurInfoModelToJson(
      this,
    );
  }
}

abstract class _IskurInfoModel implements IskurInfoModel {
  factory _IskurInfoModel(
      {@JsonKey(name: 'IsRegistered') final bool? isRegistered,
      @JsonKey(name: 'ID') final String? id}) = _$_IskurInfoModel;

  factory _IskurInfoModel.fromJson(Map<String, dynamic> json) =
      _$_IskurInfoModel.fromJson;

  @override
  @JsonKey(name: 'IsRegistered')
  bool? get isRegistered;
  @override
  @JsonKey(name: 'ID')
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_IskurInfoModelCopyWith<_$_IskurInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
