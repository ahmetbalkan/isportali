// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'src_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SrcModel _$SrcModelFromJson(Map<String, dynamic> json) {
  return _SrcModel.fromJson(json);
}

/// @nodoc
mixin _$SrcModel {
  @JsonKey(name: 'Lookup')
  LookupModel? get lookup => throw _privateConstructorUsedError;
  @JsonKey(name: 'Date')
  int? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SrcModelCopyWith<SrcModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SrcModelCopyWith<$Res> {
  factory $SrcModelCopyWith(SrcModel value, $Res Function(SrcModel) then) =
      _$SrcModelCopyWithImpl<$Res, SrcModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Lookup') LookupModel? lookup,
      @JsonKey(name: 'Date') int? date});

  $LookupModelCopyWith<$Res>? get lookup;
}

/// @nodoc
class _$SrcModelCopyWithImpl<$Res, $Val extends SrcModel>
    implements $SrcModelCopyWith<$Res> {
  _$SrcModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lookup = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      lookup: freezed == lookup
          ? _value.lookup
          : lookup // ignore: cast_nullable_to_non_nullable
              as LookupModel?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LookupModelCopyWith<$Res>? get lookup {
    if (_value.lookup == null) {
      return null;
    }

    return $LookupModelCopyWith<$Res>(_value.lookup!, (value) {
      return _then(_value.copyWith(lookup: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SrcModelCopyWith<$Res> implements $SrcModelCopyWith<$Res> {
  factory _$$_SrcModelCopyWith(
          _$_SrcModel value, $Res Function(_$_SrcModel) then) =
      __$$_SrcModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Lookup') LookupModel? lookup,
      @JsonKey(name: 'Date') int? date});

  @override
  $LookupModelCopyWith<$Res>? get lookup;
}

/// @nodoc
class __$$_SrcModelCopyWithImpl<$Res>
    extends _$SrcModelCopyWithImpl<$Res, _$_SrcModel>
    implements _$$_SrcModelCopyWith<$Res> {
  __$$_SrcModelCopyWithImpl(
      _$_SrcModel _value, $Res Function(_$_SrcModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lookup = freezed,
    Object? date = freezed,
  }) {
    return _then(_$_SrcModel(
      lookup: freezed == lookup
          ? _value.lookup
          : lookup // ignore: cast_nullable_to_non_nullable
              as LookupModel?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SrcModel implements _SrcModel {
  _$_SrcModel(
      {@JsonKey(name: 'Lookup') this.lookup, @JsonKey(name: 'Date') this.date});

  factory _$_SrcModel.fromJson(Map<String, dynamic> json) =>
      _$$_SrcModelFromJson(json);

  @override
  @JsonKey(name: 'Lookup')
  final LookupModel? lookup;
  @override
  @JsonKey(name: 'Date')
  final int? date;

  @override
  String toString() {
    return 'SrcModel(lookup: $lookup, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SrcModel &&
            (identical(other.lookup, lookup) || other.lookup == lookup) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lookup, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SrcModelCopyWith<_$_SrcModel> get copyWith =>
      __$$_SrcModelCopyWithImpl<_$_SrcModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SrcModelToJson(
      this,
    );
  }
}

abstract class _SrcModel implements SrcModel {
  factory _SrcModel(
      {@JsonKey(name: 'Lookup') final LookupModel? lookup,
      @JsonKey(name: 'Date') final int? date}) = _$_SrcModel;

  factory _SrcModel.fromJson(Map<String, dynamic> json) = _$_SrcModel.fromJson;

  @override
  @JsonKey(name: 'Lookup')
  LookupModel? get lookup;
  @override
  @JsonKey(name: 'Date')
  int? get date;
  @override
  @JsonKey(ignore: true)
  _$$_SrcModelCopyWith<_$_SrcModel> get copyWith =>
      throw _privateConstructorUsedError;
}
