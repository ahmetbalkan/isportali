// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'computer_skill_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ComputerSkillModel _$ComputerSkillModelFromJson(Map<String, dynamic> json) {
  return _ComputerSkillModel.fromJson(json);
}

/// @nodoc
mixin _$ComputerSkillModel {
  @JsonKey(name: 'ID')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'CvID')
  int? get cvID => throw _privateConstructorUsedError;
  @JsonKey(name: 'Name')
  NameModel? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'Experience')
  dynamic get experience => throw _privateConstructorUsedError;
  @JsonKey(name: 'Level')
  dynamic get level => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComputerSkillModelCopyWith<ComputerSkillModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComputerSkillModelCopyWith<$Res> {
  factory $ComputerSkillModelCopyWith(
          ComputerSkillModel value, $Res Function(ComputerSkillModel) then) =
      _$ComputerSkillModelCopyWithImpl<$Res, ComputerSkillModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ID') int? id,
      @JsonKey(name: 'CvID') int? cvID,
      @JsonKey(name: 'Name') NameModel? name,
      @JsonKey(name: 'Experience') dynamic experience,
      @JsonKey(name: 'Level') dynamic level});

  $NameModelCopyWith<$Res>? get name;
}

/// @nodoc
class _$ComputerSkillModelCopyWithImpl<$Res, $Val extends ComputerSkillModel>
    implements $ComputerSkillModelCopyWith<$Res> {
  _$ComputerSkillModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? cvID = freezed,
    Object? name = freezed,
    Object? experience = freezed,
    Object? level = freezed,
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as NameModel?,
      experience: freezed == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as dynamic,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NameModelCopyWith<$Res>? get name {
    if (_value.name == null) {
      return null;
    }

    return $NameModelCopyWith<$Res>(_value.name!, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ComputerSkillModelCopyWith<$Res>
    implements $ComputerSkillModelCopyWith<$Res> {
  factory _$$_ComputerSkillModelCopyWith(_$_ComputerSkillModel value,
          $Res Function(_$_ComputerSkillModel) then) =
      __$$_ComputerSkillModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ID') int? id,
      @JsonKey(name: 'CvID') int? cvID,
      @JsonKey(name: 'Name') NameModel? name,
      @JsonKey(name: 'Experience') dynamic experience,
      @JsonKey(name: 'Level') dynamic level});

  @override
  $NameModelCopyWith<$Res>? get name;
}

/// @nodoc
class __$$_ComputerSkillModelCopyWithImpl<$Res>
    extends _$ComputerSkillModelCopyWithImpl<$Res, _$_ComputerSkillModel>
    implements _$$_ComputerSkillModelCopyWith<$Res> {
  __$$_ComputerSkillModelCopyWithImpl(
      _$_ComputerSkillModel _value, $Res Function(_$_ComputerSkillModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? cvID = freezed,
    Object? name = freezed,
    Object? experience = freezed,
    Object? level = freezed,
  }) {
    return _then(_$_ComputerSkillModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      cvID: freezed == cvID
          ? _value.cvID
          : cvID // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as NameModel?,
      experience: freezed == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as dynamic,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ComputerSkillModel implements _ComputerSkillModel {
  _$_ComputerSkillModel(
      {@JsonKey(name: 'ID') this.id,
      @JsonKey(name: 'CvID') this.cvID,
      @JsonKey(name: 'Name') this.name,
      @JsonKey(name: 'Experience') this.experience,
      @JsonKey(name: 'Level') this.level});

  factory _$_ComputerSkillModel.fromJson(Map<String, dynamic> json) =>
      _$$_ComputerSkillModelFromJson(json);

  @override
  @JsonKey(name: 'ID')
  final int? id;
  @override
  @JsonKey(name: 'CvID')
  final int? cvID;
  @override
  @JsonKey(name: 'Name')
  final NameModel? name;
  @override
  @JsonKey(name: 'Experience')
  final dynamic experience;
  @override
  @JsonKey(name: 'Level')
  final dynamic level;

  @override
  String toString() {
    return 'ComputerSkillModel(id: $id, cvID: $cvID, name: $name, experience: $experience, level: $level)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ComputerSkillModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.cvID, cvID) || other.cvID == cvID) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other.experience, experience) &&
            const DeepCollectionEquality().equals(other.level, level));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      cvID,
      name,
      const DeepCollectionEquality().hash(experience),
      const DeepCollectionEquality().hash(level));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ComputerSkillModelCopyWith<_$_ComputerSkillModel> get copyWith =>
      __$$_ComputerSkillModelCopyWithImpl<_$_ComputerSkillModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ComputerSkillModelToJson(
      this,
    );
  }
}

abstract class _ComputerSkillModel implements ComputerSkillModel {
  factory _ComputerSkillModel(
      {@JsonKey(name: 'ID') final int? id,
      @JsonKey(name: 'CvID') final int? cvID,
      @JsonKey(name: 'Name') final NameModel? name,
      @JsonKey(name: 'Experience') final dynamic experience,
      @JsonKey(name: 'Level') final dynamic level}) = _$_ComputerSkillModel;

  factory _ComputerSkillModel.fromJson(Map<String, dynamic> json) =
      _$_ComputerSkillModel.fromJson;

  @override
  @JsonKey(name: 'ID')
  int? get id;
  @override
  @JsonKey(name: 'CvID')
  int? get cvID;
  @override
  @JsonKey(name: 'Name')
  NameModel? get name;
  @override
  @JsonKey(name: 'Experience')
  dynamic get experience;
  @override
  @JsonKey(name: 'Level')
  dynamic get level;
  @override
  @JsonKey(ignore: true)
  _$$_ComputerSkillModelCopyWith<_$_ComputerSkillModel> get copyWith =>
      throw _privateConstructorUsedError;
}
