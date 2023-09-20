// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'birth_place_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BirthPlaceModel _$BirthPlaceModelFromJson(Map<String, dynamic> json) {
  return _BirthPlaceModel.fromJson(json);
}

/// @nodoc
mixin _$BirthPlaceModel {
  @JsonKey(name: 'Country')
  CountryModel? get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'City')
  CityModel? get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'District')
  DistrictModel? get district => throw _privateConstructorUsedError;
  @JsonKey(name: 'Text')
  String? get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BirthPlaceModelCopyWith<BirthPlaceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BirthPlaceModelCopyWith<$Res> {
  factory $BirthPlaceModelCopyWith(
          BirthPlaceModel value, $Res Function(BirthPlaceModel) then) =
      _$BirthPlaceModelCopyWithImpl<$Res, BirthPlaceModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Country') CountryModel? country,
      @JsonKey(name: 'City') CityModel? city,
      @JsonKey(name: 'District') DistrictModel? district,
      @JsonKey(name: 'Text') String? text});

  $CountryModelCopyWith<$Res>? get country;
  $CityModelCopyWith<$Res>? get city;
  $DistrictModelCopyWith<$Res>? get district;
}

/// @nodoc
class _$BirthPlaceModelCopyWithImpl<$Res, $Val extends BirthPlaceModel>
    implements $BirthPlaceModelCopyWith<$Res> {
  _$BirthPlaceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = freezed,
    Object? city = freezed,
    Object? district = freezed,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as CountryModel?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityModel?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as DistrictModel?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
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

  @override
  @pragma('vm:prefer-inline')
  $CityModelCopyWith<$Res>? get city {
    if (_value.city == null) {
      return null;
    }

    return $CityModelCopyWith<$Res>(_value.city!, (value) {
      return _then(_value.copyWith(city: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DistrictModelCopyWith<$Res>? get district {
    if (_value.district == null) {
      return null;
    }

    return $DistrictModelCopyWith<$Res>(_value.district!, (value) {
      return _then(_value.copyWith(district: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BirthPlaceModelCopyWith<$Res>
    implements $BirthPlaceModelCopyWith<$Res> {
  factory _$$_BirthPlaceModelCopyWith(
          _$_BirthPlaceModel value, $Res Function(_$_BirthPlaceModel) then) =
      __$$_BirthPlaceModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Country') CountryModel? country,
      @JsonKey(name: 'City') CityModel? city,
      @JsonKey(name: 'District') DistrictModel? district,
      @JsonKey(name: 'Text') String? text});

  @override
  $CountryModelCopyWith<$Res>? get country;
  @override
  $CityModelCopyWith<$Res>? get city;
  @override
  $DistrictModelCopyWith<$Res>? get district;
}

/// @nodoc
class __$$_BirthPlaceModelCopyWithImpl<$Res>
    extends _$BirthPlaceModelCopyWithImpl<$Res, _$_BirthPlaceModel>
    implements _$$_BirthPlaceModelCopyWith<$Res> {
  __$$_BirthPlaceModelCopyWithImpl(
      _$_BirthPlaceModel _value, $Res Function(_$_BirthPlaceModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = freezed,
    Object? city = freezed,
    Object? district = freezed,
    Object? text = freezed,
  }) {
    return _then(_$_BirthPlaceModel(
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as CountryModel?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityModel?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as DistrictModel?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BirthPlaceModel implements _BirthPlaceModel {
  _$_BirthPlaceModel(
      {@JsonKey(name: 'Country') this.country,
      @JsonKey(name: 'City') this.city,
      @JsonKey(name: 'District') this.district,
      @JsonKey(name: 'Text') this.text});

  factory _$_BirthPlaceModel.fromJson(Map<String, dynamic> json) =>
      _$$_BirthPlaceModelFromJson(json);

  @override
  @JsonKey(name: 'Country')
  final CountryModel? country;
  @override
  @JsonKey(name: 'City')
  final CityModel? city;
  @override
  @JsonKey(name: 'District')
  final DistrictModel? district;
  @override
  @JsonKey(name: 'Text')
  final String? text;

  @override
  String toString() {
    return 'BirthPlaceModel(country: $country, city: $city, district: $district, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BirthPlaceModel &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, country, city, district, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BirthPlaceModelCopyWith<_$_BirthPlaceModel> get copyWith =>
      __$$_BirthPlaceModelCopyWithImpl<_$_BirthPlaceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BirthPlaceModelToJson(
      this,
    );
  }
}

abstract class _BirthPlaceModel implements BirthPlaceModel {
  factory _BirthPlaceModel(
      {@JsonKey(name: 'Country') final CountryModel? country,
      @JsonKey(name: 'City') final CityModel? city,
      @JsonKey(name: 'District') final DistrictModel? district,
      @JsonKey(name: 'Text') final String? text}) = _$_BirthPlaceModel;

  factory _BirthPlaceModel.fromJson(Map<String, dynamic> json) =
      _$_BirthPlaceModel.fromJson;

  @override
  @JsonKey(name: 'Country')
  CountryModel? get country;
  @override
  @JsonKey(name: 'City')
  CityModel? get city;
  @override
  @JsonKey(name: 'District')
  DistrictModel? get district;
  @override
  @JsonKey(name: 'Text')
  String? get text;
  @override
  @JsonKey(ignore: true)
  _$$_BirthPlaceModelCopyWith<_$_BirthPlaceModel> get copyWith =>
      throw _privateConstructorUsedError;
}
