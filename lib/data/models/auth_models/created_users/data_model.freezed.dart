// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModelData _$UserModelDataFromJson(Map<String, dynamic> json) {
  return _UserModelData.fromJson(json);
}

/// @nodoc
mixin _$UserModelData {
  @JsonKey(name: 'PersistentTicket')
  String? get persistentTicket => throw _privateConstructorUsedError;
  @JsonKey(name: 'MembershipInfo')
  MembershipInfo? get membershipInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'InsiderInfo')
  InsiderInfo? get insiderInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'Ticket')
  String? get ticket => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelDataCopyWith<UserModelData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelDataCopyWith<$Res> {
  factory $UserModelDataCopyWith(
          UserModelData value, $Res Function(UserModelData) then) =
      _$UserModelDataCopyWithImpl<$Res, UserModelData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'PersistentTicket') String? persistentTicket,
      @JsonKey(name: 'MembershipInfo') MembershipInfo? membershipInfo,
      @JsonKey(name: 'InsiderInfo') InsiderInfo? insiderInfo,
      @JsonKey(name: 'Ticket') String? ticket});

  $MembershipInfoCopyWith<$Res>? get membershipInfo;
  $InsiderInfoCopyWith<$Res>? get insiderInfo;
}

/// @nodoc
class _$UserModelDataCopyWithImpl<$Res, $Val extends UserModelData>
    implements $UserModelDataCopyWith<$Res> {
  _$UserModelDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? persistentTicket = freezed,
    Object? membershipInfo = freezed,
    Object? insiderInfo = freezed,
    Object? ticket = freezed,
  }) {
    return _then(_value.copyWith(
      persistentTicket: freezed == persistentTicket
          ? _value.persistentTicket
          : persistentTicket // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipInfo: freezed == membershipInfo
          ? _value.membershipInfo
          : membershipInfo // ignore: cast_nullable_to_non_nullable
              as MembershipInfo?,
      insiderInfo: freezed == insiderInfo
          ? _value.insiderInfo
          : insiderInfo // ignore: cast_nullable_to_non_nullable
              as InsiderInfo?,
      ticket: freezed == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MembershipInfoCopyWith<$Res>? get membershipInfo {
    if (_value.membershipInfo == null) {
      return null;
    }

    return $MembershipInfoCopyWith<$Res>(_value.membershipInfo!, (value) {
      return _then(_value.copyWith(membershipInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $InsiderInfoCopyWith<$Res>? get insiderInfo {
    if (_value.insiderInfo == null) {
      return null;
    }

    return $InsiderInfoCopyWith<$Res>(_value.insiderInfo!, (value) {
      return _then(_value.copyWith(insiderInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserModelDataCopyWith<$Res>
    implements $UserModelDataCopyWith<$Res> {
  factory _$$_UserModelDataCopyWith(
          _$_UserModelData value, $Res Function(_$_UserModelData) then) =
      __$$_UserModelDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'PersistentTicket') String? persistentTicket,
      @JsonKey(name: 'MembershipInfo') MembershipInfo? membershipInfo,
      @JsonKey(name: 'InsiderInfo') InsiderInfo? insiderInfo,
      @JsonKey(name: 'Ticket') String? ticket});

  @override
  $MembershipInfoCopyWith<$Res>? get membershipInfo;
  @override
  $InsiderInfoCopyWith<$Res>? get insiderInfo;
}

/// @nodoc
class __$$_UserModelDataCopyWithImpl<$Res>
    extends _$UserModelDataCopyWithImpl<$Res, _$_UserModelData>
    implements _$$_UserModelDataCopyWith<$Res> {
  __$$_UserModelDataCopyWithImpl(
      _$_UserModelData _value, $Res Function(_$_UserModelData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? persistentTicket = freezed,
    Object? membershipInfo = freezed,
    Object? insiderInfo = freezed,
    Object? ticket = freezed,
  }) {
    return _then(_$_UserModelData(
      persistentTicket: freezed == persistentTicket
          ? _value.persistentTicket
          : persistentTicket // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipInfo: freezed == membershipInfo
          ? _value.membershipInfo
          : membershipInfo // ignore: cast_nullable_to_non_nullable
              as MembershipInfo?,
      insiderInfo: freezed == insiderInfo
          ? _value.insiderInfo
          : insiderInfo // ignore: cast_nullable_to_non_nullable
              as InsiderInfo?,
      ticket: freezed == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserModelData implements _UserModelData {
  _$_UserModelData(
      {@JsonKey(name: 'PersistentTicket') this.persistentTicket,
      @JsonKey(name: 'MembershipInfo') this.membershipInfo,
      @JsonKey(name: 'InsiderInfo') this.insiderInfo,
      @JsonKey(name: 'Ticket') this.ticket});

  factory _$_UserModelData.fromJson(Map<String, dynamic> json) =>
      _$$_UserModelDataFromJson(json);

  @override
  @JsonKey(name: 'PersistentTicket')
  final String? persistentTicket;
  @override
  @JsonKey(name: 'MembershipInfo')
  final MembershipInfo? membershipInfo;
  @override
  @JsonKey(name: 'InsiderInfo')
  final InsiderInfo? insiderInfo;
  @override
  @JsonKey(name: 'Ticket')
  final String? ticket;

  @override
  String toString() {
    return 'UserModelData(persistentTicket: $persistentTicket, membershipInfo: $membershipInfo, insiderInfo: $insiderInfo, ticket: $ticket)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserModelData &&
            (identical(other.persistentTicket, persistentTicket) ||
                other.persistentTicket == persistentTicket) &&
            (identical(other.membershipInfo, membershipInfo) ||
                other.membershipInfo == membershipInfo) &&
            (identical(other.insiderInfo, insiderInfo) ||
                other.insiderInfo == insiderInfo) &&
            (identical(other.ticket, ticket) || other.ticket == ticket));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, persistentTicket, membershipInfo, insiderInfo, ticket);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserModelDataCopyWith<_$_UserModelData> get copyWith =>
      __$$_UserModelDataCopyWithImpl<_$_UserModelData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserModelDataToJson(
      this,
    );
  }
}

abstract class _UserModelData implements UserModelData {
  factory _UserModelData(
      {@JsonKey(name: 'PersistentTicket') final String? persistentTicket,
      @JsonKey(name: 'MembershipInfo') final MembershipInfo? membershipInfo,
      @JsonKey(name: 'InsiderInfo') final InsiderInfo? insiderInfo,
      @JsonKey(name: 'Ticket') final String? ticket}) = _$_UserModelData;

  factory _UserModelData.fromJson(Map<String, dynamic> json) =
      _$_UserModelData.fromJson;

  @override
  @JsonKey(name: 'PersistentTicket')
  String? get persistentTicket;
  @override
  @JsonKey(name: 'MembershipInfo')
  MembershipInfo? get membershipInfo;
  @override
  @JsonKey(name: 'InsiderInfo')
  InsiderInfo? get insiderInfo;
  @override
  @JsonKey(name: 'Ticket')
  String? get ticket;
  @override
  @JsonKey(ignore: true)
  _$$_UserModelDataCopyWith<_$_UserModelData> get copyWith =>
      throw _privateConstructorUsedError;
}
