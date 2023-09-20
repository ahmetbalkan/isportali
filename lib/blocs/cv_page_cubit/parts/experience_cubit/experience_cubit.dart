import 'package:isportal/blocs/cv_page_cubit/parts/experience_cubit/experience_state.dart';
import 'package:isportal/data/models/cv_models/cv_models/experience_model/education_selectable_data.dart';
import 'package:isportal/data/models/cv_models/cv_models/experience_model/experience_model.dart';
import 'package:isportal/data/repositories/cv_page/experience_repository.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class ExperienceCubit extends Cubit<ExperienceState> {
  ExperienceCubit({
    required ExperienceRepository experienceRepository,
  })  : _experienceRepository = experienceRepository,
        super(ExperienceState(
          experienceSelectableDataModel: ExperienceSelectableDataModel(),
          experienceActiveStatus: const ExperienceActiveStatus.edit(),
          editingEducation: ExperienceModel(),
          experienceModelList: [],
          experienceLevelStatus: 3,
          status: const ExperienceStatus.loaded(),
        )) {
    getSelectableData();
  }

  final ExperienceRepository _experienceRepository;

  Future<void> getSelectableData() async {
    emit(state.copyWith(status: const ExperienceStatus.loading()));
    try {
      var value = await _experienceRepository.getSelectableValue();
      print("experience$value");

      emit(state.copyWith(
          experienceSelectableDataModel: value,
          status: const ExperienceStatus.loaded()));
    } catch (e) {
      emit(state.copyWith(status: const ExperienceStatus.error()));
    }
  }
}
