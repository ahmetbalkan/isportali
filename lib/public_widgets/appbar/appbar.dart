import 'package:isportal/blocs/auth_blocs/phone_login_auth_cubit/auth_cubit.dart';
import 'package:isportal/blocs/auth_blocs/phone_login_auth_cubit/auth_state.dart';
import 'package:isportal/data/repositories/cv_page/education_repository.dart';
import 'package:isportal/public_widgets/buttons.dart';
import 'package:isportal/themes/constants/color_constants.dart';
import 'package:isportal/themes/constants/padding_constants.dart';
import 'package:isportal/themes/constants/text_constants.dart';
import 'package:isportal/utils/context_extention.dart';
import 'package:isportal/utils/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({super.key});

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    EducationRepository educationRepository = EducationRepository();

    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.only(left: 80),
        child: Image.asset("images/png/logo.png"),
      ),
      leadingWidth: 500,
      actions: [
        BlocBuilder<AuthCubit, AuthState>(builder: (context, state) {
          return Row(
            children: [
              Visibility(
                visible:
                    state.createdUserModel.isSuccess == false ? true : false,
                child: Row(
                  children: [
                    CustomButton(
                      fontSize: context.paragraph3,
                      onPressed: () async {
                        var test = await educationRepository.editEducation({
                          "id": 11308456,
                          "cvID": 22824137,
                          "educationLevel": {
                            "name": "\u0130lkokul",
                            "value": 1,
                            "parentID": 0
                          },
                          "school": {
                            "name": "halkal\u0131 ilk okulu editlendi",
                            "value": 0,
                            "parentID": 0
                          },
                          "city": {"name": "Ankara", "value": 7, "parentID": 0},
                          "country": {
                            "name": "T\u00FCrkiye",
                            "value": 73,
                            "parentID": 0
                          },
                          "graduationYear": 2001,
                          "graduationGrade": "90",
                          "isStillStudent": false,
                          "description": "a\u00E7\u0131klama editlendi"
                        });
                      },
                      text: TextConstants.instance.texts.userLoginText,
                      color: AppColors.secondary,
                    ),
                    SizedBox(
                      width: context.witdhSize10,
                    ),
                    CustomButton(
                      fontSize: context.paragraph3,
                      onPressed: () {},
                      text: TextConstants.instance.texts.employerLoginText,
                      color: AppColors.primary,
                    ),
                    SizedBox(
                      width: context.witdhSize20,
                    ),
                  ],
                ),
              ),
              Visibility(
                visible:
                    state.createdUserModel.isSuccess == false ? false : true,
                child: InkWell(
                  onTap: () async {
                    var test = await educationRepository.editEducation({
                      "id": 11308456,
                      "cvID": 22824137,
                      "educationLevel": {
                        "name": "\u0130lkokul",
                        "value": 1,
                        "parentID": 0
                      },
                      "school": {
                        "name": "halkal\u0131 ilk okulu editlendi",
                        "value": 0,
                        "parentID": 0
                      },
                      "city": {"name": "Ankara", "value": 7, "parentID": 0},
                      "country": {
                        "name": "T\u00FCrkiye",
                        "value": 73,
                        "parentID": 0
                      },
                      "graduationYear": 2001,
                      "graduationGrade": "90",
                      "isStillStudent": false,
                      "description": "a\u00E7\u0131klama editlendi"
                    });
                  },
                  child: Text(
                    "test",
                    style: Theme.of(context)
                        .textTheme
                        .title5(context)
                        .copyWith(color: Colors.black),
                  ),
                ),
              )
            ],
          );
        })
      ],
    );
  }
}

class MobileAppbarWidget extends StatelessWidget {
  const MobileAppbarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 60,
      leading: Padding(
          padding: AppPaddings.leftMedium(),
          child: Image.asset("images/png/logo.png")),
      leadingWidth: context.mobileWidthSize90,
      actions: [
        InkWell(
          onTap: () {
            Scaffold.of(context).openDrawer();
          },
          child: Padding(
            padding: AppPaddings.rightLarge(),
            child: const Icon(
              FontAwesomeIcons.bars,
              color: AppColors.primary,
            ),
          ),
        ),
      ],
    );
  }
}
