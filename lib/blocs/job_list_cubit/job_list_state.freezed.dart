// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$JobListState {
  JobListStatus get jobListStatus => throw _privateConstructorUsedError;
  List<JobListModel> get jobList => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  String get position => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get searchError => throw _privateConstructorUsedError;
  String get filterError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JobListStateCopyWith<JobListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobListStateCopyWith<$Res> {
  factory $JobListStateCopyWith(
          JobListState value, $Res Function(JobListState) then) =
      _$JobListStateCopyWithImpl<$Res, JobListState>;
  @useResult
  $Res call(
      {JobListStatus jobListStatus,
      List<JobListModel> jobList,
      int index,
      String position,
      String city,
      String searchError,
      String filterError});

  $JobListStatusCopyWith<$Res> get jobListStatus;
}

/// @nodoc
class _$JobListStateCopyWithImpl<$Res, $Val extends JobListState>
    implements $JobListStateCopyWith<$Res> {
  _$JobListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobListStatus = null,
    Object? jobList = null,
    Object? index = null,
    Object? position = null,
    Object? city = null,
    Object? searchError = null,
    Object? filterError = null,
  }) {
    return _then(_value.copyWith(
      jobListStatus: null == jobListStatus
          ? _value.jobListStatus
          : jobListStatus // ignore: cast_nullable_to_non_nullable
              as JobListStatus,
      jobList: null == jobList
          ? _value.jobList
          : jobList // ignore: cast_nullable_to_non_nullable
              as List<JobListModel>,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      searchError: null == searchError
          ? _value.searchError
          : searchError // ignore: cast_nullable_to_non_nullable
              as String,
      filterError: null == filterError
          ? _value.filterError
          : filterError // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $JobListStatusCopyWith<$Res> get jobListStatus {
    return $JobListStatusCopyWith<$Res>(_value.jobListStatus, (value) {
      return _then(_value.copyWith(jobListStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_JobListStateCopyWith<$Res>
    implements $JobListStateCopyWith<$Res> {
  factory _$$_JobListStateCopyWith(
          _$_JobListState value, $Res Function(_$_JobListState) then) =
      __$$_JobListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {JobListStatus jobListStatus,
      List<JobListModel> jobList,
      int index,
      String position,
      String city,
      String searchError,
      String filterError});

  @override
  $JobListStatusCopyWith<$Res> get jobListStatus;
}

/// @nodoc
class __$$_JobListStateCopyWithImpl<$Res>
    extends _$JobListStateCopyWithImpl<$Res, _$_JobListState>
    implements _$$_JobListStateCopyWith<$Res> {
  __$$_JobListStateCopyWithImpl(
      _$_JobListState _value, $Res Function(_$_JobListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobListStatus = null,
    Object? jobList = null,
    Object? index = null,
    Object? position = null,
    Object? city = null,
    Object? searchError = null,
    Object? filterError = null,
  }) {
    return _then(_$_JobListState(
      jobListStatus: null == jobListStatus
          ? _value.jobListStatus
          : jobListStatus // ignore: cast_nullable_to_non_nullable
              as JobListStatus,
      jobList: null == jobList
          ? _value._jobList
          : jobList // ignore: cast_nullable_to_non_nullable
              as List<JobListModel>,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      searchError: null == searchError
          ? _value.searchError
          : searchError // ignore: cast_nullable_to_non_nullable
              as String,
      filterError: null == filterError
          ? _value.filterError
          : filterError // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_JobListState extends _JobListState {
  const _$_JobListState(
      {required this.jobListStatus,
      required final List<JobListModel> jobList,
      required this.index,
      required this.position,
      required this.city,
      required this.searchError,
      required this.filterError})
      : _jobList = jobList,
        super._();

  @override
  final JobListStatus jobListStatus;
  final List<JobListModel> _jobList;
  @override
  List<JobListModel> get jobList {
    if (_jobList is EqualUnmodifiableListView) return _jobList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_jobList);
  }

  @override
  final int index;
  @override
  final String position;
  @override
  final String city;
  @override
  final String searchError;
  @override
  final String filterError;

  @override
  String toString() {
    return 'JobListState(jobListStatus: $jobListStatus, jobList: $jobList, index: $index, position: $position, city: $city, searchError: $searchError, filterError: $filterError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JobListState &&
            (identical(other.jobListStatus, jobListStatus) ||
                other.jobListStatus == jobListStatus) &&
            const DeepCollectionEquality().equals(other._jobList, _jobList) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.searchError, searchError) ||
                other.searchError == searchError) &&
            (identical(other.filterError, filterError) ||
                other.filterError == filterError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      jobListStatus,
      const DeepCollectionEquality().hash(_jobList),
      index,
      position,
      city,
      searchError,
      filterError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JobListStateCopyWith<_$_JobListState> get copyWith =>
      __$$_JobListStateCopyWithImpl<_$_JobListState>(this, _$identity);
}

abstract class _JobListState extends JobListState {
  const factory _JobListState(
      {required final JobListStatus jobListStatus,
      required final List<JobListModel> jobList,
      required final int index,
      required final String position,
      required final String city,
      required final String searchError,
      required final String filterError}) = _$_JobListState;
  const _JobListState._() : super._();

  @override
  JobListStatus get jobListStatus;
  @override
  List<JobListModel> get jobList;
  @override
  int get index;
  @override
  String get position;
  @override
  String get city;
  @override
  String get searchError;
  @override
  String get filterError;
  @override
  @JsonKey(ignore: true)
  _$$_JobListStateCopyWith<_$_JobListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$JobListStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() error,
    required TResult Function() nullData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? error,
    TResult? Function()? nullData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? error,
    TResult Function()? nullData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loading value) loading,
    required TResult Function(_loaded value) loaded,
    required TResult Function(_error value) error,
    required TResult Function(_nullData value) nullData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loading value)? loading,
    TResult? Function(_loaded value)? loaded,
    TResult? Function(_error value)? error,
    TResult? Function(_nullData value)? nullData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loading value)? loading,
    TResult Function(_loaded value)? loaded,
    TResult Function(_error value)? error,
    TResult Function(_nullData value)? nullData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobListStatusCopyWith<$Res> {
  factory $JobListStatusCopyWith(
          JobListStatus value, $Res Function(JobListStatus) then) =
      _$JobListStatusCopyWithImpl<$Res, JobListStatus>;
}

/// @nodoc
class _$JobListStatusCopyWithImpl<$Res, $Val extends JobListStatus>
    implements $JobListStatusCopyWith<$Res> {
  _$JobListStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_loadingCopyWith<$Res> {
  factory _$$_loadingCopyWith(
          _$_loading value, $Res Function(_$_loading) then) =
      __$$_loadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_loadingCopyWithImpl<$Res>
    extends _$JobListStatusCopyWithImpl<$Res, _$_loading>
    implements _$$_loadingCopyWith<$Res> {
  __$$_loadingCopyWithImpl(_$_loading _value, $Res Function(_$_loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_loading implements _loading {
  const _$_loading();

  @override
  String toString() {
    return 'JobListStatus.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() error,
    required TResult Function() nullData,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? error,
    TResult? Function()? nullData,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? error,
    TResult Function()? nullData,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loading value) loading,
    required TResult Function(_loaded value) loaded,
    required TResult Function(_error value) error,
    required TResult Function(_nullData value) nullData,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loading value)? loading,
    TResult? Function(_loaded value)? loaded,
    TResult? Function(_error value)? error,
    TResult? Function(_nullData value)? nullData,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loading value)? loading,
    TResult Function(_loaded value)? loaded,
    TResult Function(_error value)? error,
    TResult Function(_nullData value)? nullData,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _loading implements JobListStatus {
  const factory _loading() = _$_loading;
}

/// @nodoc
abstract class _$$_loadedCopyWith<$Res> {
  factory _$$_loadedCopyWith(_$_loaded value, $Res Function(_$_loaded) then) =
      __$$_loadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_loadedCopyWithImpl<$Res>
    extends _$JobListStatusCopyWithImpl<$Res, _$_loaded>
    implements _$$_loadedCopyWith<$Res> {
  __$$_loadedCopyWithImpl(_$_loaded _value, $Res Function(_$_loaded) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_loaded implements _loaded {
  const _$_loaded();

  @override
  String toString() {
    return 'JobListStatus.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_loaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() error,
    required TResult Function() nullData,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? error,
    TResult? Function()? nullData,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? error,
    TResult Function()? nullData,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loading value) loading,
    required TResult Function(_loaded value) loaded,
    required TResult Function(_error value) error,
    required TResult Function(_nullData value) nullData,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loading value)? loading,
    TResult? Function(_loaded value)? loaded,
    TResult? Function(_error value)? error,
    TResult? Function(_nullData value)? nullData,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loading value)? loading,
    TResult Function(_loaded value)? loaded,
    TResult Function(_error value)? error,
    TResult Function(_nullData value)? nullData,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _loaded implements JobListStatus {
  const factory _loaded() = _$_loaded;
}

/// @nodoc
abstract class _$$_errorCopyWith<$Res> {
  factory _$$_errorCopyWith(_$_error value, $Res Function(_$_error) then) =
      __$$_errorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_errorCopyWithImpl<$Res>
    extends _$JobListStatusCopyWithImpl<$Res, _$_error>
    implements _$$_errorCopyWith<$Res> {
  __$$_errorCopyWithImpl(_$_error _value, $Res Function(_$_error) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_error implements _error {
  const _$_error();

  @override
  String toString() {
    return 'JobListStatus.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() error,
    required TResult Function() nullData,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? error,
    TResult? Function()? nullData,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? error,
    TResult Function()? nullData,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loading value) loading,
    required TResult Function(_loaded value) loaded,
    required TResult Function(_error value) error,
    required TResult Function(_nullData value) nullData,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loading value)? loading,
    TResult? Function(_loaded value)? loaded,
    TResult? Function(_error value)? error,
    TResult? Function(_nullData value)? nullData,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loading value)? loading,
    TResult Function(_loaded value)? loaded,
    TResult Function(_error value)? error,
    TResult Function(_nullData value)? nullData,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _error implements JobListStatus {
  const factory _error() = _$_error;
}

/// @nodoc
abstract class _$$_nullDataCopyWith<$Res> {
  factory _$$_nullDataCopyWith(
          _$_nullData value, $Res Function(_$_nullData) then) =
      __$$_nullDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_nullDataCopyWithImpl<$Res>
    extends _$JobListStatusCopyWithImpl<$Res, _$_nullData>
    implements _$$_nullDataCopyWith<$Res> {
  __$$_nullDataCopyWithImpl(
      _$_nullData _value, $Res Function(_$_nullData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_nullData implements _nullData {
  const _$_nullData();

  @override
  String toString() {
    return 'JobListStatus.nullData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_nullData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() error,
    required TResult Function() nullData,
  }) {
    return nullData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? error,
    TResult? Function()? nullData,
  }) {
    return nullData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? error,
    TResult Function()? nullData,
    required TResult orElse(),
  }) {
    if (nullData != null) {
      return nullData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loading value) loading,
    required TResult Function(_loaded value) loaded,
    required TResult Function(_error value) error,
    required TResult Function(_nullData value) nullData,
  }) {
    return nullData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loading value)? loading,
    TResult? Function(_loaded value)? loaded,
    TResult? Function(_error value)? error,
    TResult? Function(_nullData value)? nullData,
  }) {
    return nullData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loading value)? loading,
    TResult Function(_loaded value)? loaded,
    TResult Function(_error value)? error,
    TResult Function(_nullData value)? nullData,
    required TResult orElse(),
  }) {
    if (nullData != null) {
      return nullData(this);
    }
    return orElse();
  }
}

abstract class _nullData implements JobListStatus {
  const factory _nullData() = _$_nullData;
}
