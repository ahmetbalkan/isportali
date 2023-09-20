// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_cv_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MainCvModel _$MainCvModelFromJson(Map<String, dynamic> json) {
  return _MainCvModel.fromJson(json);
}

/// @nodoc
mixin _$MainCvModel {
  @JsonKey(name: 'IsSuccess')
  bool? get isSuccess => throw _privateConstructorUsedError;
  @JsonKey(name: 'MessageList')
  List<MessageListModel>? get messageList => throw _privateConstructorUsedError;
  @JsonKey(name: 'Data')
  CvModel? get cvModel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainCvModelCopyWith<MainCvModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainCvModelCopyWith<$Res> {
  factory $MainCvModelCopyWith(
          MainCvModel value, $Res Function(MainCvModel) then) =
      _$MainCvModelCopyWithImpl<$Res, MainCvModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'IsSuccess') bool? isSuccess,
      @JsonKey(name: 'MessageList') List<MessageListModel>? messageList,
      @JsonKey(name: 'Data') CvModel? cvModel});
}

/// @nodoc
class _$MainCvModelCopyWithImpl<$Res, $Val extends MainCvModel>
    implements $MainCvModelCopyWith<$Res> {
  _$MainCvModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSuccess = freezed,
    Object? messageList = freezed,
    Object? cvModel = freezed,
  }) {
    return _then(_value.copyWith(
      isSuccess: freezed == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      messageList: freezed == messageList
          ? _value.messageList
          : messageList // ignore: cast_nullable_to_non_nullable
              as List<MessageListModel>?,
      cvModel: freezed == cvModel
          ? _value.cvModel
          : cvModel // ignore: cast_nullable_to_non_nullable
              as CvModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MainCvModelCopyWith<$Res>
    implements $MainCvModelCopyWith<$Res> {
  factory _$$_MainCvModelCopyWith(
          _$_MainCvModel value, $Res Function(_$_MainCvModel) then) =
      __$$_MainCvModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'IsSuccess') bool? isSuccess,
      @JsonKey(name: 'MessageList') List<MessageListModel>? messageList,
      @JsonKey(name: 'Data') CvModel? cvModel});
}

/// @nodoc
class __$$_MainCvModelCopyWithImpl<$Res>
    extends _$MainCvModelCopyWithImpl<$Res, _$_MainCvModel>
    implements _$$_MainCvModelCopyWith<$Res> {
  __$$_MainCvModelCopyWithImpl(
      _$_MainCvModel _value, $Res Function(_$_MainCvModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSuccess = freezed,
    Object? messageList = freezed,
    Object? cvModel = freezed,
  }) {
    return _then(_$_MainCvModel(
      isSuccess: freezed == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      messageList: freezed == messageList
          ? _value._messageList
          : messageList // ignore: cast_nullable_to_non_nullable
              as List<MessageListModel>?,
      cvModel: freezed == cvModel
          ? _value.cvModel
          : cvModel // ignore: cast_nullable_to_non_nullable
              as CvModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MainCvModel implements _MainCvModel {
  _$_MainCvModel(
      {@JsonKey(name: 'IsSuccess') this.isSuccess,
      @JsonKey(name: 'MessageList') final List<MessageListModel>? messageList,
      @JsonKey(name: 'Data') this.cvModel})
      : _messageList = messageList;

  factory _$_MainCvModel.fromJson(Map<String, dynamic> json) =>
      _$$_MainCvModelFromJson(json);

  @override
  @JsonKey(name: 'IsSuccess')
  final bool? isSuccess;
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
  final CvModel? cvModel;

  @override
  String toString() {
    return 'MainCvModel(isSuccess: $isSuccess, messageList: $messageList, cvModel: $cvModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainCvModel &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            const DeepCollectionEquality()
                .equals(other._messageList, _messageList) &&
            (identical(other.cvModel, cvModel) || other.cvModel == cvModel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isSuccess,
      const DeepCollectionEquality().hash(_messageList), cvModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MainCvModelCopyWith<_$_MainCvModel> get copyWith =>
      __$$_MainCvModelCopyWithImpl<_$_MainCvModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MainCvModelToJson(
      this,
    );
  }
}

abstract class _MainCvModel implements MainCvModel {
  factory _MainCvModel(
      {@JsonKey(name: 'IsSuccess') final bool? isSuccess,
      @JsonKey(name: 'MessageList') final List<MessageListModel>? messageList,
      @JsonKey(name: 'Data') final CvModel? cvModel}) = _$_MainCvModel;

  factory _MainCvModel.fromJson(Map<String, dynamic> json) =
      _$_MainCvModel.fromJson;

  @override
  @JsonKey(name: 'IsSuccess')
  bool? get isSuccess;
  @override
  @JsonKey(name: 'MessageList')
  List<MessageListModel>? get messageList;
  @override
  @JsonKey(name: 'Data')
  CvModel? get cvModel;
  @override
  @JsonKey(ignore: true)
  _$$_MainCvModelCopyWith<_$_MainCvModel> get copyWith =>
      throw _privateConstructorUsedError;
}
