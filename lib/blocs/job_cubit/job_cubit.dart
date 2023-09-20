import 'package:isportal/blocs/job_cubit/job_state.dart';
import 'package:isportal/data/models/job_model/job_model.dart';
import 'package:isportal/data/repositories/job_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class JobCubit extends Cubit<JobState> {
  JobCubit({
    required JobRepository jobRepository,
  })  : _jobRepository = jobRepository,
        super(const JobState(
          errorMessage: "",
          dataModel: null,
          jobStatus: JobStatus.loading(),
        ));

  final JobRepository _jobRepository;

  getSingleJob(String jobId) async {
    emit(state.copyWith(jobStatus: const JobStatus.loading()));

    try {
      JobModel? jobModel = await _jobRepository.getSingleAds(jobId);

      if (jobModel?.data?.companyName == null) {
        emit(state.copyWith(jobStatus: const JobStatus.nullData()));
      } else {
        emit(state.copyWith(
            dataModel: jobModel?.data, jobStatus: const JobStatus.loaded()));
      }
    } catch (e) {
      emit(state.copyWith(jobStatus: const JobStatus.error()));
    }
  }
}
