import 'package:freezed_annotation/freezed_annotation.dart';

part 'not_found_model.freezed.dart';
part 'not_found_model.g.dart';

@freezed
class NotFoundModal with _$NotFoundModal {
  factory NotFoundModal({
    @JsonKey(name: 'QueryTypePosition')
        required String? queryTypePosition,
    @JsonKey(name: 'QueryTypeComputerKnowledge')
        required String? queryTypeComputerKnowledge,
    @JsonKey(name: 'QueryTypeUniversity')
        required String? queryTypeUniversity,
    @JsonKey(name: 'QueryTypeUniversityDepartment')
        required String? queryTypeUniversityDepartment,
    @JsonKey(name: 'QueryTypeHighSchoolDepartment')
        required String? queryTypeHighSchoolDepartment,
    @JsonKey(name: 'QueryTypeHighSchoolType')
        required String? queryTypeHighSchoolType,
    @JsonKey(name: 'NotFoundModalTitle')
        required String? notFoundModalTitle,
    @JsonKey(name: 'NotFoundModalAlertInfo')
        required String? notFoundModalAlertInfo,
    @JsonKey(name: 'MessageHasBeenSent')
        required String? messageHasBeenSent,
    @JsonKey(name: 'ResultText')
        required String? resultText,
    @JsonKey(name: 'EnterText')
        required String? enterText,
  }) = _NotFoundModal;

  factory NotFoundModal.fromJson(Map<String, dynamic> json) =>
      _$NotFoundModalFromJson(json);
}
