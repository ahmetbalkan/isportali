import 'package:isportal/blocs/job_list_cubit/job_list_state.dart';
import 'package:isportal/data/models/job_model/job_list_model.dart';
import 'package:isportal/data/repositories/job_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class JobListCubit extends Cubit<JobListState> {
  JobListCubit({
    required JobRepository jobRepository,
  })  : _jobRepository = jobRepository,
        super(const JobListState(
          jobList: [],
          city: "0",
          searchError: "",
          filterError: "",
          position: "",
          index: 0,
          jobListStatus: JobListStatus.loading(),
        )) {
    searchJob(city: "0", pageindex: state.index.toString());
  }

  final JobRepository _jobRepository;

  searchJob({String? position, String? city, String? pageindex}) async {
    try {
      List<JobListModel>? jobListModel = await _jobRepository.searchJob(
          pageIndex: state.index.toString(), city: "34", position: position);
      if (jobListModel == null || jobListModel.isEmpty) {
        emit(state.copyWith(jobListStatus: const JobListStatus.nullData()));
      } else {
        List<JobListModel> updatedJobList = List.from(state.jobList);
        updatedJobList.addAll(jobListModel);
        emit(state.copyWith(
            jobList: updatedJobList,
            jobListStatus: const JobListStatus.loaded()));
      }
    } catch (e) {
      emit(state.copyWith(jobListStatus: const JobListStatus.error()));
    }
  }

  increasedIndex() {
    emit(state.copyWith(index: state.index + 1));

    searchJob();
  }

  showError(String error, String type) {
    if (type == "search") {
      emit(state.copyWith(searchError: error));
    } else {
      emit(state.copyWith(filterError: error));
    }
  }
}


/*import 'package:isportal/blocs/job_list_cubit/job_list_state.dart';
import 'package:isportal/data/models/job_list_model/filter_data_model/job_list_filter_model.dart';
import 'package:isportal/data/models/job_list_model/joblist_filter_section_model/joblist_filter_section_model.dart';
import 'package:isportal/data/models/job_model/job_list_model.dart';
import 'package:isportal/data/repositories/job_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class JobListCubit extends Cubit<JobListState> {
  JobListCubit({
    required JobRepository jobRepository,
  })  : _jobRepository = jobRepository,
        super(const JobListState(
          index: 0,
          jobList: [],
          searchError: "",
          filterError: "",
          keyword: "",
          sectorList: JobListFilterSectionModel(
              checkedOptions: [], filteredOptions: [], isExpanded: false),
          workingType: JobListFilterSectionModel(
              checkedOptions: [], filteredOptions: [], isExpanded: true),
          experience: JobListFilterSectionModel(
              checkedOptions: [], filteredOptions: [], isExpanded: true),
          city: JobListFilterSectionModel(
              checkedOptions: [], filteredOptions: [], isExpanded: true),
          country: JobListFilterSectionModel(
              checkedOptions: [], filteredOptions: [], isExpanded: false),
          category: JobListFilterSectionModel(
              checkedOptions: [], filteredOptions: [], isExpanded: false),
          jobListStatus: JobListStatus.loading(),
        )) {
    searchJob(city: "0", pageindex: state.index.toString());
  }

  JobRepository _jobRepository;

  searchJob({String? position, String? city, String? pageindex}) async {
    try {
      List<JobListModel>? jobListModel = await _jobRepository.searchJob(
          pageIndex: state.index.toString(),
          city: ["1", "2"],
          position: position);
      if (jobListModel == null || jobListModel.isEmpty) {
        emit(state.copyWith(jobListStatus: const JobListStatus.nullData()));
      } else {
        List<JobListModel> updatedJobList = List.from(state.jobList);
        updatedJobList.addAll(jobListModel);
        emit(state.copyWith(
            jobList: updatedJobList,
            jobListStatus: const JobListStatus.loaded()));
      }
    } catch (e) {
      emit(state.copyWith(jobListStatus: const JobListStatus.error()));
    }
  }

  filterSearchJob({
    List<String>? cityList,
  }) async {
    try {
      List<JobListModel>? jobListModel = await _jobRepository.searchJob(
        pageIndex: state.index.toString(),
        city: cityList, // bu bir liste oldu
      );
      print(jobListModel);
      if (jobListModel == null || jobListModel.isEmpty) {
        emit(state.copyWith(jobListStatus: const JobListStatus.nullData()));
      } else {
        List<JobListModel> updatedJobList = List.from(state.jobList);
        updatedJobList.addAll(jobListModel);
        emit(state.copyWith(
            jobList: updatedJobList,
            jobListStatus: const JobListStatus.loaded()));
      }
    } catch (e) {
      emit(state.copyWith(jobListStatus: const JobListStatus.error()));
    }
  }

  increasedIndex() {
    emit(state.copyWith(index: state.index + 1));

    searchJob();
  }

  showError(String error, String type) {
    if (type == "search") {
      emit(state.copyWith(searchError: error));
    } else {
      emit(state.copyWith(filterError: error));
    }
  }

  getFilterData() async {
    try {
      var city = await _jobRepository.filterCity();
      var category = await _jobRepository.filterCategory();
      var sector = await _jobRepository.filterSector();
      var workingType = await _jobRepository.filterWorkingType();
      var experience = await _jobRepository.filterExperience();

      emit(state.copyWith(
        city: state.city.copyWith(
          filteredOptions: List.from(state.city.filteredOptions)
            ..addAll(city ?? []),
        ),
        category: state.category.copyWith(
          filteredOptions: List.from(state.category.filteredOptions)
            ..addAll(category ?? []),
        ),
        sectorList: state.sectorList.copyWith(
          filteredOptions: List.from(state.sectorList.filteredOptions)
            ..addAll(sector ?? []),
        ),
        workingType: state.workingType.copyWith(
          filteredOptions: List.from(state.workingType.filteredOptions)
            ..addAll(workingType ?? []),
        ),
        experience: state.experience.copyWith(
          filteredOptions: List.from(state.experience.filteredOptions)
            ..addAll(experience ?? []),
        ),
      ));
    } catch (e) {
      print("getFilterData " + e.toString());
    }
  }

  addOrRemoveOption(String section, JobListFilterModel jobListFilterModel) {
    switch (section) {
      case "city":
        List<JobListFilterModel> newCheckedOptions =
            List.from(state.city.checkedOptions);
        if (newCheckedOptions.contains(jobListFilterModel)) {
          newCheckedOptions.remove(jobListFilterModel);
        } else {
          newCheckedOptions.add(jobListFilterModel);
        }
        emit(state.copyWith(
          city: state.city.copyWith(checkedOptions: newCheckedOptions),
        ));
        break;
      // İşlemi diğer durumlar (country, sector, category) için tekrarlayın.
      default:
    }
  }
}
*/