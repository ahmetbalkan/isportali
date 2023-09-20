// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'foreign_language_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ForeignLanguageModel _$ForeignLanguageModelFromJson(Map<String, dynamic> json) {
  return _ForeignLanguageModel.fromJson(json);
}

/// @nodoc
mixin _$ForeignLanguageModel {
  @JsonKey(name: 'ID')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'CvID')
  int? get cvID => throw _privateConstructorUsedError;
  @JsonKey(name: 'Language')
  LanguageModel? get language => throw _privateConstructorUsedError;
  @JsonKey(name: 'ReadingLevel')
  LanguageLevelModel? get readingLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'WritingLevel')
  LanguageLevelModel? get writingLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'SpeakingLevel')
  LanguageLevelModel? get speakingLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'Institution')
  String? get institution => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForeignLanguageModelCopyWith<ForeignLanguageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForeignLanguageModelCopyWith<$Res> {
  factory $ForeignLanguageModelCopyWith(ForeignLanguageModel value,
          $Res Function(ForeignLanguageModel) then) =
      _$ForeignLanguageModelCopyWithImpl<$Res, ForeignLanguageModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ID') int? id,
      @JsonKey(name: 'CvID') int? cvID,
      @JsonKey(name: 'Language') LanguageModel? language,
      @JsonKey(name: 'ReadingLevel') LanguageLevelModel? readingLevel,
      @JsonKey(name: 'WritingLevel') LanguageLevelModel? writingLevel,
      @JsonKey(name: 'SpeakingLevel') LanguageLevelModel? speakingLevel,
      @JsonKey(name: 'Institution') String? institution});

  $LanguageModelCopyWith<$Res>? get language;
  $LanguageLevelModelCopyWith<$Res>? get readingLevel;
  $LanguageLevelModelCopyWith<$Res>? get writingLevel;
  $LanguageLevelModelCopyWith<$Res>? get speakingLevel;
}

