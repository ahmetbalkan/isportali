// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'membership_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MembershipInfo _$MembershipInfoFromJson(Map<String, dynamic> json) {
  return _MembershipInfo.fromJson(json);
}

/// @nodoc
mixin _$MembershipInfo {
  @JsonKey(name: 'UserID')
  int? get userID => throw _privateConstructorUsedError;
  @JsonKey(name: 'CvIDList')
  List<int>? get cvIDList => throw _privateConstructorUsedError;
  @JsonKey(name: 'FirstName')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'LastName')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'Email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'Sex')
  int? get sex => throw _privateConstructorUsedError;
  @JsonKey(name: 'PhotoUrl')
  String? get photoUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MembershipInfoCopyWith<MembershipInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MembershipInfoCopyWith<$Res> {
  factory $MembershipInfoCopyWith(
          MembershipInfo value, $Res Function(MembershipInfo) then) =
      _$MembershipInfoCopyWithImpl<$Res, MembershipInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'UserID') int? userID,
      @JsonKey(name: 'CvIDList') List<int>? cvIDList,
      @JsonKey(name: 'FirstName') String? firstName,
      @JsonKey(name: 'LastName') String? lastName,
      @JsonKey(name: 'Email') String? email,
      @JsonKey(name: 'Sex') int? sex,
      @JsonKey(name: 'PhotoUrl') String? photoUrl});
}

/// @nodoc
class _$MembershipInfoCopyWithImpl<$Res, $Val extends MembershipInfo>
    implements $MembershipInfoCopyWith<$Res> {
  _$MembershipInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = freezed,
    Object? cvIDList = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? sex = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_value.copyWith(
      userID: freezed == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as int?,
      cvIDList: freezed == cvIDList
          ? _value.cvIDList
          : cvIDList // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      sex: freezed == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as int?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MembershipInfoCopyWith<$Res>
    implements $MembershipInfoCopyWith<$Res> {
  factory _$$_MembershipInfoCopyWith(
          _$_MembershipInfo value, $Res Function(_$_MembershipInfo) then) =
      __$$_MembershipInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'UserID') int? userID,
      @JsonKey(name: 'CvIDList') List<int>? cvIDList,
      @JsonKey(name: 'FirstName') String? firstName,
      @JsonKey(name: 'LastName') String? lastName,
      @JsonKey(name: 'Email') String? email,
      @JsonKey(name: 'Sex') int? sex,
      @JsonKey(name: 'PhotoUrl') String? photoUrl});
}

/// @nodoc
class __$$_MembershipInfoCopyWithImpl<$Res>
    extends _$MembershipInfoCopyWithImpl<$Res, _$_MembershipInfo>
    implements _$$_MembershipInfoCopyWith<$Res> {
  __$$_MembershipInfoCopyWithImpl(
      _$_MembershipInfo _value, $Res Function(_$_MembershipInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = freezed,
    Object? cvIDList = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? sex = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_$_MembershipInfo(
      userID: freezed == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as int?,
      cvIDList: freezed == cvIDList
          ? _value._cvIDList
          : cvIDList // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      sex: freezed == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as int?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MembershipInfo implements _MembershipInfo {
  _$_MembershipInfo(
      {@JsonKey(name: 'UserID') this.userID,
      @JsonKey(name: 'CvIDList') final List<int>? cvIDList,
      @JsonKey(name: 'FirstName') this.firstName,
      @JsonKey(name: 'LastName') this.lastName,
      @JsonKey(name: 'Email') this.email,
      @JsonKey(name: 'Sex') this.sex,
      @JsonKey(name: 'PhotoUrl') this.photoUrl})
      : _cvIDList = cvIDList;

  factory _$_MembershipInfo.fromJson(Map<String, dynamic> json) =>
      _$$_MembershipInfoFromJson(json);

  @override
  @JsonKey(name: 'UserID')
  final int? userID;
  final List<int>? _cvIDList;
  @override
  @JsonKey(name: 'CvIDList')
  List<int>? get cvIDList {
    final value = _cvIDList;
    if (value == null) return null;
    if (_cvIDList is EqualUnmodifiableListView) return _cvIDList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'FirstName')
  final String? firstName;
  @override
  @JsonKey(name: 'LastName')
  final String? lastName;
  @override
  @JsonKey(name: 'Email')
  final String? email;
  @override
  @JsonKey(name: 'Sex')
  final int? sex;
  @override
  @JsonKey(name: 'PhotoUrl')
  final String? photoUrl;

  @override
  String toString() {
    return 'MembershipInfo(userID: $userID, cvIDList: $cvIDList, firstName: $firstName, lastName: $lastName, email: $email, sex: $sex, photoUrl: $photoUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MembershipInfo &&
            (identical(other.userID, userID) || other.userID == userID) &&
            const DeepCollectionEquality().equals(other._cvIDList, _cvIDList) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userID,
      const DeepCollectionEquality().hash(_cvIDList),
      firstName,
      lastName,
      email,
      sex,
      photoUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MembershipInfoCopyWith<_$_MembershipInfo> get copyWith =>
      __$$_MembershipInfoCopyWithImpl<_$_MembershipInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MembershipInfoToJson(
      this,
    );
  }
}

abstract class _MembershipInfo implements MembershipInfo {
  factory _MembershipInfo(
      {@JsonKey(name: 'UserID') final int? userID,
      @JsonKey(name: 'CvIDList') final List<int>? cvIDList,
      @JsonKey(name: 'FirstName') final String? firstName,
      @JsonKey(name: 'LastName') final String? lastName,
      @JsonKey(name: 'Email') final String? email,
      @JsonKey(name: 'Sex') final int? sex,
      @JsonKey(name: 'PhotoUrl') final String? photoUrl}) = _$_MembershipInfo;

  factory _MembershipInfo.fromJson(Map<String, dynamic> json) =
      _$_MembershipInfo.fromJson;

  @override
  @JsonKey(name: 'UserID')
  int? get userID;
  @override
  @JsonKey(name: 'CvIDList')
  List<int>? get cvIDList;
  @override
  @JsonKey(name: 'FirstName')
  String? get firstName;
  @override
  @JsonKey(name: 'LastName')
  String? get lastName;
  @override
  @JsonKey(name: 'Email')
  String? get email;
  @override
  @JsonKey(name: 'Sex')
  int? get sex;
  @override
  @JsonKey(name: 'PhotoUrl')
  String? get photoUrl;
  @override
  @JsonKey(ignore: true)
  _$$_MembershipInfoCopyWith<_$_MembershipInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
