import 'package:isportal/blocs/cv_page_cubit/parts/education_cubit/education_cubit.dart';
import 'package:isportal/blocs/cv_page_cubit/parts/education_cubit/education_state.dart';
import 'package:isportal/data/models/cv_models/lookup_models/cv_data_model.dart';
import 'package:isportal/dropdown/custom_dropdown.dart';
import 'package:isportal/public_widgets/buttons.dart';

import 'package:isportal/themes/constants/color_constants.dart';
import 'package:isportal/themes/constants/decoration_constant.dart';
import 'package:isportal/themes/constants/padding_constants.dart';
import 'package:isportal/utils/context_extention.dart';
import 'package:isportal/utils/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ActiveEducationInformationWidget extends StatefulWidget {
  const ActiveEducationInformationWidget({super.key});

  @override
  State<ActiveEducationInformationWidget> createState() =>
      _ActiveEducationInformationWidgetState();
}

class _ActiveEducationInformationWidgetState
    extends State<ActiveEducationInformationWidget> {
  late FormGroup form;

  late TextEditingController educationlevelController;
  late TextEditingController schoolnametypeController;
  late TextEditingController universityController;
  late TextEditingController universitydepartmentController;
  late TextEditingController cityController;
  late TextEditingController isStudentController;

  @override
  void initState() {
    var startValue = context.read<EducationCubit>().state.editingEducation;
    form = FormGroup({
      'schoolnametext': FormControl<String>(
        value: startValue?.school?.name ?? '',
      ),
      'graduationGrade': FormControl<String>(
        value: startValue?.graduationGrade,
      ),
      'graduationyear': FormControl<int>(
        value: startValue?.graduationYear,
      ),
      'isstillstudent': FormControl<bool>(
        value: startValue?.isStillStudent,
      ),
      'description': FormControl<String>(
        value: startValue?.description,
      ),
    });
    educationlevelController = TextEditingController();
    schoolnametypeController = TextEditingController();
    universityController = TextEditingController();
    universitydepartmentController = TextEditingController();
    cityController = TextEditingController();
    isStudentController = TextEditingController();

    educationlevelController.text = startValue?.educationLevel?.name ?? '';
    universityController.text = startValue?.school?.name ?? '';
    universitydepartmentController.text = startValue?.department?.name ?? '';
    cityController.text = startValue?.city?.name ?? '';

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EducationCubit, EducationState>(
      builder: (context, state) {
        return Container(
          decoration: DecorationConstants.greyBorderContainer
              .copyWith(color: const Color(0xFFFBFBFB)),
          child: Padding(
            padding: AppPaddings.allLarge(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Eğitim Bilgileri",
                      style: Theme.of(context).textTheme.titlebig1(context),
                    ),
                    Visibility(
                        visible: state.educationActiveStatus !=
                            const EducationActiveStatus.add(),
                        child: const SlideButtons()),
                  ],
                ),
                SizedBox(
                  height: context.heightSize20,
                ),
                ReactiveForm(
                  formGroup: form,
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: context.heightSize50,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: AppColors.grey, width: 0.5),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(5))),
                                child: CustomDropdown.search(
                                  fillColor: const Color(0xFFFBFBFB),
                                  controller: educationlevelController,
                                  onChanged: (value) {
                                    CvDataModel? selectedItem = state
                                        .educationSelectableDataModel
                                        .educationLevel
                                        ?.firstWhere(
                                            (item) => item.name == value);
                                    context
                                        .read<EducationCubit>()
                                        .changeEduLevelStatus(
                                            selectedItem?.value ?? 0);
                                  },
                                  items: state.educationSelectableDataModel
                                      .educationLevel
                                      ?.map((e) => e.name ?? '')
                                      .toList(),
                                  listItemStyle: Theme.of(context)
                                      .textTheme
                                      .title1(context),
                                  selectedStyle: Theme.of(context)
                                      .textTheme
                                      .title1(context),
                                  hintText:
                                      "Lütfen arama yapmak için eğitim seviyenizi seçiniz.",
                                  hintStyle: Theme.of(context)
                                      .textTheme
                                      .title1(context),
                                ),
                              ),
                              SizedBox(
                                height: context.heightSize05,
                              ),
                              Visibility(
                                visible: state.educatlionLevelError,
                                child: Column(
                                  children: [
                                    Text(
                                      "Boş bırakılamaz.",
                                      style: Theme.of(context)
                                          .textTheme
                                          .title1(context)
                                          .copyWith(color: Colors.red),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )),
                          SizedBox(
                            width: context.witdhSize05,
                          ),
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: context.heightSize50,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: AppColors.grey, width: 0.5),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(5))),
                                child: CustomDropdown.search(
                                  fillColor: const Color(0xFFFBFBFB),
                                  selectedStyle: Theme.of(context)
                                      .textTheme
                                      .title1(context),
                                  controller: cityController,
                                  items: state.educationSelectableDataModel.city
                                      ?.map((e) => e.name ?? '')
                                      .toList(),
                                  listItemStyle: Theme.of(context)
                                      .textTheme
                                      .title1(context),
                                  hintText:
                                      "Lütfen arama yapmak için şehir adınızı yazınız.",
                                  hintStyle: Theme.of(context)
                                      .textTheme
                                      .title1(context),
                                ),
                              ),
                              SizedBox(
                                height: context.heightSize05,
                              ),
                              Visibility(
                                visible: state.cityError,
                                child: Column(
                                  children: [
                                    Text(
                                      "Boş bırakılamaz.",
                                      style: Theme.of(context)
                                          .textTheme
                                          .title1(context)
                                          .copyWith(color: Colors.red),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )),
                        ],
                      ),
                      SizedBox(
                        height: context.heightSize30,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Visibility(
                            visible:
                                state.educationLevelStatus <= 3 ? true : false,
                            child: Expanded(
                                child: ReactiveTextField(
                              maxLines: 1,
                              validationMessages: {
                                'required': (error) => 'Boş bırakılamaz',
                              },
                              style:
                                  Theme.of(context).textTheme.title2(context),
                              formControlName: 'schoolnametext',
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: context.witdhSize10,
                                    horizontal: context.heightSize10),
                                hintText: 'Okul Adı Giriniz',
                                hintStyle:
                                    Theme.of(context).textTheme.title1(context),
                                labelText: 'Okul Adı',
                                labelStyle:
                                    Theme.of(context).textTheme.title1(context),
                                enabled: true,
                                border: const OutlineInputBorder(),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColors.primary, width: 2.0),
                                ),
                              ),
                            )),
                          ),
                          Visibility(
                            visible:
                                state.educationLevelStatus > 3 ? true : false,
                            child: Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    height: context.heightSize50,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: AppColors.grey, width: 0.5),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(5))),
                                    child: CustomDropdown.search(
                                      controller: universityController,
                                      selectedStyle: Theme.of(context)
                                          .textTheme
                                          .title1(context),
                                      items: state.educationSelectableDataModel
                                          .university
                                          ?.map((e) => e.name ?? '')
                                          .toList(),
                                      listItemStyle: Theme.of(context)
                                          .textTheme
                                          .title1(context),
                                      hintText:
                                          "Lütfen arama yapmak için üniversite adınızı yazınız.",
                                      hintStyle: Theme.of(context)
                                          .textTheme
                                          .title1(context),
                                    ),
                                  ),
                                  SizedBox(
                                    height: context.heightSize05,
                                  ),
                                  Visibility(
                                    visible: state.schoolError,
                                    child: Column(
                                      children: [
                                        Text(
                                          "Boş bırakılamaz.",
                                          style: Theme.of(context)
                                              .textTheme
                                              .title1(context)
                                              .copyWith(color: Colors.red),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: context.witdhSize05,
                          ),
                          Visibility(
                            visible:
                                state.educationLevelStatus >= 3 ? true : false,
                            child: Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    height: context.heightSize50,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: AppColors.grey, width: 0.5),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(5))),
                                    child: CustomDropdown.search(
                                      controller:
                                          universitydepartmentController,
                                      selectedStyle: Theme.of(context)
                                          .textTheme
                                          .title1(context),
                                      items: state.educationSelectableDataModel
                                          .universityDepartment
                                          ?.map((e) => e.name ?? '')
                                          .toList(),
                                      listItemStyle: Theme.of(context)
                                          .textTheme
                                          .title1(context),
                                      hintText:
                                          "Lütfen arama yapmak için üniversite adınızı yazınız.",
                                      hintStyle: Theme.of(context)
                                          .textTheme
                                          .title1(context),
                                    ),
                                  ),
                                  SizedBox(
                                    height: context.heightSize05,
                                  ),
                                  Visibility(
                                    visible: state.universitydepartmentError,
                                    child: Column(
                                      children: [
                                        Text(
                                          "Boş bırakılamaz.",
                                          style: Theme.of(context)
                                              .textTheme
                                              .title1(context)
                                              .copyWith(color: Colors.red),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: context.heightSize30,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                ReactiveTextField(
                                  maxLines: 1,
                                  validationMessages: {
                                    'required': (error) => 'Boş bırakılamaz',
                                  },
                                  keyboardType: TextInputType.number,
                                  inputFormatters: <TextInputFormatter>[
                                    FilteringTextInputFormatter.digitsOnly
                                  ],
                                  style: Theme.of(context)
                                      .textTheme
                                      .title2(context),
                                  formControlName: 'graduationGrade',
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: context.witdhSize10,
                                        horizontal: context.heightSize10),
                                    hintText: 'Not Ortalaması Giriniz',
                                    hintStyle: Theme.of(context)
                                        .textTheme
                                        .title1(context),
                                    labelText: 'Not Ortalaması',
                                    labelStyle: Theme.of(context)
                                        .textTheme
                                        .title1(context),
                                    enabled: true,
                                    border: const OutlineInputBorder(),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: AppColors.primary, width: 2.0),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: context.heightSize05,
                                ),
                                Visibility(
                                  visible: state.graduationGradeError,
                                  child: Column(
                                    children: [
                                      Text(
                                        "Boş bırakılamaz.",
                                        style: Theme.of(context)
                                            .textTheme
                                            .title1(context)
                                            .copyWith(color: Colors.red),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: context.witdhSize05,
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    children: [
                                      ReactiveTextField(
                                        maxLines: 1,
                                        validationMessages: {
                                          'required': (error) =>
                                              'Boş bırakılamaz',
                                        },
                                        keyboardType: TextInputType.number,
                                        inputFormatters: <TextInputFormatter>[
                                          FilteringTextInputFormatter.digitsOnly
                                        ],
                                        style: Theme.of(context)
                                            .textTheme
                                            .title2(context),
                                        formControlName: 'graduationyear',
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: context.witdhSize10,
                                              horizontal: context.heightSize10),
                                          hintText: 'Mezuniyet Yılı giriniz',
                                          hintStyle: Theme.of(context)
                                              .textTheme
                                              .title1(context),
                                          labelText: 'Mezuniyet Yılı',
                                          labelStyle: Theme.of(context)
                                              .textTheme
                                              .title1(context),
                                          enabled: true,
                                          border: const OutlineInputBorder(),
                                          focusedBorder:
                                              const OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: AppColors.primary,
                                                width: 2.0),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: context.heightSize05,
                                      ),
                                      Visibility(
                                        visible: state.graduationYearError,
                                        child: Column(
                                          children: [
                                            Text(
                                              "Boş bırakılamaz.",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .title1(context)
                                                  .copyWith(color: Colors.red),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Visibility(
                                  visible: state.educationLevelStatus > 3,
                                  child: SizedBox(
                                    width: context.witdhSize10,
                                  ),
                                ),
                                Visibility(
                                  visible: state.educationLevelStatus > 3,
                                  child: Expanded(
                                      flex: 1,
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: ReactiveCheckbox(
                                              formControlName: 'isstillstudent',
                                            ),
                                          ),
                                          Expanded(
                                            flex: 4,
                                            child: Text(
                                              "Hala Öğrenciyim.",
                                              textAlign: TextAlign.center,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .title1(context),
                                            ),
                                          ),
                                        ],
                                      )),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: context.heightSize30,
                      ),
                      ReactiveTextField<String>(
                        formControlName: 'description',
                        validationMessages: {
                          'required': (error) => 'Boş bırakılamaz',
                        },
                        style: Theme.of(context).textTheme.title2(context),
                        decoration: InputDecoration(
                          enabled: true,
                          hintText: 'Açıklama giriniz',
                          hintStyle:
                              Theme.of(context).textTheme.title1(context),
                          labelText: 'Açıklama',
                          labelStyle: Theme.of(context)
                              .textTheme
                              .title2(context)
                              .copyWith(),
                          suffixStyle: Theme.of(context)
                              .textTheme
                              .title2(context)
                              .copyWith(color: AppColors.primary),
                          border: const OutlineInputBorder(),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                                color: AppColors.primary, width: 2.0),
                          ),
                        ),
                        maxLines: 4,
                      ),
                      SizedBox(
                        height: context.heightSize30,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Spacer(
                            flex: 2,
                          ),
                          Expanded(
                            child: SizedBox(
                              height: context.heightSize50,
                              child: CustomOutlinedButton(
                                text: "Vazgeç",
                                onPressed: () {
                                  context
                                      .read<EducationCubit>()
                                      .closeEditEducation();
                                },
                                textStyle: Theme.of(context)
                                    .textTheme
                                    .title1(context)
                                    .copyWith(color: AppColors.primary),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: context.witdhSize10,
                          ),
                          Expanded(
                            child: SizedBox(
                              height: context.heightSize50,
                              child: CustomButton2(
                                text: "Kaydet",
                                onPressed: () {
                                  context.read<EducationCubit>().addEducation(
                                        form,
                                        educationlevelController,
                                        universityController,
                                        universitydepartmentController,
                                        cityController,
                                      );
                                },
                                textStyle: Theme.of(context)
                                    .textTheme
                                    .title1(context)
                                    .copyWith(color: AppColors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class SlideButtons extends StatefulWidget {
  const SlideButtons({super.key});

  @override
  _SlideButtonsState createState() => _SlideButtonsState();
}

class _SlideButtonsState extends State<SlideButtons> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedOpacity(
          duration: const Duration(milliseconds: 500),
          opacity: isExpanded ? 1.0 : 0.0,
          child: IconButton(
            iconSize: context.heightSize30, // Icon size increased
            icon: const FaIcon(FontAwesomeIcons.xmark, color: Colors.red),
            onPressed: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
          ),
        ),
        AnimatedOpacity(
          duration: const Duration(milliseconds: 500),
          opacity:
              isExpanded ? 0.0 : 1.0, // Opacity changed to hide the trash icon
          child: IconButton(
            icon: const FaIcon(
              FontAwesomeIcons.trash,
              color: AppColors.primary,
            ),
            onPressed: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
          ),
        ),
        AnimatedOpacity(
          duration: const Duration(milliseconds: 500),
          opacity: isExpanded ? 1.0 : 0.0,
          child: IconButton(
            iconSize: context.heightSize30, // Icon size increased
            icon: const FaIcon(FontAwesomeIcons.check, color: Colors.green),
            onPressed: () {
              context.read<EducationCubit>().deleteEducation();
              setState(() {
                isExpanded = !isExpanded;
              });
            },
          ),
        ),
      ],
    );
  }
}
