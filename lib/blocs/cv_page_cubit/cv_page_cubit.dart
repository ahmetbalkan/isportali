import 'package:isportal/blocs/cv_page_cubit/cv_page_state.dart';
import 'package:isportal/data/models/cv_models/cv_list_model/cv_list_model.dart';
import 'package:isportal/data/models/cv_models/cv_models/attribute_group_model/attribute_answer_model.dart';
import 'package:isportal/data/models/cv_models/cv_models/main_model/main_cv_model.dart';
import 'package:isportal/data/models/cv_models/lookup_models/cv_create_selectable_data_model.dart';
import 'package:isportal/data/repositories/cv_page_repository.dart';
import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CvPageCubit extends Cubit<CvPageState> {
  CvPageCubit({
    required CvRepository cvRepository,
  })  : _cvRepository = cvRepository,
        super(CvPageState(
          isEditing: false,
          otherInfo: [],
          cvCreateDataModel: CvCreateSelectableDataModel(),
          mainCvModel: MainCvModel(),
          cvlist: [],
          status: const CvPageStatus.loaded(),
        ));

  final CvRepository _cvRepository;

  Future<void> editCvPagermation() async {
    emit(state.copyWith(status: const CvPageStatus.loading()));
    emit(state.copyWith(isEditing: state.isEditing == true ? false : true));
    emit(state.copyWith(status: const CvPageStatus.loaded()));
  }

  Future<void> closeCvPagermation() async {
    emit(state.copyWith(isEditing: false));
  }

  Future<void> saveCvPagermation() async {
    emit(state.copyWith(status: const CvPageStatus.loading()));
    emit(state.copyWith(isEditing: false));
    emit(state.copyWith(status: const CvPageStatus.loaded()));
  }

  Future<void> getCvList() async {
    emit(state.copyWith(status: const CvPageStatus.loading()));
    try {
      List<CvListModel>? cvlist = await _cvRepository.getCvList();
      emit(state.copyWith(cvlist: cvlist ?? []));
    } catch (e) {
      print("getCvList Bloc error $e");
    }
    emit(state.copyWith(status: const CvPageStatus.loaded()));
  }

  Future<void> getCv(String cvID) async {
    emit(state.copyWith(status: const CvPageStatus.loading()));
    try {
      MainCvModel mainCvModel = await _cvRepository.getCv(cvID: cvID);
      emit(state.copyWith(mainCvModel: mainCvModel));
      _otherInformation();
    } catch (e) {
      print("getCvList Bloc error $e");
    }
    emit(state.copyWith(status: const CvPageStatus.loaded()));
  }

  _otherInformation() {
    List<Map<String, dynamic>> data = [];
    var cv = state.mainCvModel;
    String? nightshift =
        _getAttributeAnswer(3, cv.cvModel!.attributeAnswerList!);
    String? overtime = _getAttributeAnswer(2, cv.cvModel!.attributeAnswerList!);
    data.add({"key": "Gece Vardiyası", "value": nightshift});
    data.add({"key": "Mesai", "value": overtime});
    data.add({"key": "Website", "value": cv.cvModel?.otherInfo?.website ?? ""});
    data.add({
      "key": "TC Kimlik No",
      "value": cv.cvModel?.otherInfo?.idNumber ?? ""
    });

    data.add({
      "key": "Sigara Durumu",
      "value": cv.cvModel?.otherInfo?.smoker?.name ?? ""
    });
    data.add({
      "key": "Ehliyet",
      "value": cv.cvModel?.otherInfo?.drivingLicenseList
              ?.map((license) => license.name)
              .join(', ') ??
          "Boş"
    });
    data.add({
      "key": "Twitter Hesabı",
      "value": cv.cvModel?.socialNetworkAccountsModel?.twitter ?? "Boş"
    });
    data.add({
      "key": "Medeni Durumu",
      "value": cv.cvModel?.otherInfo?.maritalStatus?.name ?? "Boş"
    });

    if (cv.cvModel?.otherInfo?.srcList == null ||
        cv.cvModel!.otherInfo!.srcList!.isEmpty) {
      data.add({"key": "SRC Belgesi", "value": "Evet"});
    } else {
      data.add({"key": "SRC Belgesi", "value": "Hayır"});
    }

    print("src len ${cv.cvModel!.otherInfo!.srcList!}");
    data.add({
      "key": "Sigara Durumu",
      "value": cv.cvModel?.otherInfo?.smoker?.name ?? "Boş"
    });

    emit(state.copyWith(otherInfo: data));
  }

  String? _getAttributeAnswer(
      int attributeID, List<AttributeAnswerModel> attributeAnswerList) {
    // Cevap listesinde eşleşen AttributeID'yi bul
    var matchingAnswer = attributeAnswerList
        .firstWhereOrNull((answer) => answer.attributeID == attributeID);

    return matchingAnswer?.attributeText;
  }
}
