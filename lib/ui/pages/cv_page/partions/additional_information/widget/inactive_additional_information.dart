import 'package:isportal/blocs/cv_page_cubit/cv_page_cubit.dart';
import 'package:isportal/blocs/cv_page_cubit/cv_page_state.dart';
import 'package:isportal/themes/constants/color_constants.dart';
import 'package:isportal/themes/constants/decoration_constant.dart';
import 'package:isportal/themes/constants/padding_constants.dart';
import 'package:isportal/utils/context_extention.dart';
import 'package:isportal/utils/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InActiveAddtionalInformationWidget extends StatefulWidget {
  const InActiveAddtionalInformationWidget({super.key});

  @override
  State<InActiveAddtionalInformationWidget> createState() =>
      _InActiveAddtionalInformationWidgetState();
}

List<Map<String, dynamic>> data = [];

class _InActiveAddtionalInformationWidgetState
    extends State<InActiveAddtionalInformationWidget> {
  @override
  void initState() {
    super.initState();
  }

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
                    "İş Deneyimleri",
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
              MyDynamicRow(data: state.otherInfo)
            ],
          ),
        );
      },
    );
  }
}

class MyDynamicRow extends StatelessWidget {
  final List<Map<String, dynamic>> data;

  const MyDynamicRow({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: _buildColumns(context, 0),
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: _buildColumns(context, 1),
          ),
        ),
        const Spacer(
          flex: 4,
        ),
      ],
    );
  }

  List<Widget> _buildColumns(BuildContext context, int columnIndex) {
    List<Widget> columnWidgets = [];

    for (var i = columnIndex; i < data.length; i += 2) {
      columnWidgets.add(
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              data[i]['key'],
              style: Theme.of(context).textTheme.title1(context),
            ),
            Text(
              data[i]['value'],
              style: Theme.of(context).textTheme.paragraph1(context),
            ),
          ],
        ),
      );
      columnWidgets.add(
        const SizedBox(
          height: 10.0,
        ),
      );
    }

    return columnWidgets;
  }
}
