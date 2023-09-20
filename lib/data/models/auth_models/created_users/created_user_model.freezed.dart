// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'created_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreatedUserModel _$CreatedUserModelFromJson(Map<String, dynamic> json) {
  return _CreatedUserModel.fromJson(json);
}

/// @nodoc
mixin _$CreatedUserModel {
  @JsonKey(name: 'IsSuccess')
  bool get isSuccess => throw _privateConstructorUsedError;
  @JsonKey(name: 'MessageList')
  dynamic get messageList => throw _privateConstructorUsedError;
  @JsonKey(name: 'Data')
  UserModelData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatedUserModelCopyWith<CreatedUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatedUserModelCopyWith<$Res> {
  factory $CreatedUserModelCopyWith(
          CreatedUserModel value, $Res Function(CreatedUserModel) then) =
      _$CreatedUserModelCopyWithImpl<$Res, CreatedUserModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'IsSuccess') bool isSuccess,
      @JsonKey(name: 'MessageList') dynamic messageList,
      @JsonKey(name: 'Data') UserModelData? data});

  $UserModelDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CreatedUserModelCopyWithImpl<$Res, $Val extends CreatedUserModel>
    implements $CreatedUserModelCopyWith<$Res> {
  _$CreatedUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSuccess = null,
    Object? messageList = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      messageList: freezed == messageList
          ? _value.messageList
          : messageList // ignore: cast_nullable_to_non_nullable
              as dynamic,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserModelData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $UserModelDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CreatedUserModelCopyWith<$Res>
    implements $CreatedUserModelCopyWith<$Res> {
  factory _$$_CreatedUserModelCopyWith(
          _$_CreatedUserModel value, $Res Function(_$_CreatedUserModel) then) =
      __$$_CreatedUserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'IsSuccess') bool isSuccess,
      @JsonKey(name: 'MessageList') dynamic messageList,
      @JsonKey(name: 'Data') UserModelData? data});

  @override
  $UserModelDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_CreatedUserModelCopyWithImpl<$Res>
    extends _$CreatedUserModelCopyWithImpl<$Res, _$_CreatedUserModel>
    implements _$$_CreatedUserModelCopyWith<$Res> {
  __$$_CreatedUserModelCopyWithImpl(
      _$_CreatedUserModel _value, $Res Function(_$_CreatedUserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSuccess = null,
    Object? messageList = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_CreatedUserModel(
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      messageList: freezed == messageList
          ? _value.messageList
          : messageList // ignore: cast_nullable_to_non_nullable
              as dynamic,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserModelData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreatedUserModel implements _CreatedUserModel {
  _$_CreatedUserModel(
      {@JsonKey(name: 'IsSuccess') this.isSuccess = false,
      @JsonKey(name: 'MessageList') this.messageList,
      @JsonKey(name: 'Data') this.data});

  factory _$_CreatedUserModel.fromJson(Map<String, dynamic> json) =>
      _$$_CreatedUserModelFromJson(json);

  @override
  @JsonKey(name: 'IsSuccess')
  final bool isSuccess;
  @override
  @JsonKey(name: 'MessageList')
  final dynamic messageList;
  @override
  @JsonKey(name: 'Data')
  final UserModelData? data;

  @override
  String toString() {
    return 'CreatedUserModel(isSuccess: $isSuccess, messageList: $messageList, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreatedUserModel &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            const DeepCollectionEquality()
                .equals(other.messageList, messageList) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isSuccess,
      const DeepCollectionEquality().hash(messageList), data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreatedUserModelCopyWith<_$_CreatedUserModel> get copyWith =>
      __$$_CreatedUserModelCopyWithImpl<_$_CreatedUserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreatedUserModelToJson(
      this,
    );
  }
}

abstract class _CreatedUserModel implements CreatedUserModel {
  factory _CreatedUserModel(
      {@JsonKey(name: 'IsSuccess') final bool isSuccess,
      @JsonKey(name: 'MessageList') final dynamic messageList,
      @JsonKey(name: 'Data') final UserModelData? data}) = _$_CreatedUserModel;

  factory _CreatedUserModel.fromJson(Map<String, dynamic> json) =
      _$_CreatedUserModel.fromJson;

  @override
  @JsonKey(name: 'IsSuccess')
  bool get isSuccess;
  @override
  @JsonKey(name: 'MessageList')
  dynamic get messageList;
  @override
  @JsonKey(name: 'Data')
  UserModelData? get data;
  @override
  @JsonKey(ignore: true)
  _$$_CreatedUserModelCopyWith<_$_CreatedUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
