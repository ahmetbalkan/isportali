import 'package:isportal/blocs/cv_page_cubit/parts/education_cubit/education_state.dart';
import 'package:isportal/data/models/cv_models/cv_models/education_model/education_model.dart';
import 'package:isportal/data/models/cv_models/cv_models/education_model/education_selectable_data.dart';
import 'package:isportal/data/models/cv_models/lookup_models/cv_data_model.dart';
import 'package:isportal/data/repositories/cv_page/education_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:isportal/utils/other_extention.dart';

class EducationCubit extends Cubit<EducationState> {
  EducationCubit({
    required EducationRepository educationRepository,
    required String cvID,
  })  : _educationRepository = educationRepository,
        _cvID = cvID,
        super(EducationState(
          educationSelectableDataModel: EducationSelectableDataModel(),
          educationActiveStatus: const EducationActiveStatus.initial(),
          editingEducation: EducationModel(),
          educationModelList: [],
          educationLevelStatus: 0,
          cityError: false,
          educatlionLevelError: false,
          schoolError: false,
          universityError: false,
          universitydepartmentError: false,
          graduationGradeError: false,
          graduationYearError: false,
          status: const EducationStatus.loaded(),
        )) {
    getSelectableData();
    getEducation();
  }

  final EducationRepository _educationRepository;
  final String _cvID;

