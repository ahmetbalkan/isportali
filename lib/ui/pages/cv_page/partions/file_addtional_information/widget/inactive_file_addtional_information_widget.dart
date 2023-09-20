import 'package:isportal/blocs/cv_page_cubit/cv_page_cubit.dart';
import 'package:isportal/blocs/cv_page_cubit/cv_page_state.dart';
import 'package:isportal/data/models/cv_models/cv_models/file_model/file_model.dart';
import 'package:isportal/themes/constants/color_constants.dart';
import 'package:isportal/themes/constants/decoration_constant.dart';
import 'package:isportal/themes/constants/padding_constants.dart';
import 'package:isportal/utils/context_extention.dart';
import 'package:isportal/utils/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InActiveFileAddtionalInformationWidget extends StatelessWidget {
  const InActiveFileAddtionalInformationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CvPageCubit, CvPageState>(
      builder: (context, state) {
        return Container(
          padding: AppPaddings.allLarge(),
          decoration: DecorationConstants.greyBorderContainer,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Ekli Dosyalarım",
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
              InkWell(
                  onTap: () {
                    context.read<CvPageCubit>().editCvPagermation();
                  },
                  child: TagsWidget(
                    files: state.mainCvModel.cvModel?.fileList ?? [],
                    onDelete: (fileModel) {},
                  )),
              SizedBox(
                height: context.heightSize20,
              ),
            ],
          ),
        );
      },
    );
  }
}

class TagsWidget extends StatelessWidget {
  final List<FileModel> files;
  final Function(FileModel fileModel) onDelete;

  const TagsWidget({Key? key, required this.files, required this.onDelete})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 5,
      runSpacing: 10,
      children: files.map((file) => buildTag(file)).toList(),
    );
  }

  Widget buildTag(FileModel file) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: AppPaddings.small, vertical: AppPaddings.small),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: AppColors.primary,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            file.name ?? '',
            style: const TextStyle(color: Colors.white),
          ),
          IconButton(
            icon: const Icon(FontAwesomeIcons.trash, color: Colors.white, size: 20),
            onPressed: () => onDelete(file),
          ),
        ],
      ),
    );
  }
}
