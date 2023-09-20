// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'communication_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommunicationDetailsModel _$CommunicationDetailsModelFromJson(
    Map<String, dynamic> json) {
  return _CommunicationDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$CommunicationDetailsModel {
  @JsonKey(name: 'CvID')
  int? get cvID => throw _privateConstructorUsedError;
  @JsonKey(name: 'MobilePhoneNumber')
  PhoneNumberModel? get mobilePhoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'MobilePhoneNumber2')
  PhoneNumberModel? get mobilePhoneNumber2 =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'HomePhoneNumber')
  PhoneNumberModel? get homePhoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'Address')
  AddressModel? get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommunicationDetailsModelCopyWith<CommunicationDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunicationDetailsModelCopyWith<$Res> {
  factory $CommunicationDetailsModelCopyWith(CommunicationDetailsModel value,
          $Res Function(CommunicationDetailsModel) then) =
      _$CommunicationDetailsModelCopyWithImpl<$Res, CommunicationDetailsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'CvID') int? cvID,
      @JsonKey(name: 'MobilePhoneNumber') PhoneNumberModel? mobilePhoneNumber,
      @JsonKey(name: 'MobilePhoneNumber2') PhoneNumberModel? mobilePhoneNumber2,
      @JsonKey(name: 'HomePhoneNumber') PhoneNumberModel? homePhoneNumber,
      @JsonKey(name: 'Address') AddressModel? address});

  $PhoneNumberModelCopyWith<$Res>? get mobilePhoneNumber;
  $PhoneNumberModelCopyWith<$Res>? get mobilePhoneNumber2;
  $PhoneNumberModelCopyWith<$Res>? get homePhoneNumber;
  $AddressModelCopyWith<$Res>? get address;
}

