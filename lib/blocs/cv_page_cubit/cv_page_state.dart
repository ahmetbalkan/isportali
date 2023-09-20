import 'package:isportal/data/models/cv_models/cv_list_model/cv_list_model.dart';
import 'package:isportal/data/models/cv_models/cv_models/main_model/main_cv_model.dart';
import 'package:isportal/data/models/cv_models/lookup_models/cv_create_selectable_data_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cv_page_state.freezed.dart';

@freezed
class CvPageState with _$CvPageState {
  const factory CvPageState(
      {required CvPageStatus status,
      required List<CvListModel> cvlist,
      required MainCvModel mainCvModel,
      required CvCreateSelectableDataModel cvCreateDataModel,
      required bool? isEditing,
      required List<Map<String, dynamic>> otherInfo}) = _CvPageState;

  const CvPageState._();
}

@freezed
class CvPageStatus with _$CvPageStatus {
  const factory CvPageStatus.loading() = _loading;
  const factory CvPageStatus.loaded() = _loaded;
}
