// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'personal_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PersonalDetailsModel _$PersonalDetailsModelFromJson(Map<String, dynamic> json) {
  return _PersonalDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$PersonalDetailsModel {
  @JsonKey(name: 'CvID')
  int? get cvID => throw _privateConstructorUsedError;
  @JsonKey(name: 'FirstName')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'LastName')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'IDNumber')
  int? get idNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'Gender')
  LookupModel? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'Email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'Email2')
  String? get email2 => throw _privateConstructorUsedError;
  @JsonKey(name: 'Nationality')
  LookupModel? get nationality => throw _privateConstructorUsedError;
  @JsonKey(name: 'Nationality2')
  LookupModel? get nationality2 => throw _privateConstructorUsedError;
  @JsonKey(name: 'Summary')
  String? get summary => throw _privateConstructorUsedError;
  @JsonKey(name: 'BirthDate')
  String? get birthDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'BirthPlace')
  BirthPlaceModel? get birthPlace => throw _privateConstructorUsedError;
  @JsonKey(name: 'MaritalStatus')
  LookupModel? get maritalStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'Military')
  MilitaryModel? get military => throw _privateConstructorUsedError;
  @JsonKey(name: 'IskurInfo')
  IskurInfoModel? get iskurInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'Handicap')
  HandicapModel? get handicap => throw _privateConstructorUsedError;
  @JsonKey(name: 'Conviction')
  dynamic get conviction => throw _privateConstructorUsedError;
  @JsonKey(name: 'TerrorismVictim')
  dynamic get terrorismVictim => throw _privateConstructorUsedError;
  @JsonKey(name: 'LinkedIn')
  String? get linkedin => throw _privateConstructorUsedError;
  @JsonKey(name: 'EducationStatus')
  dynamic get educationStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonalDetailsModelCopyWith<PersonalDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalDetailsModelCopyWith<$Res> {
  factory $PersonalDetailsModelCopyWith(PersonalDetailsModel value,
          $Res Function(PersonalDetailsModel) then) =
      _$PersonalDetailsModelCopyWithImpl<$Res, PersonalDetailsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'CvID') int? cvID,
      @JsonKey(name: 'FirstName') String? firstName,
      @JsonKey(name: 'LastName') String? lastName,
      @JsonKey(name: 'IDNumber') int? idNumber,
      @JsonKey(name: 'Gender') LookupModel? gender,
      @JsonKey(name: 'Email') String? email,
      @JsonKey(name: 'Email2') String? email2,
      @JsonKey(name: 'Nationality') LookupModel? nationality,
      @JsonKey(name: 'Nationality2') LookupModel? nationality2,
      @JsonKey(name: 'Summary') String? summary,
      @JsonKey(name: 'BirthDate') String? birthDate,
      @JsonKey(name: 'BirthPlace') BirthPlaceModel? birthPlace,
      @JsonKey(name: 'MaritalStatus') LookupModel? maritalStatus,
      @JsonKey(name: 'Military') MilitaryModel? military,
      @JsonKey(name: 'IskurInfo') IskurInfoModel? iskurInfo,
      @JsonKey(name: 'Handicap') HandicapModel? handicap,
      @JsonKey(name: 'Conviction') dynamic conviction,
      @JsonKey(name: 'TerrorismVictim') dynamic terrorismVictim,
      @JsonKey(name: 'LinkedIn') String? linkedin,
      @JsonKey(name: 'EducationStatus') dynamic educationStatus});

  $LookupModelCopyWith<$Res>? get gender;
  $LookupModelCopyWith<$Res>? get nationality;
  $LookupModelCopyWith<$Res>? get nationality2;
  $BirthPlaceModelCopyWith<$Res>? get birthPlace;
  $LookupModelCopyWith<$Res>? get maritalStatus;
  $MilitaryModelCopyWith<$Res>? get military;
  $IskurInfoModelCopyWith<$Res>? get iskurInfo;
  $HandicapModelCopyWith<$Res>? get handicap;
}