/// @nodoc
class _$ForeignLanguageModelCopyWithImpl<$Res,
        $Val extends ForeignLanguageModel>
    implements $ForeignLanguageModelCopyWith<$Res> {
  _$ForeignLanguageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? cvID = freezed,
    Object? language = freezed,
    Object? readingLevel = freezed,
    Object? writingLevel = freezed,
    Object? speakingLevel = freezed,
    Object? institution = freezed,
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
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as LanguageModel?,
      readingLevel: freezed == readingLevel
          ? _value.readingLevel
          : readingLevel // ignore: cast_nullable_to_non_nullable
              as LanguageLevelModel?,
      writingLevel: freezed == writingLevel
          ? _value.writingLevel
          : writingLevel // ignore: cast_nullable_to_non_nullable
              as LanguageLevelModel?,
      speakingLevel: freezed == speakingLevel
          ? _value.speakingLevel
          : speakingLevel // ignore: cast_nullable_to_non_nullable
              as LanguageLevelModel?,
      institution: freezed == institution
          ? _value.institution
          : institution // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LanguageModelCopyWith<$Res>? get language {
    if (_value.language == null) {
      return null;
    }

    return $LanguageModelCopyWith<$Res>(_value.language!, (value) {
      return _then(_value.copyWith(language: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LanguageLevelModelCopyWith<$Res>? get readingLevel {
    if (_value.readingLevel == null) {
      return null;
    }

    return $LanguageLevelModelCopyWith<$Res>(_value.readingLevel!, (value) {
      return _then(_value.copyWith(readingLevel: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LanguageLevelModelCopyWith<$Res>? get writingLevel {
    if (_value.writingLevel == null) {
      return null;
    }

    return $LanguageLevelModelCopyWith<$Res>(_value.writingLevel!, (value) {
      return _then(_value.copyWith(writingLevel: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LanguageLevelModelCopyWith<$Res>? get speakingLevel {
    if (_value.speakingLevel == null) {
      return null;
    }

    return $LanguageLevelModelCopyWith<$Res>(_value.speakingLevel!, (value) {
      return _then(_value.copyWith(speakingLevel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ForeignLanguageModelCopyWith<$Res>
    implements $ForeignLanguageModelCopyWith<$Res> {
  factory _$$_ForeignLanguageModelCopyWith(_$_ForeignLanguageModel value,
          $Res Function(_$_ForeignLanguageModel) then) =
      __$$_ForeignLanguageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ID') int? id,
      @JsonKey(name: 'CvID') int? cvID,
      @JsonKey(name: 'Language') LanguageModel? language,
      @JsonKey(name: 'ReadingLevel') LanguageLevelModel? readingLevel,
      @JsonKey(name: 'WritingLevel') LanguageLevelModel? writingLevel,
      @JsonKey(name: 'SpeakingLevel') LanguageLevelModel? speakingLevel,
      @JsonKey(name: 'Institution') String? institution});

  @override
  $LanguageModelCopyWith<$Res>? get language;
  @override
  $LanguageLevelModelCopyWith<$Res>? get readingLevel;
  @override
  $LanguageLevelModelCopyWith<$Res>? get writingLevel;
  @override
  $LanguageLevelModelCopyWith<$Res>? get speakingLevel;
}

/// @nodoc
class __$$_ForeignLanguageModelCopyWithImpl<$Res>
    extends _$ForeignLanguageModelCopyWithImpl<$Res, _$_ForeignLanguageModel>
    implements _$$_ForeignLanguageModelCopyWith<$Res> {
  __$$_ForeignLanguageModelCopyWithImpl(_$_ForeignLanguageModel _value,
      $Res Function(_$_ForeignLanguageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? cvID = freezed,
    Object? language = freezed,
    Object? readingLevel = freezed,
    Object? writingLevel = freezed,
    Object? speakingLevel = freezed,
    Object? institution = freezed,
  }) {
    return _then(_$_ForeignLanguageModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      cvID: freezed == cvID
          ? _value.cvID
          : cvID // ignore: cast_nullable_to_non_nullable
              as int?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as LanguageModel?,
      readingLevel: freezed == readingLevel
          ? _value.readingLevel
          : readingLevel // ignore: cast_nullable_to_non_nullable
              as LanguageLevelModel?,
      writingLevel: freezed == writingLevel
          ? _value.writingLevel
          : writingLevel // ignore: cast_nullable_to_non_nullable
              as LanguageLevelModel?,
      speakingLevel: freezed == speakingLevel
          ? _value.speakingLevel
          : speakingLevel // ignore: cast_nullable_to_non_nullable
              as LanguageLevelModel?,
      institution: freezed == institution
          ? _value.institution
          : institution // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ForeignLanguageModel implements _ForeignLanguageModel {
  _$_ForeignLanguageModel(
      {@JsonKey(name: 'ID') this.id,
      @JsonKey(name: 'CvID') this.cvID,
      @JsonKey(name: 'Language') this.language,
      @JsonKey(name: 'ReadingLevel') this.readingLevel,
      @JsonKey(name: 'WritingLevel') this.writingLevel,
      @JsonKey(name: 'SpeakingLevel') this.speakingLevel,
      @JsonKey(name: 'Institution') this.institution});

  factory _$_ForeignLanguageModel.fromJson(Map<String, dynamic> json) =>
      _$$_ForeignLanguageModelFromJson(json);

  @override
  @JsonKey(name: 'ID')
  final int? id;
  @override
  @JsonKey(name: 'CvID')
  final int? cvID;
  @override
  @JsonKey(name: 'Language')
  final LanguageModel? language;
  @override
  @JsonKey(name: 'ReadingLevel')
  final LanguageLevelModel? readingLevel;
  @override
  @JsonKey(name: 'WritingLevel')
  final LanguageLevelModel? writingLevel;
  @override
  @JsonKey(name: 'SpeakingLevel')
  final LanguageLevelModel? speakingLevel;
  @override
  @JsonKey(name: 'Institution')
  final String? institution;

  @override
  String toString() {
    return 'ForeignLanguageModel(id: $id, cvID: $cvID, language: $language, readingLevel: $readingLevel, writingLevel: $writingLevel, speakingLevel: $speakingLevel, institution: $institution)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForeignLanguageModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.cvID, cvID) || other.cvID == cvID) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.readingLevel, readingLevel) ||
                other.readingLevel == readingLevel) &&
            (identical(other.writingLevel, writingLevel) ||
                other.writingLevel == writingLevel) &&
            (identical(other.speakingLevel, speakingLevel) ||
                other.speakingLevel == speakingLevel) &&
            (identical(other.institution, institution) ||
                other.institution == institution));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, cvID, language, readingLevel,
      writingLevel, speakingLevel, institution);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ForeignLanguageModelCopyWith<_$_ForeignLanguageModel> get copyWith =>
      __$$_ForeignLanguageModelCopyWithImpl<_$_ForeignLanguageModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ForeignLanguageModelToJson(
      this,
    );
  }
}

abstract class _ForeignLanguageModel implements ForeignLanguageModel {
  factory _ForeignLanguageModel(
      {@JsonKey(name: 'ID')
          final int? id,
      @JsonKey(name: 'CvID')
          final int? cvID,
      @JsonKey(name: 'Language')
          final LanguageModel? language,
      @JsonKey(name: 'ReadingLevel')
          final LanguageLevelModel? readingLevel,
      @JsonKey(name: 'WritingLevel')
          final LanguageLevelModel? writingLevel,
      @JsonKey(name: 'SpeakingLevel')
          final LanguageLevelModel? speakingLevel,
      @JsonKey(name: 'Institution')
          final String? institution}) = _$_ForeignLanguageModel;

  factory _ForeignLanguageModel.fromJson(Map<String, dynamic> json) =
      _$_ForeignLanguageModel.fromJson;

  @override
  @JsonKey(name: 'ID')
  int? get id;
  @override
  @JsonKey(name: 'CvID')
  int? get cvID;
  @override
  @JsonKey(name: 'Language')
  LanguageModel? get language;
  @override
  @JsonKey(name: 'ReadingLevel')
  LanguageLevelModel? get readingLevel;
  @override
  @JsonKey(name: 'WritingLevel')
  LanguageLevelModel? get writingLevel;
  @override
  @JsonKey(name: 'SpeakingLevel')
  LanguageLevelModel? get speakingLevel;
  @override
  @JsonKey(name: 'Institution')
  String? get institution;
  @override
  @JsonKey(ignore: true)
  _$$_ForeignLanguageModelCopyWith<_$_ForeignLanguageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