  Future<void> addEducation(
    FormGroup form,
    TextEditingController educationlevelController,
    TextEditingController universityController,
    TextEditingController universitydepartmentController,
    TextEditingController cityController,
  ) async {
    CvDataModel defaultCvDataModel = CvDataModel(value: 0, name: "");
    var educationlevelstatus = state.educationLevelStatus;

    try {
      state.educationActiveStatus.when(
        edit: () async {
          if (educationlevelController.text.isEmpty) {
            emit(state.copyWith(educatlionLevelError: true));
          } else {
            emit(state.copyWith(educatlionLevelError: false));
          }

          if (educationlevelstatus <= 2) {
            var value = form.control('schoolnametext').value;
            if (value == null || value == "") {
              emit(state.copyWith(schoolError: true));
            } else {
              emit(state.copyWith(schoolError: false));
            }
          }
          if (educationlevelstatus == 3) {
            var value = form.control('schoolnametext').value;
            if (value == null || value == "") {
              emit(state.copyWith(schoolError: true));
            } else {
              emit(state.copyWith(schoolError: false));
            }
            if (universitydepartmentController.text.isEmpty) {
              emit(state.copyWith(universitydepartmentError: true));
            } else {
              emit(state.copyWith(universitydepartmentError: false));
            }
          }

          if (educationlevelstatus > 3) {
            if (universityController.text.isEmpty) {
              emit(state.copyWith(schoolError: true));
            } else {
              emit(state.copyWith(schoolError: false));
            }

            if (universitydepartmentController.text.isEmpty) {
              emit(state.copyWith(universitydepartmentError: true));
            } else {
              emit(state.copyWith(universitydepartmentError: false));
            }
          }

          if (cityController.text.isEmpty) {
            emit(state.copyWith(cityError: true));
          } else {
            emit(state.copyWith(cityError: false));
          }

          var graduationyear = form.control('graduationyear').value;
          if (graduationyear == null || graduationyear == "") {
            emit(state.copyWith(graduationYearError: true));
          } else {
            emit(state.copyWith(graduationYearError: false));
          }

          var graduationGrade = form.control('graduationGrade').value;
          if (graduationGrade == null || graduationGrade == "") {
            emit(state.copyWith(graduationGradeError: true));
          } else {
            emit(state.copyWith(graduationGradeError: false));
          }

          if (state.cityError == false &&
              state.universitydepartmentError == false &&
              state.schoolError == false &&
              state.educatlionLevelError == false &&
              state.graduationGradeError == false &&
              state.graduationYearError == false) {
            EducationModel educationModel = state.editingEducation!;
            var graduationYear = form.control('graduationyear').value;
            var graduationGrade = form.control('graduationGrade').value;
            var description = form.control('description').value;
            var isstillstudent = form.control('isstillstudent').value;
            if (educationlevelstatus <= 2) {
              var data = {
                "id": educationModel.id!,
                "cvID": educationModel.cvID!,
                "EducationLevel": state
                    .educationSelectableDataModel.educationLevel
                    ?.firstWhereName(educationlevelController.text),
                "Department": {"name": "", "value": "", "parentID": 0},
                "School": educationlevelstatus > 3
                    ? state.educationSelectableDataModel.university
                        ?.firstWhereName(universityController.text)
                    : CvDataModel(
                        value: 0,
                        name: form.control('schoolnametext').value ?? ""),
                "City": state.educationSelectableDataModel.city
                        ?.firstWhereName(cityController.text) ??
                    defaultCvDataModel,
                "Country": {
                  "name": "T\u00FCrkiye",
                  "value": 73,
                  "parentID": 0,
                },
                "GraduationYear": graduationYear,
                "GraduationGrade": graduationGrade,
                "IsStillStudent": isstillstudent,
                "Description": description
              };

              var result = await _educationRepository.editEducation(data);
              if (result) {
                emit(state.copyWith(
                    status: const EducationStatus.loading(),
                    educationActiveStatus:
                        const EducationActiveStatus.initial()));
                await getEducation();
                emit(state.copyWith(status: const EducationStatus.loaded()));
              }
            } /*else if (educationlevelstatus == 3) {
              var graduationYear = form.control('graduationyear').value;
              var graduationGrade = form.control('graduationGrade').value;
              var description = form.control('description').value;

              var data = {
                "id": educationModel.id!,
                "cvID": educationModel.cvID!,
                "EducationLevel": state
                    .educationSelectableDataModel.educationLevel
                    ?.firstWhereName(educationlevelController.text),
                "Department": state
                    .educationSelectableDataModel.universityDepartment
                    ?.firstWhereName(universitydepartmentController.text),
                "School": educationlevelstatus > 3
                    ? state.educationSelectableDataModel.university
                        ?.firstWhereName(universityController.text)
                    : CvDataModel(
                        value: 0,
                        name: form.control('schoolnametext').value ?? ""),
                "City": state.educationSelectableDataModel.city
                        ?.firstWhereName(cityController.text) ??
                    defaultCvDataModel,
                "Country": {
                  "name": "T\u00FCrkiye",
                  "value": 73,
                  "parentID": 0,
                },
                "GraduationYear": graduationYear,
                "GraduationGrade": graduationGrade,
                "IsStillStudent": false,
                "Description": description
              };

              var result = await _educationRepository.editEducation(data);

              if (result) {
                emit(state.copyWith(
                    status: EducationStatus.loading(),
                    educationActiveStatus:
                        const EducationActiveStatus.initial()));
                await getEducation();
                emit(state.copyWith(status: const EducationStatus.loaded()));
              }
            }*/
            else {
              var graduationYear = form.control('graduationyear').value;
              var graduationGrade = form.control('graduationGrade').value;
              var description = form.control('description').value;
              var isstillstudent = form.control('isstillstudent').value;
              var data = {
                "id": educationModel.id!,
                "cvID": educationModel.cvID!,
                "EducationLevel": state
                    .educationSelectableDataModel.educationLevel
                    ?.firstWhereName(educationlevelController.text),
                "Department": {"name": "", "value": "", "parentID": 0},
                "School": educationlevelstatus >= 3
                    ? state.educationSelectableDataModel.university
                        ?.firstWhereName(universityController.text)
                    : CvDataModel(
                        value: 0,
                        name: form.control('schoolnametext').value ?? ""),
                "City": state.educationSelectableDataModel.city
                        ?.firstWhereName(cityController.text) ??
                    defaultCvDataModel,
                "Country": {
                  "name": "T\u00FCrkiye",
                  "value": 73,
                  "parentID": 0,
                },
                "GraduationYear": graduationYear,
                "GraduationGrade": graduationGrade,
                "IsStillStudent": isstillstudent,
                "Description": description
              };

              var result = await _educationRepository.editEducation(data);

              if (result) {
                emit(state.copyWith(
                    status: const EducationStatus.loading(),
                    educationActiveStatus:
                        const EducationActiveStatus.initial()));
                await getEducation();
                emit(state.copyWith(status: const EducationStatus.loaded()));
              }
            }
          }
        },
        add: () async {
          if (educationlevelController.text.isEmpty) {
            emit(state.copyWith(educatlionLevelError: true));
          } else {
            emit(state.copyWith(educatlionLevelError: false));
          }

          if (educationlevelstatus <= 2) {
            var value = form.control('schoolnametext').value;
            if (value == null || value == "") {
              emit(state.copyWith(schoolError: true));
            } else {
              emit(state.copyWith(schoolError: false));
            }
          }
          if (educationlevelstatus == 3) {
            var value = form.control('schoolnametext').value;
            if (value == null || value == "") {
              emit(state.copyWith(schoolError: true));
            } else {
              emit(state.copyWith(schoolError: false));
            }
            if (universitydepartmentController.text.isEmpty) {
              emit(state.copyWith(universitydepartmentError: true));
            } else {
              emit(state.copyWith(universitydepartmentError: false));
            }
          }

          if (educationlevelstatus > 3) {
            if (universityController.text.isEmpty) {
              emit(state.copyWith(schoolError: true));
            } else {
              emit(state.copyWith(schoolError: false));
            }

            if (universitydepartmentController.text.isEmpty) {
              emit(state.copyWith(universitydepartmentError: true));
            } else {
              emit(state.copyWith(universitydepartmentError: false));
            }
          }

          if (cityController.text.isEmpty) {
            emit(state.copyWith(cityError: true));
          } else {
            emit(state.copyWith(cityError: false));
          }

          var graduationyear = form.control('graduationyear').value;
          if (graduationyear == null || graduationyear == "") {
            emit(state.copyWith(graduationYearError: true));
          } else {
            emit(state.copyWith(graduationYearError: false));
          }

          var graduationGrade = form.control('graduationGrade').value;
          if (graduationGrade == null || graduationGrade == "") {
            emit(state.copyWith(graduationGradeError: true));
          } else {
            emit(state.copyWith(graduationGradeError: false));
          }

          if (state.cityError == false &&
              state.universitydepartmentError == false &&
              state.schoolError == false &&
              state.educatlionLevelError == false &&
              state.graduationGradeError == false &&
              state.graduationYearError == false) {
            if (educationlevelstatus <= 2) {
              var edulevel = state.educationSelectableDataModel.educationLevel
                  ?.firstWhereName(educationlevelController.text);

              var school = educationlevelstatus > 3
                  ? state.educationSelectableDataModel.university
                      ?.firstWhereName(universityController.text)
                  : CvDataModel(
                      value: 0,
                      name: form.control('schoolnametext').value ?? "");
              var city = state.educationSelectableDataModel.city
                      ?.firstWhereName(cityController.text) ??
                  defaultCvDataModel;

              var graduationYear = form.control('graduationyear').value;
              var graduationGrade = form.control('graduationGrade').value;
              var description = form.control('description').value;
              var data = EducationModel(
                  id: 0,
                  cvID: int.parse(_cvID),
                  educationLevel: edulevel,
                  department: CvDataModel(
                    name: "",
                    value: 73,
                    parentID: 0,
                  ),
                  school: school,
                  city: city,
                  country: CvDataModel(
                    name: "T\u00FCrkiye",
                    value: 73,
                    parentID: 0,
                  ),
                  graduationYear: graduationYear,
                  graduationGrade: graduationGrade,
                  description: description,
                  isStillStudent: false);

              var result = await _educationRepository.addEducation(data);

              if (result) {
                List<EducationModel> updatedEducationModelList = List.from(
                    state.educationModelList ?? []); // listeyi kopyalama
                updatedEducationModelList
                    .add(data); // yeni eğitim modelini ekleme
                emit(state.copyWith(
                    educationModelList:
                        updatedEducationModelList, // yeni listeyi duruma ekleme
                    educationActiveStatus:
                        const EducationActiveStatus.initial()));
              }
            } else if (educationlevelstatus == 3) {
              var edulevel = state.educationSelectableDataModel.educationLevel
                  ?.firstWhereName(educationlevelController.text);
              var department = state
                  .educationSelectableDataModel.universityDepartment
                  ?.firstWhereName(universitydepartmentController.text);
              var school = educationlevelstatus > 3
                  ? state.educationSelectableDataModel.university
                      ?.firstWhereName(universityController.text)
                  : CvDataModel(
                      value: 0,
                      name: form.control('schoolnametext').value ?? "");
              var city = state.educationSelectableDataModel.city
                      ?.firstWhereName(cityController.text) ??
                  defaultCvDataModel;

              var graduationYear = form.control('graduationyear').value;
              var graduationGrade = form.control('graduationGrade').value;
              var description = form.control('description').value;

              var data = EducationModel(
                  id: 0,
                  cvID: int.parse(_cvID),
                  educationLevel: edulevel,
                  department: department,
                  school: school,
                  city: city,
                  country: CvDataModel(
                    name: "T\u00FCrkiye",
                    value: 73,
                    parentID: 0,
                  ),
                  graduationYear: graduationYear,
                  graduationGrade: graduationGrade,
                  description: description,
                  isStillStudent: false);

              var result = await _educationRepository.addEducation(data);

              print("lower${data.department}");

              if (result) {
                List<EducationModel> updatedEducationModelList = List.from(
                    state.educationModelList ?? []); // listeyi kopyalama
                updatedEducationModelList
                    .add(data); // yeni eğitim modelini ekleme
                emit(state.copyWith(
                    educationModelList:
                        updatedEducationModelList, // yeni listeyi duruma ekleme
                    educationActiveStatus:
                        const EducationActiveStatus.initial()));
              }
            } else {
              var edulevel = state.educationSelectableDataModel.educationLevel
                  ?.firstWhereName(educationlevelController.text);
              var department = state
                  .educationSelectableDataModel.universityDepartment
                  ?.firstWhereName(universitydepartmentController.text);
              var school = educationlevelstatus > 3
                  ? state.educationSelectableDataModel.university
                      ?.firstWhereName(universityController.text)
                  : CvDataModel(
                      value: 0,
                      name: form.control('schoolnametext').value ?? "");
              var city = state.educationSelectableDataModel.city
                      ?.firstWhereName(cityController.text) ??
                  defaultCvDataModel;
              var graduationYear = form.control('graduationyear').value;
              var graduationGrade = form.control('graduationGrade').value;
              var description = form.control('description').value;

              var data = EducationModel(
                  id: 0,
                  cvID: int.parse(_cvID),
                  educationLevel: edulevel,
                  department: department,
                  school: school,
                  city: city,
                  country: CvDataModel(
                    name: "T\u00FCrkiye",
                    value: 73,
                    parentID: 0,
                  ),
                  graduationYear: graduationYear,
                  graduationGrade: graduationGrade,
                  description: description,
                  isStillStudent: false);

              var result = await _educationRepository.addEducation(data);

              if (result) {
                List<EducationModel> updatedEducationModelList = List.from(
                    state.educationModelList ?? []); // listeyi kopyalama
                updatedEducationModelList
                    .add(data); // yeni eğitim modelini ekleme
                emit(state.copyWith(
                    educationModelList:
                        updatedEducationModelList, // yeni listeyi duruma ekleme
                    educationActiveStatus:
                        const EducationActiveStatus.initial()));
              }
            }
          }
        },
        initial: () {},
      );
    } catch (e) {
      emit(state.copyWith(status: const EducationStatus.error()));
    }
  }

