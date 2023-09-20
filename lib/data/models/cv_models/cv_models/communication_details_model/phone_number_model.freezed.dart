// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'phone_number_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PhoneNumberModel _$PhoneNumberModelFromJson(Map<String, dynamic> json) {
  return _PhoneNumberModel.fromJson(json);
}

/// @nodoc
mixin _$PhoneNumberModel {
  @JsonKey(name: 'Country')
  CountryModel? get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'AreaCode')
  int? get areaCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'Number')
  String? get number => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhoneNumberModelCopyWith<PhoneNumberModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneNumberModelCopyWith<$Res> {
  factory $PhoneNumberModelCopyWith(
          PhoneNumberModel value, $Res Function(PhoneNumberModel) then) =
      _$PhoneNumberModelCopyWithImpl<$Res, PhoneNumberModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Country') CountryModel? country,
      @JsonKey(name: 'AreaCode') int? areaCode,
      @JsonKey(name: 'Number') String? number});

  $CountryModelCopyWith<$Res>? get country;
}

/// @nodoc
class _$PhoneNumberModelCopyWithImpl<$Res, $Val extends PhoneNumberModel>
    implements $PhoneNumberModelCopyWith<$Res> {
  _$PhoneNumberModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = freezed,
    Object? areaCode = freezed,
    Object? number = freezed,
  }) {
    return _then(_value.copyWith(
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as CountryModel?,
      areaCode: freezed == areaCode
          ? _value.areaCode
          : areaCode // ignore: cast_nullable_to_non_nullable
              as int?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CountryModelCopyWith<$Res>? get country {
    if (_value.country == null) {
      return null;
    }

    return $CountryModelCopyWith<$Res>(_value.country!, (value) {
      return _then(_value.copyWith(country: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PhoneNumberModelCopyWith<$Res>
    implements $PhoneNumberModelCopyWith<$Res> {
  factory _$$_PhoneNumberModelCopyWith(
          _$_PhoneNumberModel value, $Res Function(_$_PhoneNumberModel) then) =
      __$$_PhoneNumberModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Country') CountryModel? country,
      @JsonKey(name: 'AreaCode') int? areaCode,
      @JsonKey(name: 'Number') String? number});

  @override
  $CountryModelCopyWith<$Res>? get country;
}

/// @nodoc
class __$$_PhoneNumberModelCopyWithImpl<$Res>
    extends _$PhoneNumberModelCopyWithImpl<$Res, _$_PhoneNumberModel>
    implements _$$_PhoneNumberModelCopyWith<$Res> {
  __$$_PhoneNumberModelCopyWithImpl(
      _$_PhoneNumberModel _value, $Res Function(_$_PhoneNumberModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = freezed,
    Object? areaCode = freezed,
    Object? number = freezed,
  }) {
    return _then(_$_PhoneNumberModel(
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as CountryModel?,
      areaCode: freezed == areaCode
          ? _value.areaCode
          : areaCode // ignore: cast_nullable_to_non_nullable
              as int?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PhoneNumberModel implements _PhoneNumberModel {
  _$_PhoneNumberModel(
      {@JsonKey(name: 'Country') this.country,
      @JsonKey(name: 'AreaCode') this.areaCode,
      @JsonKey(name: 'Number') this.number});

  factory _$_PhoneNumberModel.fromJson(Map<String, dynamic> json) =>
      _$$_PhoneNumberModelFromJson(json);

  @override
  @JsonKey(name: 'Country')
  final CountryModel? country;
  @override
  @JsonKey(name: 'AreaCode')
  final int? areaCode;
  @override
  @JsonKey(name: 'Number')
  final String? number;

  @override
  String toString() {
    return 'PhoneNumberModel(country: $country, areaCode: $areaCode, number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhoneNumberModel &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.areaCode, areaCode) ||
                other.areaCode == areaCode) &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, country, areaCode, number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhoneNumberModelCopyWith<_$_PhoneNumberModel> get copyWith =>
      __$$_PhoneNumberModelCopyWithImpl<_$_PhoneNumberModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PhoneNumberModelToJson(
      this,
    );
  }
}

abstract class _PhoneNumberModel implements PhoneNumberModel {
  factory _PhoneNumberModel(
      {@JsonKey(name: 'Country') final CountryModel? country,
      @JsonKey(name: 'AreaCode') final int? areaCode,
      @JsonKey(name: 'Number') final String? number}) = _$_PhoneNumberModel;

  factory _PhoneNumberModel.fromJson(Map<String, dynamic> json) =
      _$_PhoneNumberModel.fromJson;

  @override
  @JsonKey(name: 'Country')
  CountryModel? get country;
  @override
  @JsonKey(name: 'AreaCode')
  int? get areaCode;
  @override
  @JsonKey(name: 'Number')
  String? get number;
  @override
  @JsonKey(ignore: true)
  _$$_PhoneNumberModelCopyWith<_$_PhoneNumberModel> get copyWith =>
      throw _privateConstructorUsedError;
}
