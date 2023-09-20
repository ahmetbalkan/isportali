// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'secrecy_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SecrecyModel _$SecrecyModelFromJson(Map<String, dynamic> json) {
  return _SecrecyModel.fromJson(json);
}

/// @nodoc
mixin _$SecrecyModel {
  @JsonKey(name: 'CvID')
  int? get cvID => throw _privateConstructorUsedError;
  @JsonKey(name: 'HideCurrentCompany')
  bool? get hideCurrentCompany => throw _privateConstructorUsedError;
  @JsonKey(name: 'HideCommunicationInfo')
  bool? get hideCommunicationInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'HideReferences')
  bool? get hideReferences => throw _privateConstructorUsedError;
  @JsonKey(name: 'BlacklistedCompanyList')
  List<dynamic>? get blacklistedCompanyList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SecrecyModelCopyWith<SecrecyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecrecyModelCopyWith<$Res> {
  factory $SecrecyModelCopyWith(
          SecrecyModel value, $Res Function(SecrecyModel) then) =
      _$SecrecyModelCopyWithImpl<$Res, SecrecyModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'CvID')
          int? cvID,
      @JsonKey(name: 'HideCurrentCompany')
          bool? hideCurrentCompany,
      @JsonKey(name: 'HideCommunicationInfo')
          bool? hideCommunicationInfo,
      @JsonKey(name: 'HideReferences')
          bool? hideReferences,
      @JsonKey(name: 'BlacklistedCompanyList')
          List<dynamic>? blacklistedCompanyList});
}

/// @nodoc
class _$SecrecyModelCopyWithImpl<$Res, $Val extends SecrecyModel>
    implements $SecrecyModelCopyWith<$Res> {
  _$SecrecyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cvID = freezed,
    Object? hideCurrentCompany = freezed,
    Object? hideCommunicationInfo = freezed,
    Object? hideReferences = freezed,
    Object? blacklistedCompanyList = freezed,
  }) {
    return _then(_value.copyWith(
      cvID: freezed == cvID
          ? _value.cvID
          : cvID // ignore: cast_nullable_to_non_nullable
              as int?,
      hideCurrentCompany: freezed == hideCurrentCompany
          ? _value.hideCurrentCompany
          : hideCurrentCompany // ignore: cast_nullable_to_non_nullable
              as bool?,
      hideCommunicationInfo: freezed == hideCommunicationInfo
          ? _value.hideCommunicationInfo
          : hideCommunicationInfo // ignore: cast_nullable_to_non_nullable
              as bool?,
      hideReferences: freezed == hideReferences
          ? _value.hideReferences
          : hideReferences // ignore: cast_nullable_to_non_nullable
              as bool?,
      blacklistedCompanyList: freezed == blacklistedCompanyList
          ? _value.blacklistedCompanyList
          : blacklistedCompanyList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SecrecyModelCopyWith<$Res>
    implements $SecrecyModelCopyWith<$Res> {
  factory _$$_SecrecyModelCopyWith(
          _$_SecrecyModel value, $Res Function(_$_SecrecyModel) then) =
      __$$_SecrecyModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'CvID')
          int? cvID,
      @JsonKey(name: 'HideCurrentCompany')
          bool? hideCurrentCompany,
      @JsonKey(name: 'HideCommunicationInfo')
          bool? hideCommunicationInfo,
      @JsonKey(name: 'HideReferences')
          bool? hideReferences,
      @JsonKey(name: 'BlacklistedCompanyList')
          List<dynamic>? blacklistedCompanyList});
}

