// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preferences_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PreferencesModel _$PreferencesModelFromJson(Map<String, dynamic> json) {
  return _PreferencesModel.fromJson(json);
}

/// @nodoc
mixin _$PreferencesModel {
  @JsonKey(name: 'ID')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'CvID')
  int? get cvID => throw _privateConstructorUsedError;
  @JsonKey(name: 'CountryList')
  List<CountryModel>? get countryList => throw _privateConstructorUsedError;
  @JsonKey(name: 'CityList')
  List<CityModel>? get cityList => throw _privateConstructorUsedError;
  @JsonKey(name: 'SectorList')
  List<CvDataModel>? get sectorList => throw _privateConstructorUsedError;
  @JsonKey(name: 'JobCategoryList')
  List<CvDataModel>? get jobCategoryList => throw _privateConstructorUsedError;
  @JsonKey(name: 'PositionList')
  List<CvDataModel>? get positionList => throw _privateConstructorUsedError;
  @JsonKey(name: 'OrganizationalLevelList')
  List<CvDataModel>? get organizationalLevelList =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'JobStatusList')
  List<CvDataModel>? get jobStatusList => throw _privateConstructorUsedError;
  @JsonKey(name: 'ContactChoice')
  String? get contactChoice => throw _privateConstructorUsedError;
  @JsonKey(name: 'SalaryExpectation')
  SalaryExpectationModel? get salaryExpectation =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'OtherExpectations')
  String? get otherExpectations => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PreferencesModelCopyWith<PreferencesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreferencesModelCopyWith<$Res> {
  factory $PreferencesModelCopyWith(
          PreferencesModel value, $Res Function(PreferencesModel) then) =
      _$PreferencesModelCopyWithImpl<$Res, PreferencesModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ID')
          int? id,
      @JsonKey(name: 'CvID')
          int? cvID,
      @JsonKey(name: 'CountryList')
          List<CountryModel>? countryList,
      @JsonKey(name: 'CityList')
          List<CityModel>? cityList,
      @JsonKey(name: 'SectorList')
          List<CvDataModel>? sectorList,
      @JsonKey(name: 'JobCategoryList')
          List<CvDataModel>? jobCategoryList,
      @JsonKey(name: 'PositionList')
          List<CvDataModel>? positionList,
      @JsonKey(name: 'OrganizationalLevelList')
          List<CvDataModel>? organizationalLevelList,
      @JsonKey(name: 'JobStatusList')
          List<CvDataModel>? jobStatusList,
      @JsonKey(name: 'ContactChoice')
          String? contactChoice,
      @JsonKey(name: 'SalaryExpectation')
          SalaryExpectationModel? salaryExpectation,
      @JsonKey(name: 'OtherExpectations')
          String? otherExpectations});

  $SalaryExpectationModelCopyWith<$Res>? get salaryExpectation;
}