  Future<void> deleteEducation() async {
    emit(state.copyWith(status: const EducationStatus.loading()));
    try {
      await _educationRepository.deleteEducation(
        cvID: state.editingEducation?.cvID.toString(),
        educationID: state.editingEducation?.id.toString(),
        educationLevel:
            state.editingEducation?.educationLevel?.value.toString(),
      );

      await getEducation();

      emit(state.copyWith(
          status: const EducationStatus.loaded(),
          educationActiveStatus: const EducationActiveStatus.initial()));
    } catch (e) {
      emit(state.copyWith(status: const EducationStatus.error()));
    }
  }

  changeAddStatus() {
    emit(state.copyWith(
      educationActiveStatus: const EducationActiveStatus.add(),
    ));
  }

  editEducation(EducationModel editableModel) {
    print("editable model$editableModel");
    emit(state.copyWith(
      editingEducation: editableModel,
      educationLevelStatus: editableModel.educationLevel?.value ?? 0,
      educationActiveStatus: const EducationActiveStatus.edit(),
    ));
  }

  closeEditEducation() {
    emit(state.copyWith(
        editingEducation: EducationModel(),
        status: const EducationStatus.loaded(),
        educationActiveStatus: const EducationActiveStatus.initial()));
  }

  Future<void> getSelectableData() async {
    emit(state.copyWith(status: const EducationStatus.loading()));
    try {
      var value = await _educationRepository.getSelectableValue();

      emit(state.copyWith(
          educationSelectableDataModel: value,
          status: const EducationStatus.loaded()));
    } catch (e) {
      emit(state.copyWith(status: const EducationStatus.error()));
    }
  }

  Future<void> getEducation() async {
    try {
      emit(state.copyWith(status: const EducationStatus.loading()));
      var value = await _educationRepository.getEducationList(cvID: _cvID);

      emit(state.copyWith(
          educationModelList: value, status: const EducationStatus.loaded()));
    } catch (e) {
      emit(state.copyWith(status: const EducationStatus.error()));
    }
  }

  changeEduLevelStatus(int value) {
    emit(state.copyWith(educationLevelStatus: value));
  }

  CvDataModel? _getCvDataModel(String value) {
    return state.educationSelectableDataModel.educationLevel
        ?.firstWhere((item) => item.name == value);
  }
}