/// @nodoc
class _$PersonalDetailsModelCopyWithImpl<$Res,
        $Val extends PersonalDetailsModel>
    implements $PersonalDetailsModelCopyWith<$Res> {
  _$PersonalDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cvID = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? idNumber = freezed,
    Object? gender = freezed,
    Object? email = freezed,
    Object? email2 = freezed,
    Object? nationality = freezed,
    Object? nationality2 = freezed,
    Object? summary = freezed,
    Object? birthDate = freezed,
    Object? birthPlace = freezed,
    Object? maritalStatus = freezed,
    Object? military = freezed,
    Object? iskurInfo = freezed,
    Object? handicap = freezed,
    Object? conviction = freezed,
    Object? terrorismVictim = freezed,
    Object? linkedin = freezed,
    Object? educationStatus = freezed,
  }) {
    return _then(_value.copyWith(
      cvID: freezed == cvID
          ? _value.cvID
          : cvID // ignore: cast_nullable_to_non_nullable
              as int?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      idNumber: freezed == idNumber
          ? _value.idNumber
          : idNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as LookupModel?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      email2: freezed == email2
          ? _value.email2
          : email2 // ignore: cast_nullable_to_non_nullable
              as String?,
      nationality: freezed == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as LookupModel?,
      nationality2: freezed == nationality2
          ? _value.nationality2
          : nationality2 // ignore: cast_nullable_to_non_nullable
              as LookupModel?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      birthPlace: freezed == birthPlace
          ? _value.birthPlace
          : birthPlace // ignore: cast_nullable_to_non_nullable
              as BirthPlaceModel?,
      maritalStatus: freezed == maritalStatus
          ? _value.maritalStatus
          : maritalStatus // ignore: cast_nullable_to_non_nullable
              as LookupModel?,
      military: freezed == military
          ? _value.military
          : military // ignore: cast_nullable_to_non_nullable
              as MilitaryModel?,
      iskurInfo: freezed == iskurInfo
          ? _value.iskurInfo
          : iskurInfo // ignore: cast_nullable_to_non_nullable
              as IskurInfoModel?,
      handicap: freezed == handicap
          ? _value.handicap
          : handicap // ignore: cast_nullable_to_non_nullable
              as HandicapModel?,
      conviction: freezed == conviction
          ? _value.conviction
          : conviction // ignore: cast_nullable_to_non_nullable
              as dynamic,
      terrorismVictim: freezed == terrorismVictim
          ? _value.terrorismVictim
          : terrorismVictim // ignore: cast_nullable_to_non_nullable
              as dynamic,
      linkedin: freezed == linkedin
          ? _value.linkedin
          : linkedin // ignore: cast_nullable_to_non_nullable
              as String?,
      educationStatus: freezed == educationStatus
          ? _value.educationStatus
          : educationStatus // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LookupModelCopyWith<$Res>? get gender {
    if (_value.gender == null) {
      return null;
    }

    return $LookupModelCopyWith<$Res>(_value.gender!, (value) {
      return _then(_value.copyWith(gender: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LookupModelCopyWith<$Res>? get nationality {
    if (_value.nationality == null) {
      return null;
    }

    return $LookupModelCopyWith<$Res>(_value.nationality!, (value) {
      return _then(_value.copyWith(nationality: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LookupModelCopyWith<$Res>? get nationality2 {
    if (_value.nationality2 == null) {
      return null;
    }

    return $LookupModelCopyWith<$Res>(_value.nationality2!, (value) {
      return _then(_value.copyWith(nationality2: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BirthPlaceModelCopyWith<$Res>? get birthPlace {
    if (_value.birthPlace == null) {
      return null;
    }

    return $BirthPlaceModelCopyWith<$Res>(_value.birthPlace!, (value) {
      return _then(_value.copyWith(birthPlace: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LookupModelCopyWith<$Res>? get maritalStatus {
    if (_value.maritalStatus == null) {
      return null;
    }

    return $LookupModelCopyWith<$Res>(_value.maritalStatus!, (value) {
      return _then(_value.copyWith(maritalStatus: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MilitaryModelCopyWith<$Res>? get military {
    if (_value.military == null) {
      return null;
    }

    return $MilitaryModelCopyWith<$Res>(_value.military!, (value) {
      return _then(_value.copyWith(military: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $IskurInfoModelCopyWith<$Res>? get iskurInfo {
    if (_value.iskurInfo == null) {
      return null;
    }

    return $IskurInfoModelCopyWith<$Res>(_value.iskurInfo!, (value) {
      return _then(_value.copyWith(iskurInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HandicapModelCopyWith<$Res>? get handicap {
    if (_value.handicap == null) {
      return null;
    }

    return $HandicapModelCopyWith<$Res>(_value.handicap!, (value) {
      return _then(_value.copyWith(handicap: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PersonalDetailsModelCopyWith<$Res>
    implements $PersonalDetailsModelCopyWith<$Res> {
  factory _$$_PersonalDetailsModelCopyWith(_$_PersonalDetailsModel value,
          $Res Function(_$_PersonalDetailsModel) then) =
      __$$_PersonalDetailsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'CvID') int? cvID,
      @JsonKey(name: 'FirstName') String? firstName,
      @JsonKey(name: 'LastName') String? lastName,
      @JsonKey(name: 'IDNumber') int? idNumber,
      @JsonKey(name: 'Gender') LookupModel? gender,
      @JsonKey(name: 'Email') String? email,
      @JsonKey(name: 'Email2') String? email2,
      @JsonKey(name: 'Nationality') LookupModel? nationality,
      @JsonKey(name: 'Nationality2') LookupModel? nationality2,
      @JsonKey(name: 'Summary') String? summary,
      @JsonKey(name: 'BirthDate') String? birthDate,
      @JsonKey(name: 'BirthPlace') BirthPlaceModel? birthPlace,
      @JsonKey(name: 'MaritalStatus') LookupModel? maritalStatus,
      @JsonKey(name: 'Military') MilitaryModel? military,
      @JsonKey(name: 'IskurInfo') IskurInfoModel? iskurInfo,
      @JsonKey(name: 'Handicap') HandicapModel? handicap,
      @JsonKey(name: 'Conviction') dynamic conviction,
      @JsonKey(name: 'TerrorismVictim') dynamic terrorismVictim,
      @JsonKey(name: 'LinkedIn') String? linkedin,
      @JsonKey(name: 'EducationStatus') dynamic educationStatus});

  @override
  $LookupModelCopyWith<$Res>? get gender;
  @override
  $LookupModelCopyWith<$Res>? get nationality;
  @override
  $LookupModelCopyWith<$Res>? get nationality2;
  @override
  $BirthPlaceModelCopyWith<$Res>? get birthPlace;
  @override
  $LookupModelCopyWith<$Res>? get maritalStatus;
  @override
  $MilitaryModelCopyWith<$Res>? get military;
  @override
  $IskurInfoModelCopyWith<$Res>? get iskurInfo;
  @override
  $HandicapModelCopyWith<$Res>? get handicap;
}

/// @nodoc
class __$$_PersonalDetailsModelCopyWithImpl<$Res>
    extends _$PersonalDetailsModelCopyWithImpl<$Res, _$_PersonalDetailsModel>
    implements _$$_PersonalDetailsModelCopyWith<$Res> {
  __$$_PersonalDetailsModelCopyWithImpl(_$_PersonalDetailsModel _value,
      $Res Function(_$_PersonalDetailsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cvID = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? idNumber = freezed,
    Object? gender = freezed,
    Object? email = freezed,
    Object? email2 = freezed,
    Object? nationality = freezed,
    Object? nationality2 = freezed,
    Object? summary = freezed,
    Object? birthDate = freezed,
    Object? birthPlace = freezed,
    Object? maritalStatus = freezed,
    Object? military = freezed,
    Object? iskurInfo = freezed,
    Object? handicap = freezed,
    Object? conviction = freezed,
    Object? terrorismVictim = freezed,
    Object? linkedin = freezed,
    Object? educationStatus = freezed,
  }) {
    return _then(_$_PersonalDetailsModel(
      cvID: freezed == cvID
          ? _value.cvID
          : cvID // ignore: cast_nullable_to_non_nullable
              as int?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      idNumber: freezed == idNumber
          ? _value.idNumber
          : idNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as LookupModel?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      email2: freezed == email2
          ? _value.email2
          : email2 // ignore: cast_nullable_to_non_nullable
              as String?,
      nationality: freezed == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as LookupModel?,
      nationality2: freezed == nationality2
          ? _value.nationality2
          : nationality2 // ignore: cast_nullable_to_non_nullable
              as LookupModel?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      birthPlace: freezed == birthPlace
          ? _value.birthPlace
          : birthPlace // ignore: cast_nullable_to_non_nullable
              as BirthPlaceModel?,
      maritalStatus: freezed == maritalStatus
          ? _value.maritalStatus
          : maritalStatus // ignore: cast_nullable_to_non_nullable
              as LookupModel?,
      military: freezed == military
          ? _value.military
          : military // ignore: cast_nullable_to_non_nullable
              as MilitaryModel?,
      iskurInfo: freezed == iskurInfo
          ? _value.iskurInfo
          : iskurInfo // ignore: cast_nullable_to_non_nullable
              as IskurInfoModel?,
      handicap: freezed == handicap
          ? _value.handicap
          : handicap // ignore: cast_nullable_to_non_nullable
              as HandicapModel?,
      conviction: freezed == conviction
          ? _value.conviction
          : conviction // ignore: cast_nullable_to_non_nullable
              as dynamic,
      terrorismVictim: freezed == terrorismVictim
          ? _value.terrorismVictim
          : terrorismVictim // ignore: cast_nullable_to_non_nullable
              as dynamic,
      linkedin: freezed == linkedin
          ? _value.linkedin
          : linkedin // ignore: cast_nullable_to_non_nullable
              as String?,
      educationStatus: freezed == educationStatus
          ? _value.educationStatus
          : educationStatus // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PersonalDetailsModel implements _PersonalDetailsModel {
  _$_PersonalDetailsModel(
      {@JsonKey(name: 'CvID') this.cvID,
      @JsonKey(name: 'FirstName') this.firstName,
      @JsonKey(name: 'LastName') this.lastName,
      @JsonKey(name: 'IDNumber') this.idNumber,
      @JsonKey(name: 'Gender') this.gender,
      @JsonKey(name: 'Email') this.email,
      @JsonKey(name: 'Email2') this.email2,
      @JsonKey(name: 'Nationality') this.nationality,
      @JsonKey(name: 'Nationality2') this.nationality2,
      @JsonKey(name: 'Summary') this.summary,
      @JsonKey(name: 'BirthDate') this.birthDate,
      @JsonKey(name: 'BirthPlace') this.birthPlace,
      @JsonKey(name: 'MaritalStatus') this.maritalStatus,
      @JsonKey(name: 'Military') this.military,
      @JsonKey(name: 'IskurInfo') this.iskurInfo,
      @JsonKey(name: 'Handicap') this.handicap,
      @JsonKey(name: 'Conviction') this.conviction,
      @JsonKey(name: 'TerrorismVictim') this.terrorismVictim,
      @JsonKey(name: 'LinkedIn') this.linkedin,
      @JsonKey(name: 'EducationStatus') this.educationStatus});

  factory _$_PersonalDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$$_PersonalDetailsModelFromJson(json);

  @override
  @JsonKey(name: 'CvID')
  final int? cvID;
  @override
  @JsonKey(name: 'FirstName')
  final String? firstName;
  @override
  @JsonKey(name: 'LastName')
  final String? lastName;
  @override
  @JsonKey(name: 'IDNumber')
  final int? idNumber;
  @override
  @JsonKey(name: 'Gender')
  final LookupModel? gender;
  @override
  @JsonKey(name: 'Email')
  final String? email;
  @override
  @JsonKey(name: 'Email2')
  final String? email2;
  @override
  @JsonKey(name: 'Nationality')
  final LookupModel? nationality;
  @override
  @JsonKey(name: 'Nationality2')
  final LookupModel? nationality2;
  @override
  @JsonKey(name: 'Summary')
  final String? summary;
  @override
  @JsonKey(name: 'BirthDate')
  final String? birthDate;
  @override
  @JsonKey(name: 'BirthPlace')
  final BirthPlaceModel? birthPlace;
  @override
  @JsonKey(name: 'MaritalStatus')
  final LookupModel? maritalStatus;
  @override
  @JsonKey(name: 'Military')
  final MilitaryModel? military;
  @override
  @JsonKey(name: 'IskurInfo')
  final IskurInfoModel? iskurInfo;
  @override
  @JsonKey(name: 'Handicap')
  final HandicapModel? handicap;
  @override
  @JsonKey(name: 'Conviction')
  final dynamic conviction;
  @override
  @JsonKey(name: 'TerrorismVictim')
  final dynamic terrorismVictim;
  @override
  @JsonKey(name: 'LinkedIn')
  final String? linkedin;
  @override
  @JsonKey(name: 'EducationStatus')
  final dynamic educationStatus;

  @override
  String toString() {
    return 'PersonalDetailsModel(cvID: $cvID, firstName: $firstName, lastName: $lastName, idNumber: $idNumber, gender: $gender, email: $email, email2: $email2, nationality: $nationality, nationality2: $nationality2, summary: $summary, birthDate: $birthDate, birthPlace: $birthPlace, maritalStatus: $maritalStatus, military: $military, iskurInfo: $iskurInfo, handicap: $handicap, conviction: $conviction, terrorismVictim: $terrorismVictim, linkedin: $linkedin, educationStatus: $educationStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersonalDetailsModel &&
            (identical(other.cvID, cvID) || other.cvID == cvID) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.idNumber, idNumber) ||
                other.idNumber == idNumber) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.email2, email2) || other.email2 == email2) &&
            (identical(other.nationality, nationality) ||
                other.nationality == nationality) &&
            (identical(other.nationality2, nationality2) ||
                other.nationality2 == nationality2) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.birthPlace, birthPlace) ||
                other.birthPlace == birthPlace) &&
            (identical(other.maritalStatus, maritalStatus) ||
                other.maritalStatus == maritalStatus) &&
            (identical(other.military, military) ||
                other.military == military) &&
            (identical(other.iskurInfo, iskurInfo) ||
                other.iskurInfo == iskurInfo) &&
            (identical(other.handicap, handicap) ||
                other.handicap == handicap) &&
            const DeepCollectionEquality()
                .equals(other.conviction, conviction) &&
            const DeepCollectionEquality()
                .equals(other.terrorismVictim, terrorismVictim) &&
            (identical(other.linkedin, linkedin) ||
                other.linkedin == linkedin) &&
            const DeepCollectionEquality()
                .equals(other.educationStatus, educationStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        cvID,
        firstName,
        lastName,
        idNumber,
        gender,
        email,
        email2,
        nationality,
        nationality2,
        summary,
        birthDate,
        birthPlace,
        maritalStatus,
        military,
        iskurInfo,
        handicap,
        const DeepCollectionEquality().hash(conviction),
        const DeepCollectionEquality().hash(terrorismVictim),
        linkedin,
        const DeepCollectionEquality().hash(educationStatus)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PersonalDetailsModelCopyWith<_$_PersonalDetailsModel> get copyWith =>
      __$$_PersonalDetailsModelCopyWithImpl<_$_PersonalDetailsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PersonalDetailsModelToJson(
      this,
    );
  }
}

abstract class _PersonalDetailsModel implements PersonalDetailsModel {
  factory _PersonalDetailsModel(
          {@JsonKey(name: 'CvID') final int? cvID,
          @JsonKey(name: 'FirstName') final String? firstName,
          @JsonKey(name: 'LastName') final String? lastName,
          @JsonKey(name: 'IDNumber') final int? idNumber,
          @JsonKey(name: 'Gender') final LookupModel? gender,
          @JsonKey(name: 'Email') final String? email,
          @JsonKey(name: 'Email2') final String? email2,
          @JsonKey(name: 'Nationality') final LookupModel? nationality,
          @JsonKey(name: 'Nationality2') final LookupModel? nationality2,
          @JsonKey(name: 'Summary') final String? summary,
          @JsonKey(name: 'BirthDate') final String? birthDate,
          @JsonKey(name: 'BirthPlace') final BirthPlaceModel? birthPlace,
          @JsonKey(name: 'MaritalStatus') final LookupModel? maritalStatus,
          @JsonKey(name: 'Military') final MilitaryModel? military,
          @JsonKey(name: 'IskurInfo') final IskurInfoModel? iskurInfo,
          @JsonKey(name: 'Handicap') final HandicapModel? handicap,
          @JsonKey(name: 'Conviction') final dynamic conviction,
          @JsonKey(name: 'TerrorismVictim') final dynamic terrorismVictim,
          @JsonKey(name: 'LinkedIn') final String? linkedin,
          @JsonKey(name: 'EducationStatus') final dynamic educationStatus}) =
      _$_PersonalDetailsModel;

  factory _PersonalDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_PersonalDetailsModel.fromJson;

  @override
  @JsonKey(name: 'CvID')
  int? get cvID;
  @override
  @JsonKey(name: 'FirstName')
  String? get firstName;
  @override
  @JsonKey(name: 'LastName')
  String? get lastName;
  @override
  @JsonKey(name: 'IDNumber')
  int? get idNumber;
  @override
  @JsonKey(name: 'Gender')
  LookupModel? get gender;
  @override
  @JsonKey(name: 'Email')
  String? get email;
  @override
  @JsonKey(name: 'Email2')
  String? get email2;
  @override
  @JsonKey(name: 'Nationality')
  LookupModel? get nationality;
  @override
  @JsonKey(name: 'Nationality2')
  LookupModel? get nationality2;
  @override
  @JsonKey(name: 'Summary')
  String? get summary;
  @override
  @JsonKey(name: 'BirthDate')
  String? get birthDate;
  @override
  @JsonKey(name: 'BirthPlace')
  BirthPlaceModel? get birthPlace;
  @override
  @JsonKey(name: 'MaritalStatus')
  LookupModel? get maritalStatus;
  @override
  @JsonKey(name: 'Military')
  MilitaryModel? get military;
  @override
  @JsonKey(name: 'IskurInfo')
  IskurInfoModel? get iskurInfo;
  @override
  @JsonKey(name: 'Handicap')
  HandicapModel? get handicap;
  @override
  @JsonKey(name: 'Conviction')
  dynamic get conviction;
  @override
  @JsonKey(name: 'TerrorismVictim')
  dynamic get terrorismVictim;
  @override
  @JsonKey(name: 'LinkedIn')
  String? get linkedin;
  @override
  @JsonKey(name: 'EducationStatus')
  dynamic get educationStatus;
  @override
  @JsonKey(ignore: true)
  _$$_PersonalDetailsModelCopyWith<_$_PersonalDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
