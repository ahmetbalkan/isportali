// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'joblist_filter_section_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$JobListFilterSectionModel {
  List<JobListFilterModel> get filteredOptions =>
      throw _privateConstructorUsedError;
  bool get isExpanded => throw _privateConstructorUsedError;
  List<JobListFilterModel> get checkedOptions =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JobListFilterSectionModelCopyWith<JobListFilterSectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobListFilterSectionModelCopyWith<$Res> {
  factory $JobListFilterSectionModelCopyWith(JobListFilterSectionModel value,
          $Res Function(JobListFilterSectionModel) then) =
      _$JobListFilterSectionModelCopyWithImpl<$Res, JobListFilterSectionModel>;
  @useResult
  $Res call(
      {List<JobListFilterModel> filteredOptions,
      bool isExpanded,
      List<JobListFilterModel> checkedOptions});
}

/// @nodoc
class _$JobListFilterSectionModelCopyWithImpl<$Res,
        $Val extends JobListFilterSectionModel>
    implements $JobListFilterSectionModelCopyWith<$Res> {
  _$JobListFilterSectionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filteredOptions = null,
    Object? isExpanded = null,
    Object? checkedOptions = null,
  }) {
    return _then(_value.copyWith(
      filteredOptions: null == filteredOptions
          ? _value.filteredOptions
          : filteredOptions // ignore: cast_nullable_to_non_nullable
              as List<JobListFilterModel>,
      isExpanded: null == isExpanded
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
      checkedOptions: null == checkedOptions
          ? _value.checkedOptions
          : checkedOptions // ignore: cast_nullable_to_non_nullable
              as List<JobListFilterModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_JobListFilterSectionModelCopyWith<$Res>
    implements $JobListFilterSectionModelCopyWith<$Res> {
  factory _$$_JobListFilterSectionModelCopyWith(
          _$_JobListFilterSectionModel value,
          $Res Function(_$_JobListFilterSectionModel) then) =
      __$$_JobListFilterSectionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<JobListFilterModel> filteredOptions,
      bool isExpanded,
      List<JobListFilterModel> checkedOptions});
}

/// @nodoc
class __$$_JobListFilterSectionModelCopyWithImpl<$Res>
    extends _$JobListFilterSectionModelCopyWithImpl<$Res,
        _$_JobListFilterSectionModel>
    implements _$$_JobListFilterSectionModelCopyWith<$Res> {
  __$$_JobListFilterSectionModelCopyWithImpl(
      _$_JobListFilterSectionModel _value,
      $Res Function(_$_JobListFilterSectionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filteredOptions = null,
    Object? isExpanded = null,
    Object? checkedOptions = null,
  }) {
    return _then(_$_JobListFilterSectionModel(
      filteredOptions: null == filteredOptions
          ? _value._filteredOptions
          : filteredOptions // ignore: cast_nullable_to_non_nullable
              as List<JobListFilterModel>,
      isExpanded: null == isExpanded
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
      checkedOptions: null == checkedOptions
          ? _value._checkedOptions
          : checkedOptions // ignore: cast_nullable_to_non_nullable
              as List<JobListFilterModel>,
    ));
  }
}

/// @nodoc

class _$_JobListFilterSectionModel implements _JobListFilterSectionModel {
  const _$_JobListFilterSectionModel(
      {required final List<JobListFilterModel> filteredOptions,
      required this.isExpanded,
      required final List<JobListFilterModel> checkedOptions})
      : _filteredOptions = filteredOptions,
        _checkedOptions = checkedOptions;

  final List<JobListFilterModel> _filteredOptions;
  @override
  List<JobListFilterModel> get filteredOptions {
    if (_filteredOptions is EqualUnmodifiableListView) return _filteredOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredOptions);
  }

  @override
  final bool isExpanded;
  final List<JobListFilterModel> _checkedOptions;
  @override
  List<JobListFilterModel> get checkedOptions {
    if (_checkedOptions is EqualUnmodifiableListView) return _checkedOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_checkedOptions);
  }

  @override
  String toString() {
    return 'JobListFilterSectionModel(filteredOptions: $filteredOptions, isExpanded: $isExpanded, checkedOptions: $checkedOptions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JobListFilterSectionModel &&
            const DeepCollectionEquality()
                .equals(other._filteredOptions, _filteredOptions) &&
            (identical(other.isExpanded, isExpanded) ||
                other.isExpanded == isExpanded) &&
            const DeepCollectionEquality()
                .equals(other._checkedOptions, _checkedOptions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_filteredOptions),
      isExpanded,
      const DeepCollectionEquality().hash(_checkedOptions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JobListFilterSectionModelCopyWith<_$_JobListFilterSectionModel>
      get copyWith => __$$_JobListFilterSectionModelCopyWithImpl<
          _$_JobListFilterSectionModel>(this, _$identity);
}

abstract class _JobListFilterSectionModel implements JobListFilterSectionModel {
  const factory _JobListFilterSectionModel(
          {required final List<JobListFilterModel> filteredOptions,
          required final bool isExpanded,
          required final List<JobListFilterModel> checkedOptions}) =
      _$_JobListFilterSectionModel;

  @override
  List<JobListFilterModel> get filteredOptions;
  @override
  bool get isExpanded;
  @override
  List<JobListFilterModel> get checkedOptions;
  @override
  @JsonKey(ignore: true)
  _$$_JobListFilterSectionModelCopyWith<_$_JobListFilterSectionModel>
      get copyWith => throw _privateConstructorUsedError;
}
