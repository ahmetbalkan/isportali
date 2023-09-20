// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FileModel _$FileModelFromJson(Map<String, dynamic> json) {
  return _FileModel.fromJson(json);
}

/// @nodoc
mixin _$FileModel {
  @JsonKey(name: 'FileID')
  int? get fileID => throw _privateConstructorUsedError;
  @JsonKey(name: 'Name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'Description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'Mime')
  String? get mime => throw _privateConstructorUsedError;
  @JsonKey(name: 'Date')
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'Extension')
  String? get extension => throw _privateConstructorUsedError;
  @JsonKey(name: 'FileData')
  String? get fileData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FileModelCopyWith<FileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileModelCopyWith<$Res> {
  factory $FileModelCopyWith(FileModel value, $Res Function(FileModel) then) =
      _$FileModelCopyWithImpl<$Res, FileModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'FileID') int? fileID,
      @JsonKey(name: 'Name') String? name,
      @JsonKey(name: 'Description') String? description,
      @JsonKey(name: 'Mime') String? mime,
      @JsonKey(name: 'Date') String? date,
      @JsonKey(name: 'Extension') String? extension,
      @JsonKey(name: 'FileData') String? fileData});
}

/// @nodoc
class _$FileModelCopyWithImpl<$Res, $Val extends FileModel>
    implements $FileModelCopyWith<$Res> {
  _$FileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileID = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? mime = freezed,
    Object? date = freezed,
    Object? extension = freezed,
    Object? fileData = freezed,
  }) {
    return _then(_value.copyWith(
      fileID: freezed == fileID
          ? _value.fileID
          : fileID // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      mime: freezed == mime
          ? _value.mime
          : mime // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      extension: freezed == extension
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String?,
      fileData: freezed == fileData
          ? _value.fileData
          : fileData // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FileModelCopyWith<$Res> implements $FileModelCopyWith<$Res> {
  factory _$$_FileModelCopyWith(
          _$_FileModel value, $Res Function(_$_FileModel) then) =
      __$$_FileModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'FileID') int? fileID,
      @JsonKey(name: 'Name') String? name,
      @JsonKey(name: 'Description') String? description,
      @JsonKey(name: 'Mime') String? mime,
      @JsonKey(name: 'Date') String? date,
      @JsonKey(name: 'Extension') String? extension,
      @JsonKey(name: 'FileData') String? fileData});
}

/// @nodoc
class __$$_FileModelCopyWithImpl<$Res>
    extends _$FileModelCopyWithImpl<$Res, _$_FileModel>
    implements _$$_FileModelCopyWith<$Res> {
  __$$_FileModelCopyWithImpl(
      _$_FileModel _value, $Res Function(_$_FileModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileID = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? mime = freezed,
    Object? date = freezed,
    Object? extension = freezed,
    Object? fileData = freezed,
  }) {
    return _then(_$_FileModel(
      fileID: freezed == fileID
          ? _value.fileID
          : fileID // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      mime: freezed == mime
          ? _value.mime
          : mime // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      extension: freezed == extension
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String?,
      fileData: freezed == fileData
          ? _value.fileData
          : fileData // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FileModel implements _FileModel {
  _$_FileModel(
      {@JsonKey(name: 'FileID') this.fileID,
      @JsonKey(name: 'Name') this.name,
      @JsonKey(name: 'Description') this.description,
      @JsonKey(name: 'Mime') this.mime,
      @JsonKey(name: 'Date') this.date,
      @JsonKey(name: 'Extension') this.extension,
      @JsonKey(name: 'FileData') this.fileData});

  factory _$_FileModel.fromJson(Map<String, dynamic> json) =>
      _$$_FileModelFromJson(json);

  @override
  @JsonKey(name: 'FileID')
  final int? fileID;
  @override
  @JsonKey(name: 'Name')
  final String? name;
  @override
  @JsonKey(name: 'Description')
  final String? description;
  @override
  @JsonKey(name: 'Mime')
  final String? mime;
  @override
  @JsonKey(name: 'Date')
  final String? date;
  @override
  @JsonKey(name: 'Extension')
  final String? extension;
  @override
  @JsonKey(name: 'FileData')
  final String? fileData;

  @override
  String toString() {
    return 'FileModel(fileID: $fileID, name: $name, description: $description, mime: $mime, date: $date, extension: $extension, fileData: $fileData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FileModel &&
            (identical(other.fileID, fileID) || other.fileID == fileID) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.mime, mime) || other.mime == mime) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.extension, extension) ||
                other.extension == extension) &&
            (identical(other.fileData, fileData) ||
                other.fileData == fileData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, fileID, name, description, mime, date, extension, fileData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FileModelCopyWith<_$_FileModel> get copyWith =>
      __$$_FileModelCopyWithImpl<_$_FileModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FileModelToJson(
      this,
    );
  }
}

abstract class _FileModel implements FileModel {
  factory _FileModel(
      {@JsonKey(name: 'FileID') final int? fileID,
      @JsonKey(name: 'Name') final String? name,
      @JsonKey(name: 'Description') final String? description,
      @JsonKey(name: 'Mime') final String? mime,
      @JsonKey(name: 'Date') final String? date,
      @JsonKey(name: 'Extension') final String? extension,
      @JsonKey(name: 'FileData') final String? fileData}) = _$_FileModel;

  factory _FileModel.fromJson(Map<String, dynamic> json) =
      _$_FileModel.fromJson;

  @override
  @JsonKey(name: 'FileID')
  int? get fileID;
  @override
  @JsonKey(name: 'Name')
  String? get name;
  @override
  @JsonKey(name: 'Description')
  String? get description;
  @override
  @JsonKey(name: 'Mime')
  String? get mime;
  @override
  @JsonKey(name: 'Date')
  String? get date;
  @override
  @JsonKey(name: 'Extension')
  String? get extension;
  @override
  @JsonKey(name: 'FileData')
  String? get fileData;
  @override
  @JsonKey(ignore: true)
  _$$_FileModelCopyWith<_$_FileModel> get copyWith =>
      throw _privateConstructorUsedError;
}