/// @nodoc
class _$CommunicationDetailsModelCopyWithImpl<$Res,
        $Val extends CommunicationDetailsModel>
    implements $CommunicationDetailsModelCopyWith<$Res> {
  _$CommunicationDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cvID = freezed,
    Object? mobilePhoneNumber = freezed,
    Object? mobilePhoneNumber2 = freezed,
    Object? homePhoneNumber = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      cvID: freezed == cvID
          ? _value.cvID
          : cvID // ignore: cast_nullable_to_non_nullable
              as int?,
      mobilePhoneNumber: freezed == mobilePhoneNumber
          ? _value.mobilePhoneNumber
          : mobilePhoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumberModel?,
      mobilePhoneNumber2: freezed == mobilePhoneNumber2
          ? _value.mobilePhoneNumber2
          : mobilePhoneNumber2 // ignore: cast_nullable_to_non_nullable
              as PhoneNumberModel?,
      homePhoneNumber: freezed == homePhoneNumber
          ? _value.homePhoneNumber
          : homePhoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumberModel?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PhoneNumberModelCopyWith<$Res>? get mobilePhoneNumber {
    if (_value.mobilePhoneNumber == null) {
      return null;
    }

    return $PhoneNumberModelCopyWith<$Res>(_value.mobilePhoneNumber!, (value) {
      return _then(_value.copyWith(mobilePhoneNumber: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PhoneNumberModelCopyWith<$Res>? get mobilePhoneNumber2 {
    if (_value.mobilePhoneNumber2 == null) {
      return null;
    }

    return $PhoneNumberModelCopyWith<$Res>(_value.mobilePhoneNumber2!, (value) {
      return _then(_value.copyWith(mobilePhoneNumber2: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PhoneNumberModelCopyWith<$Res>? get homePhoneNumber {
    if (_value.homePhoneNumber == null) {
      return null;
    }

    return $PhoneNumberModelCopyWith<$Res>(_value.homePhoneNumber!, (value) {
      return _then(_value.copyWith(homePhoneNumber: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressModelCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressModelCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CommunicationDetailsModelCopyWith<$Res>
    implements $CommunicationDetailsModelCopyWith<$Res> {
  factory _$$_CommunicationDetailsModelCopyWith(
          _$_CommunicationDetailsModel value,
          $Res Function(_$_CommunicationDetailsModel) then) =
      __$$_CommunicationDetailsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'CvID') int? cvID,
      @JsonKey(name: 'MobilePhoneNumber') PhoneNumberModel? mobilePhoneNumber,
      @JsonKey(name: 'MobilePhoneNumber2') PhoneNumberModel? mobilePhoneNumber2,
      @JsonKey(name: 'HomePhoneNumber') PhoneNumberModel? homePhoneNumber,
      @JsonKey(name: 'Address') AddressModel? address});

  @override
  $PhoneNumberModelCopyWith<$Res>? get mobilePhoneNumber;
  @override
  $PhoneNumberModelCopyWith<$Res>? get mobilePhoneNumber2;
  @override
  $PhoneNumberModelCopyWith<$Res>? get homePhoneNumber;
  @override
  $AddressModelCopyWith<$Res>? get address;
}

/// @nodoc
class __$$_CommunicationDetailsModelCopyWithImpl<$Res>
    extends _$CommunicationDetailsModelCopyWithImpl<$Res,
        _$_CommunicationDetailsModel>
    implements _$$_CommunicationDetailsModelCopyWith<$Res> {
  __$$_CommunicationDetailsModelCopyWithImpl(
      _$_CommunicationDetailsModel _value,
      $Res Function(_$_CommunicationDetailsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cvID = freezed,
    Object? mobilePhoneNumber = freezed,
    Object? mobilePhoneNumber2 = freezed,
    Object? homePhoneNumber = freezed,
    Object? address = freezed,
  }) {
    return _then(_$_CommunicationDetailsModel(
      cvID: freezed == cvID
          ? _value.cvID
          : cvID // ignore: cast_nullable_to_non_nullable
              as int?,
      mobilePhoneNumber: freezed == mobilePhoneNumber
          ? _value.mobilePhoneNumber
          : mobilePhoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumberModel?,
      mobilePhoneNumber2: freezed == mobilePhoneNumber2
          ? _value.mobilePhoneNumber2
          : mobilePhoneNumber2 // ignore: cast_nullable_to_non_nullable
              as PhoneNumberModel?,
      homePhoneNumber: freezed == homePhoneNumber
          ? _value.homePhoneNumber
          : homePhoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumberModel?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommunicationDetailsModel implements _CommunicationDetailsModel {
  _$_CommunicationDetailsModel(
      {@JsonKey(name: 'CvID') this.cvID,
      @JsonKey(name: 'MobilePhoneNumber') this.mobilePhoneNumber,
      @JsonKey(name: 'MobilePhoneNumber2') this.mobilePhoneNumber2,
      @JsonKey(name: 'HomePhoneNumber') this.homePhoneNumber,
      @JsonKey(name: 'Address') this.address});

  factory _$_CommunicationDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$$_CommunicationDetailsModelFromJson(json);

  @override
  @JsonKey(name: 'CvID')
  final int? cvID;
  @override
  @JsonKey(name: 'MobilePhoneNumber')
  final PhoneNumberModel? mobilePhoneNumber;
  @override
  @JsonKey(name: 'MobilePhoneNumber2')
  final PhoneNumberModel? mobilePhoneNumber2;
  @override
  @JsonKey(name: 'HomePhoneNumber')
  final PhoneNumberModel? homePhoneNumber;
  @override
  @JsonKey(name: 'Address')
  final AddressModel? address;

  @override
  String toString() {
    return 'CommunicationDetailsModel(cvID: $cvID, mobilePhoneNumber: $mobilePhoneNumber, mobilePhoneNumber2: $mobilePhoneNumber2, homePhoneNumber: $homePhoneNumber, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommunicationDetailsModel &&
            (identical(other.cvID, cvID) || other.cvID == cvID) &&
            (identical(other.mobilePhoneNumber, mobilePhoneNumber) ||
                other.mobilePhoneNumber == mobilePhoneNumber) &&
            (identical(other.mobilePhoneNumber2, mobilePhoneNumber2) ||
                other.mobilePhoneNumber2 == mobilePhoneNumber2) &&
            (identical(other.homePhoneNumber, homePhoneNumber) ||
                other.homePhoneNumber == homePhoneNumber) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cvID, mobilePhoneNumber,
      mobilePhoneNumber2, homePhoneNumber, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommunicationDetailsModelCopyWith<_$_CommunicationDetailsModel>
      get copyWith => __$$_CommunicationDetailsModelCopyWithImpl<
          _$_CommunicationDetailsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommunicationDetailsModelToJson(
      this,
    );
  }
}

abstract class _CommunicationDetailsModel implements CommunicationDetailsModel {
  factory _CommunicationDetailsModel(
      {@JsonKey(name: 'CvID')
          final int? cvID,
      @JsonKey(name: 'MobilePhoneNumber')
          final PhoneNumberModel? mobilePhoneNumber,
      @JsonKey(name: 'MobilePhoneNumber2')
          final PhoneNumberModel? mobilePhoneNumber2,
      @JsonKey(name: 'HomePhoneNumber')
          final PhoneNumberModel? homePhoneNumber,
      @JsonKey(name: 'Address')
          final AddressModel? address}) = _$_CommunicationDetailsModel;

  factory _CommunicationDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_CommunicationDetailsModel.fromJson;

  @override
  @JsonKey(name: 'CvID')
  int? get cvID;
  @override
  @JsonKey(name: 'MobilePhoneNumber')
  PhoneNumberModel? get mobilePhoneNumber;
  @override
  @JsonKey(name: 'MobilePhoneNumber2')
  PhoneNumberModel? get mobilePhoneNumber2;
  @override
  @JsonKey(name: 'HomePhoneNumber')
  PhoneNumberModel? get homePhoneNumber;
  @override
  @JsonKey(name: 'Address')
  AddressModel? get address;
  @override
  @JsonKey(ignore: true)
  _$$_CommunicationDetailsModelCopyWith<_$_CommunicationDetailsModel>
      get copyWith => throw _privateConstructorUsedError;
}