/// @nodoc
class _$PreferencesModelCopyWithImpl<$Res, $Val extends PreferencesModel>
    implements $PreferencesModelCopyWith<$Res> {
  _$PreferencesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? cvID = freezed,
    Object? countryList = freezed,
    Object? cityList = freezed,
    Object? sectorList = freezed,
    Object? jobCategoryList = freezed,
    Object? positionList = freezed,
    Object? organizationalLevelList = freezed,
    Object? jobStatusList = freezed,
    Object? contactChoice = freezed,
    Object? salaryExpectation = freezed,
    Object? otherExpectations = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      cvID: freezed == cvID
          ? _value.cvID
          : cvID // ignore: cast_nullable_to_non_nullable
              as int?,
      countryList: freezed == countryList
          ? _value.countryList
          : countryList // ignore: cast_nullable_to_non_nullable
              as List<CountryModel>?,
      cityList: freezed == cityList
          ? _value.cityList
          : cityList // ignore: cast_nullable_to_non_nullable
              as List<CityModel>?,
      sectorList: freezed == sectorList
          ? _value.sectorList
          : sectorList // ignore: cast_nullable_to_non_nullable
              as List<CvDataModel>?,
      jobCategoryList: freezed == jobCategoryList
          ? _value.jobCategoryList
          : jobCategoryList // ignore: cast_nullable_to_non_nullable
              as List<CvDataModel>?,
      positionList: freezed == positionList
          ? _value.positionList
          : positionList // ignore: cast_nullable_to_non_nullable
              as List<CvDataModel>?,
      organizationalLevelList: freezed == organizationalLevelList
          ? _value.organizationalLevelList
          : organizationalLevelList // ignore: cast_nullable_to_non_nullable
              as List<CvDataModel>?,
      jobStatusList: freezed == jobStatusList
          ? _value.jobStatusList
          : jobStatusList // ignore: cast_nullable_to_non_nullable
              as List<CvDataModel>?,
      contactChoice: freezed == contactChoice
          ? _value.contactChoice
          : contactChoice // ignore: cast_nullable_to_non_nullable
              as String?,
      salaryExpectation: freezed == salaryExpectation
          ? _value.salaryExpectation
          : salaryExpectation // ignore: cast_nullable_to_non_nullable
              as SalaryExpectationModel?,
      otherExpectations: freezed == otherExpectations
          ? _value.otherExpectations
          : otherExpectations // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SalaryExpectationModelCopyWith<$Res>? get salaryExpectation {
    if (_value.salaryExpectation == null) {
      return null;
    }

    return $SalaryExpectationModelCopyWith<$Res>(_value.salaryExpectation!,
        (value) {
      return _then(_value.copyWith(salaryExpectation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PreferencesModelCopyWith<$Res>
    implements $PreferencesModelCopyWith<$Res> {
  factory _$$_PreferencesModelCopyWith(
          _$_PreferencesModel value, $Res Function(_$_PreferencesModel) then) =
      __$$_PreferencesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ID')
          int? id,
      @JsonKey(name: 'CvID')
          int? cvID,
      @JsonKey(name: 'CountryList')
          List<CountryModel>? countryList,
      @JsonKey(name: 'CityList')
          List<CityModel>? cityList,
      @JsonKey(name: 'SectorList')
          List<CvDataModel>? sectorList,
      @JsonKey(name: 'JobCategoryList')
          List<CvDataModel>? jobCategoryList,
      @JsonKey(name: 'PositionList')
          List<CvDataModel>? positionList,
      @JsonKey(name: 'OrganizationalLevelList')
          List<CvDataModel>? organizationalLevelList,
      @JsonKey(name: 'JobStatusList')
          List<CvDataModel>? jobStatusList,
      @JsonKey(name: 'ContactChoice')
          String? contactChoice,
      @JsonKey(name: 'SalaryExpectation')
          SalaryExpectationModel? salaryExpectation,
      @JsonKey(name: 'OtherExpectations')
          String? otherExpectations});

  @override
  $SalaryExpectationModelCopyWith<$Res>? get salaryExpectation;
}

/// @nodoc
class __$$_PreferencesModelCopyWithImpl<$Res>
    extends _$PreferencesModelCopyWithImpl<$Res, _$_PreferencesModel>
    implements _$$_PreferencesModelCopyWith<$Res> {
  __$$_PreferencesModelCopyWithImpl(
      _$_PreferencesModel _value, $Res Function(_$_PreferencesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? cvID = freezed,
    Object? countryList = freezed,
    Object? cityList = freezed,
    Object? sectorList = freezed,
    Object? jobCategoryList = freezed,
    Object? positionList = freezed,
    Object? organizationalLevelList = freezed,
    Object? jobStatusList = freezed,
    Object? contactChoice = freezed,
    Object? salaryExpectation = freezed,
    Object? otherExpectations = freezed,
  }) {
    return _then(_$_PreferencesModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      cvID: freezed == cvID
          ? _value.cvID
          : cvID // ignore: cast_nullable_to_non_nullable
              as int?,
      countryList: freezed == countryList
          ? _value._countryList
          : countryList // ignore: cast_nullable_to_non_nullable
              as List<CountryModel>?,
      cityList: freezed == cityList
          ? _value._cityList
          : cityList // ignore: cast_nullable_to_non_nullable
              as List<CityModel>?,
      sectorList: freezed == sectorList
          ? _value._sectorList
          : sectorList // ignore: cast_nullable_to_non_nullable
              as List<CvDataModel>?,
      jobCategoryList: freezed == jobCategoryList
          ? _value._jobCategoryList
          : jobCategoryList // ignore: cast_nullable_to_non_nullable
              as List<CvDataModel>?,
      positionList: freezed == positionList
          ? _value._positionList
          : positionList // ignore: cast_nullable_to_non_nullable
              as List<CvDataModel>?,
      organizationalLevelList: freezed == organizationalLevelList
          ? _value._organizationalLevelList
          : organizationalLevelList // ignore: cast_nullable_to_non_nullable
              as List<CvDataModel>?,
      jobStatusList: freezed == jobStatusList
          ? _value._jobStatusList
          : jobStatusList // ignore: cast_nullable_to_non_nullable
              as List<CvDataModel>?,
      contactChoice: freezed == contactChoice
          ? _value.contactChoice
          : contactChoice // ignore: cast_nullable_to_non_nullable
              as String?,
      salaryExpectation: freezed == salaryExpectation
          ? _value.salaryExpectation
          : salaryExpectation // ignore: cast_nullable_to_non_nullable
              as SalaryExpectationModel?,
      otherExpectations: freezed == otherExpectations
          ? _value.otherExpectations
          : otherExpectations // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PreferencesModel implements _PreferencesModel {
  _$_PreferencesModel(
      {@JsonKey(name: 'ID')
          this.id,
      @JsonKey(name: 'CvID')
          this.cvID,
      @JsonKey(name: 'CountryList')
          final List<CountryModel>? countryList,
      @JsonKey(name: 'CityList')
          final List<CityModel>? cityList,
      @JsonKey(name: 'SectorList')
          final List<CvDataModel>? sectorList,
      @JsonKey(name: 'JobCategoryList')
          final List<CvDataModel>? jobCategoryList,
      @JsonKey(name: 'PositionList')
          final List<CvDataModel>? positionList,
      @JsonKey(name: 'OrganizationalLevelList')
          final List<CvDataModel>? organizationalLevelList,
      @JsonKey(name: 'JobStatusList')
          final List<CvDataModel>? jobStatusList,
      @JsonKey(name: 'ContactChoice')
          this.contactChoice,
      @JsonKey(name: 'SalaryExpectation')
          this.salaryExpectation,
      @JsonKey(name: 'OtherExpectations')
          this.otherExpectations})
      : _countryList = countryList,
        _cityList = cityList,
        _sectorList = sectorList,
        _jobCategoryList = jobCategoryList,
        _positionList = positionList,
        _organizationalLevelList = organizationalLevelList,
        _jobStatusList = jobStatusList;

  factory _$_PreferencesModel.fromJson(Map<String, dynamic> json) =>
      _$$_PreferencesModelFromJson(json);

  @override
  @JsonKey(name: 'ID')
  final int? id;
  @override
  @JsonKey(name: 'CvID')
  final int? cvID;
  final List<CountryModel>? _countryList;
  @override
  @JsonKey(name: 'CountryList')
  List<CountryModel>? get countryList {
    final value = _countryList;
    if (value == null) return null;
    if (_countryList is EqualUnmodifiableListView) return _countryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CityModel>? _cityList;
  @override
  @JsonKey(name: 'CityList')
  List<CityModel>? get cityList {
    final value = _cityList;
    if (value == null) return null;
    if (_cityList is EqualUnmodifiableListView) return _cityList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CvDataModel>? _sectorList;
  @override
  @JsonKey(name: 'SectorList')
  List<CvDataModel>? get sectorList {
    final value = _sectorList;
    if (value == null) return null;
    if (_sectorList is EqualUnmodifiableListView) return _sectorList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CvDataModel>? _jobCategoryList;
  @override
  @JsonKey(name: 'JobCategoryList')
  List<CvDataModel>? get jobCategoryList {
    final value = _jobCategoryList;
    if (value == null) return null;
    if (_jobCategoryList is EqualUnmodifiableListView) return _jobCategoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CvDataModel>? _positionList;
  @override
  @JsonKey(name: 'PositionList')
  List<CvDataModel>? get positionList {
    final value = _positionList;
    if (value == null) return null;
    if (_positionList is EqualUnmodifiableListView) return _positionList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CvDataModel>? _organizationalLevelList;
  @override
  @JsonKey(name: 'OrganizationalLevelList')
  List<CvDataModel>? get organizationalLevelList {
    final value = _organizationalLevelList;
    if (value == null) return null;
    if (_organizationalLevelList is EqualUnmodifiableListView)
      return _organizationalLevelList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CvDataModel>? _jobStatusList;
  @override
  @JsonKey(name: 'JobStatusList')
  List<CvDataModel>? get jobStatusList {
    final value = _jobStatusList;
    if (value == null) return null;
    if (_jobStatusList is EqualUnmodifiableListView) return _jobStatusList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'ContactChoice')
  final String? contactChoice;
  @override
  @JsonKey(name: 'SalaryExpectation')
  final SalaryExpectationModel? salaryExpectation;
  @override
  @JsonKey(name: 'OtherExpectations')
  final String? otherExpectations;

  @override
  String toString() {
    return 'PreferencesModel(id: $id, cvID: $cvID, countryList: $countryList, cityList: $cityList, sectorList: $sectorList, jobCategoryList: $jobCategoryList, positionList: $positionList, organizationalLevelList: $organizationalLevelList, jobStatusList: $jobStatusList, contactChoice: $contactChoice, salaryExpectation: $salaryExpectation, otherExpectations: $otherExpectations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PreferencesModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.cvID, cvID) || other.cvID == cvID) &&
            const DeepCollectionEquality()
                .equals(other._countryList, _countryList) &&
            const DeepCollectionEquality().equals(other._cityList, _cityList) &&
            const DeepCollectionEquality()
                .equals(other._sectorList, _sectorList) &&
            const DeepCollectionEquality()
                .equals(other._jobCategoryList, _jobCategoryList) &&
            const DeepCollectionEquality()
                .equals(other._positionList, _positionList) &&
            const DeepCollectionEquality().equals(
                other._organizationalLevelList, _organizationalLevelList) &&
            const DeepCollectionEquality()
                .equals(other._jobStatusList, _jobStatusList) &&
            (identical(other.contactChoice, contactChoice) ||
                other.contactChoice == contactChoice) &&
            (identical(other.salaryExpectation, salaryExpectation) ||
                other.salaryExpectation == salaryExpectation) &&
            (identical(other.otherExpectations, otherExpectations) ||
                other.otherExpectations == otherExpectations));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      cvID,
      const DeepCollectionEquality().hash(_countryList),
      const DeepCollectionEquality().hash(_cityList),
      const DeepCollectionEquality().hash(_sectorList),
      const DeepCollectionEquality().hash(_jobCategoryList),
      const DeepCollectionEquality().hash(_positionList),
      const DeepCollectionEquality().hash(_organizationalLevelList),
      const DeepCollectionEquality().hash(_jobStatusList),
      contactChoice,
      salaryExpectation,
      otherExpectations);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PreferencesModelCopyWith<_$_PreferencesModel> get copyWith =>
      __$$_PreferencesModelCopyWithImpl<_$_PreferencesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PreferencesModelToJson(
      this,
    );
  }
}

abstract class _PreferencesModel implements PreferencesModel {
  factory _PreferencesModel(
      {@JsonKey(name: 'ID')
          final int? id,
      @JsonKey(name: 'CvID')
          final int? cvID,
      @JsonKey(name: 'CountryList')
          final List<CountryModel>? countryList,
      @JsonKey(name: 'CityList')
          final List<CityModel>? cityList,
      @JsonKey(name: 'SectorList')
          final List<CvDataModel>? sectorList,
      @JsonKey(name: 'JobCategoryList')
          final List<CvDataModel>? jobCategoryList,
      @JsonKey(name: 'PositionList')
          final List<CvDataModel>? positionList,
      @JsonKey(name: 'OrganizationalLevelList')
          final List<CvDataModel>? organizationalLevelList,
      @JsonKey(name: 'JobStatusList')
          final List<CvDataModel>? jobStatusList,
      @JsonKey(name: 'ContactChoice')
          final String? contactChoice,
      @JsonKey(name: 'SalaryExpectation')
          final SalaryExpectationModel? salaryExpectation,
      @JsonKey(name: 'OtherExpectations')
          final String? otherExpectations}) = _$_PreferencesModel;

  factory _PreferencesModel.fromJson(Map<String, dynamic> json) =
      _$_PreferencesModel.fromJson;

  @override
  @JsonKey(name: 'ID')
  int? get id;
  @override
  @JsonKey(name: 'CvID')
  int? get cvID;
  @override
  @JsonKey(name: 'CountryList')
  List<CountryModel>? get countryList;
  @override
  @JsonKey(name: 'CityList')
  List<CityModel>? get cityList;
  @override
  @JsonKey(name: 'SectorList')
  List<CvDataModel>? get sectorList;
  @override
  @JsonKey(name: 'JobCategoryList')
  List<CvDataModel>? get jobCategoryList;
  @override
  @JsonKey(name: 'PositionList')
  List<CvDataModel>? get positionList;
  @override
  @JsonKey(name: 'OrganizationalLevelList')
  List<CvDataModel>? get organizationalLevelList;
  @override
  @JsonKey(name: 'JobStatusList')
  List<CvDataModel>? get jobStatusList;
  @override
  @JsonKey(name: 'ContactChoice')
  String? get contactChoice;
  @override
  @JsonKey(name: 'SalaryExpectation')
  SalaryExpectationModel? get salaryExpectation;
  @override
  @JsonKey(name: 'OtherExpectations')
  String? get otherExpectations;
  @override
  @JsonKey(ignore: true)
  _$$_PreferencesModelCopyWith<_$_PreferencesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
