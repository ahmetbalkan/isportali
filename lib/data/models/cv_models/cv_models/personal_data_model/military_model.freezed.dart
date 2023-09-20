// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'military_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MilitaryModel _$MilitaryModelFromJson(Map<String, dynamic> json) {
  return _MilitaryModel.fromJson(json);
}

/// @nodoc
mixin _$MilitaryModel {
  @JsonKey(name: 'Status')
  LookupModel? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'Date')
  dynamic get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'Description')
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MilitaryModelCopyWith<MilitaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MilitaryModelCopyWith<$Res> {
  factory $MilitaryModelCopyWith(
          MilitaryModel value, $Res Function(MilitaryModel) then) =
      _$MilitaryModelCopyWithImpl<$Res, MilitaryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Status') LookupModel? status,
      @JsonKey(name: 'Date') dynamic date,
      @JsonKey(name: 'Description') String? description});

  $LookupModelCopyWith<$Res>? get status;
}

/// @nodoc
class _$MilitaryModelCopyWithImpl<$Res, $Val extends MilitaryModel>
    implements $MilitaryModelCopyWith<$Res> {
  _$MilitaryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? date = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LookupModel?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as dynamic,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LookupModelCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $LookupModelCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MilitaryModelCopyWith<$Res>
    implements $MilitaryModelCopyWith<$Res> {
  factory _$$_MilitaryModelCopyWith(
          _$_MilitaryModel value, $Res Function(_$_MilitaryModel) then) =
      __$$_MilitaryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Status') LookupModel? status,
      @JsonKey(name: 'Date') dynamic date,
      @JsonKey(name: 'Description') String? description});

  @override
  $LookupModelCopyWith<$Res>? get status;
}

/// @nodoc
class __$$_MilitaryModelCopyWithImpl<$Res>
    extends _$MilitaryModelCopyWithImpl<$Res, _$_MilitaryModel>
    implements _$$_MilitaryModelCopyWith<$Res> {
  __$$_MilitaryModelCopyWithImpl(
      _$_MilitaryModel _value, $Res Function(_$_MilitaryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? date = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_MilitaryModel(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LookupModel?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as dynamic,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MilitaryModel implements _MilitaryModel {
  _$_MilitaryModel(
      {@JsonKey(name: 'Status') this.status,
      @JsonKey(name: 'Date') this.date,
      @JsonKey(name: 'Description') this.description});

  factory _$_MilitaryModel.fromJson(Map<String, dynamic> json) =>
      _$$_MilitaryModelFromJson(json);

  @override
  @JsonKey(name: 'Status')
  final LookupModel? status;
  @override
  @JsonKey(name: 'Date')
  final dynamic date;
  @override
  @JsonKey(name: 'Description')
  final String? description;

  @override
  String toString() {
    return 'MilitaryModel(status: $status, date: $date, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MilitaryModel &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(date), description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MilitaryModelCopyWith<_$_MilitaryModel> get copyWith =>
      __$$_MilitaryModelCopyWithImpl<_$_MilitaryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MilitaryModelToJson(
      this,
    );
  }
}

abstract class _MilitaryModel implements MilitaryModel {
  factory _MilitaryModel(
          {@JsonKey(name: 'Status') final LookupModel? status,
          @JsonKey(name: 'Date') final dynamic date,
          @JsonKey(name: 'Description') final String? description}) =
      _$_MilitaryModel;

  factory _MilitaryModel.fromJson(Map<String, dynamic> json) =
      _$_MilitaryModel.fromJson;

  @override
  @JsonKey(name: 'Status')
  LookupModel? get status;
  @override
  @JsonKey(name: 'Date')
  dynamic get date;
  @override
  @JsonKey(name: 'Description')
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_MilitaryModelCopyWith<_$_MilitaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