/// @nodoc
class __$$_SecrecyModelCopyWithImpl<$Res>
    extends _$SecrecyModelCopyWithImpl<$Res, _$_SecrecyModel>
    implements _$$_SecrecyModelCopyWith<$Res> {
  __$$_SecrecyModelCopyWithImpl(
      _$_SecrecyModel _value, $Res Function(_$_SecrecyModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cvID = freezed,
    Object? hideCurrentCompany = freezed,
    Object? hideCommunicationInfo = freezed,
    Object? hideReferences = freezed,
    Object? blacklistedCompanyList = freezed,
  }) {
    return _then(_$_SecrecyModel(
      cvID: freezed == cvID
          ? _value.cvID
          : cvID // ignore: cast_nullable_to_non_nullable
              as int?,
      hideCurrentCompany: freezed == hideCurrentCompany
          ? _value.hideCurrentCompany
          : hideCurrentCompany // ignore: cast_nullable_to_non_nullable
              as bool?,
      hideCommunicationInfo: freezed == hideCommunicationInfo
          ? _value.hideCommunicationInfo
          : hideCommunicationInfo // ignore: cast_nullable_to_non_nullable
              as bool?,
      hideReferences: freezed == hideReferences
          ? _value.hideReferences
          : hideReferences // ignore: cast_nullable_to_non_nullable
              as bool?,
      blacklistedCompanyList: freezed == blacklistedCompanyList
          ? _value._blacklistedCompanyList
          : blacklistedCompanyList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SecrecyModel implements _SecrecyModel {
  _$_SecrecyModel(
      {@JsonKey(name: 'CvID')
          this.cvID,
      @JsonKey(name: 'HideCurrentCompany')
          this.hideCurrentCompany,
      @JsonKey(name: 'HideCommunicationInfo')
          this.hideCommunicationInfo,
      @JsonKey(name: 'HideReferences')
          this.hideReferences,
      @JsonKey(name: 'BlacklistedCompanyList')
          final List<dynamic>? blacklistedCompanyList})
      : _blacklistedCompanyList = blacklistedCompanyList;

  factory _$_SecrecyModel.fromJson(Map<String, dynamic> json) =>
      _$$_SecrecyModelFromJson(json);

  @override
  @JsonKey(name: 'CvID')
  final int? cvID;
  @override
  @JsonKey(name: 'HideCurrentCompany')
  final bool? hideCurrentCompany;
  @override
  @JsonKey(name: 'HideCommunicationInfo')
  final bool? hideCommunicationInfo;
  @override
  @JsonKey(name: 'HideReferences')
  final bool? hideReferences;
  final List<dynamic>? _blacklistedCompanyList;
  @override
  @JsonKey(name: 'BlacklistedCompanyList')
  List<dynamic>? get blacklistedCompanyList {
    final value = _blacklistedCompanyList;
    if (value == null) return null;
    if (_blacklistedCompanyList is EqualUnmodifiableListView)
      return _blacklistedCompanyList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SecrecyModel(cvID: $cvID, hideCurrentCompany: $hideCurrentCompany, hideCommunicationInfo: $hideCommunicationInfo, hideReferences: $hideReferences, blacklistedCompanyList: $blacklistedCompanyList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SecrecyModel &&
            (identical(other.cvID, cvID) || other.cvID == cvID) &&
            (identical(other.hideCurrentCompany, hideCurrentCompany) ||
                other.hideCurrentCompany == hideCurrentCompany) &&
            (identical(other.hideCommunicationInfo, hideCommunicationInfo) ||
                other.hideCommunicationInfo == hideCommunicationInfo) &&
            (identical(other.hideReferences, hideReferences) ||
                other.hideReferences == hideReferences) &&
            const DeepCollectionEquality().equals(
                other._blacklistedCompanyList, _blacklistedCompanyList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      cvID,
      hideCurrentCompany,
      hideCommunicationInfo,
      hideReferences,
      const DeepCollectionEquality().hash(_blacklistedCompanyList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SecrecyModelCopyWith<_$_SecrecyModel> get copyWith =>
      __$$_SecrecyModelCopyWithImpl<_$_SecrecyModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SecrecyModelToJson(
      this,
    );
  }
}

abstract class _SecrecyModel implements SecrecyModel {
  factory _SecrecyModel(
      {@JsonKey(name: 'CvID')
          final int? cvID,
      @JsonKey(name: 'HideCurrentCompany')
          final bool? hideCurrentCompany,
      @JsonKey(name: 'HideCommunicationInfo')
          final bool? hideCommunicationInfo,
      @JsonKey(name: 'HideReferences')
          final bool? hideReferences,
      @JsonKey(name: 'BlacklistedCompanyList')
          final List<dynamic>? blacklistedCompanyList}) = _$_SecrecyModel;

  factory _SecrecyModel.fromJson(Map<String, dynamic> json) =
      _$_SecrecyModel.fromJson;

  @override
  @JsonKey(name: 'CvID')
  int? get cvID;
  @override
  @JsonKey(name: 'HideCurrentCompany')
  bool? get hideCurrentCompany;
  @override
  @JsonKey(name: 'HideCommunicationInfo')
  bool? get hideCommunicationInfo;
  @override
  @JsonKey(name: 'HideReferences')
  bool? get hideReferences;
  @override
  @JsonKey(name: 'BlacklistedCompanyList')
  List<dynamic>? get blacklistedCompanyList;
  @override
  @JsonKey(ignore: true)
  _$$_SecrecyModelCopyWith<_$_SecrecyModel> get copyWith =>
      throw _privateConstructorUsedError;
}
