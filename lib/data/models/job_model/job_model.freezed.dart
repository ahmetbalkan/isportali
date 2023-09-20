// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JobModel _$JobModelFromJson(Map<String, dynamic> json) {
  return _JobModel.fromJson(json);
}

/// @nodoc
mixin _$JobModel {
  @JsonKey(name: 'IsSuccess')
  bool get isSuccess => throw _privateConstructorUsedError;
  @JsonKey(name: 'MessageList')
  List<MessageListModel>? get messageList => throw _privateConstructorUsedError;
  @JsonKey(name: 'Data')
  DataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobModelCopyWith<JobModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobModelCopyWith<$Res> {
  factory $JobModelCopyWith(JobModel value, $Res Function(JobModel) then) =
      _$JobModelCopyWithImpl<$Res, JobModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'IsSuccess') bool isSuccess,
      @JsonKey(name: 'MessageList') List<MessageListModel>? messageList,
      @JsonKey(name: 'Data') DataModel? data});

  $DataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$JobModelCopyWithImpl<$Res, $Val extends JobModel>
    implements $JobModelCopyWith<$Res> {
  _$JobModelCopyWithImpl(this._value, this._then);

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
              as List<MessageListModel>?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_JobModelCopyWith<$Res> implements $JobModelCopyWith<$Res> {
  factory _$$_JobModelCopyWith(
          _$_JobModel value, $Res Function(_$_JobModel) then) =
      __$$_JobModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'IsSuccess') bool isSuccess,
      @JsonKey(name: 'MessageList') List<MessageListModel>? messageList,
      @JsonKey(name: 'Data') DataModel? data});

  @override
  $DataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_JobModelCopyWithImpl<$Res>
    extends _$JobModelCopyWithImpl<$Res, _$_JobModel>
    implements _$$_JobModelCopyWith<$Res> {
  __$$_JobModelCopyWithImpl(
      _$_JobModel _value, $Res Function(_$_JobModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSuccess = null,
    Object? messageList = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_JobModel(
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      messageList: freezed == messageList
          ? _value._messageList
          : messageList // ignore: cast_nullable_to_non_nullable
              as List<MessageListModel>?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JobModel implements _JobModel {
  _$_JobModel(
      {@JsonKey(name: 'IsSuccess') this.isSuccess = false,
      @JsonKey(name: 'MessageList') final List<MessageListModel>? messageList,
      @JsonKey(name: 'Data') this.data})
      : _messageList = messageList;

  factory _$_JobModel.fromJson(Map<String, dynamic> json) =>
      _$$_JobModelFromJson(json);

  @override
  @JsonKey(name: 'IsSuccess')
  final bool isSuccess;
  final List<MessageListModel>? _messageList;
  @override
  @JsonKey(name: 'MessageList')
  List<MessageListModel>? get messageList {
    final value = _messageList;
    if (value == null) return null;
    if (_messageList is EqualUnmodifiableListView) return _messageList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'Data')
  final DataModel? data;

  @override
  String toString() {
    return 'JobModel(isSuccess: $isSuccess, messageList: $messageList, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JobModel &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            const DeepCollectionEquality()
                .equals(other._messageList, _messageList) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isSuccess,
      const DeepCollectionEquality().hash(_messageList), data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JobModelCopyWith<_$_JobModel> get copyWith =>
      __$$_JobModelCopyWithImpl<_$_JobModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JobModelToJson(
      this,
    );
  }
}

abstract class _JobModel implements JobModel {
  factory _JobModel(
      {@JsonKey(name: 'IsSuccess') final bool isSuccess,
      @JsonKey(name: 'MessageList') final List<MessageListModel>? messageList,
      @JsonKey(name: 'Data') final DataModel? data}) = _$_JobModel;

  factory _JobModel.fromJson(Map<String, dynamic> json) = _$_JobModel.fromJson;

  @override
  @JsonKey(name: 'IsSuccess')
  bool get isSuccess;
  @override
  @JsonKey(name: 'MessageList')
  List<MessageListModel>? get messageList;
  @override
  @JsonKey(name: 'Data')
  DataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$_JobModelCopyWith<_$_JobModel> get copyWith =>
      throw _privateConstructorUsedError;
}
