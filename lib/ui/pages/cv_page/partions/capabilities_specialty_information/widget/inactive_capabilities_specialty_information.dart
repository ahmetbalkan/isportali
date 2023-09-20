import 'package:isportal/blocs/cv_page_cubit/cv_page_cubit.dart';
import 'package:isportal/blocs/cv_page_cubit/cv_page_state.dart';
import 'package:isportal/data/models/cv_models/cv_models/computer_skill_model/computer_skill_model.dart';
import 'package:isportal/themes/constants/color_constants.dart';
import 'package:isportal/themes/constants/decoration_constant.dart';
import 'package:isportal/themes/constants/padding_constants.dart';
import 'package:isportal/utils/context_extention.dart';
import 'package:isportal/utils/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InActiveCapabilitiesSpecialtyInformationWidget extends StatelessWidget {
  const InActiveCapabilitiesSpecialtyInformationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CvPageCubit, CvPageState>(
      builder: (context, state) {
        return Container(
          width: double.maxFinite,
          decoration: DecorationConstants.greyBorderContainer,
          padding: AppPaddings.allLarge(),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Yetkinlikler / Uzmanlık Alanları",
                    style: Theme.of(context).textTheme.titlebig1(context),
                  ),
                  Container(
                    decoration: DecorationConstants.greyBorderContainer,
                    child: Padding(
                        padding: AppPaddings.allSmall(),
                        child: const FaIcon(
                          FontAwesomeIcons.plus,
                          color: AppColors.primary,
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: context.heightSize20,
              ),
              SizedBox(
                  width: double.maxFinite,
                  child: ComputerSkillsWrap(
                      computerSkills:
                          state.mainCvModel.cvModel!.computerSkillList!))
            ],
          ),
        );
      },
    );
  }
}

class SkillTag extends StatelessWidget {
  final ComputerSkillModel skill;

  const SkillTag({super.key, required this.skill});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: AppPaddings.large, vertical: AppPaddings.medium),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: AppColors.primary,
      ),
      child: Text(
        skill.name?.name ?? "", // Assume name property is a string
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}

class ComputerSkillsWrap extends StatelessWidget {
  final List<ComputerSkillModel> computerSkills;

  const ComputerSkillsWrap({super.key, required this.computerSkills});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0, // gap between adjacent chips
      runSpacing: 4.0, // gap between lines
      direction: Axis.horizontal, // main axis (rows or columns)
      children: computerSkills.map((ComputerSkillModel skill) {
        return Container(
          padding: const EdgeInsets.symmetric(
              horizontal: AppPaddings.large, vertical: AppPaddings.medium),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: AppColors.primary,
          ),
          child: Text(
            skill.name?.name ?? "", // Assume name property is a string
            style: const TextStyle(color: Colors.white),
          ),
        );
      }).toList(),
    );
  }
}
