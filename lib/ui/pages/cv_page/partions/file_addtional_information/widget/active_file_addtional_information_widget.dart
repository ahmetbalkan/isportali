import 'package:isportal/themes/constants/color_constants.dart';
import 'package:isportal/themes/constants/decoration_constant.dart';
import 'package:isportal/themes/constants/padding_constants.dart';
import 'package:isportal/utils/context_extention.dart';
import 'package:isportal/utils/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reactive_file_picker/reactive_file_picker.dart';

class ActiveFileAddtionalInformationWidget extends StatefulWidget {
  const ActiveFileAddtionalInformationWidget({super.key});

  @override
  State<ActiveFileAddtionalInformationWidget> createState() =>
      _ActiveFileAddtionalInformationWidgetState();
}

Uint8List? bytesFromPicker;

class _ActiveFileAddtionalInformationWidgetState
    extends State<ActiveFileAddtionalInformationWidget> {
  @override
  Widget build(BuildContext context) {
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
              onTap: () async {
                FilePickerResult? result =
                    await FilePicker.platform.pickFiles(type: FileType.image);
                if (result != null) {
                  bytesFromPicker = result.files.first.bytes;
                  String fileName = result.files.first.name;
                  setState(() {});
                }
              },
              child: Align(
                  alignment: Alignment.center,
                  child: SvgPicture.asset("images/svg/addcv.svg")),
            ),
            SizedBox(
              height: context.heightSize20,
            ),
          ],
        ),
      ),
    );
  }
}
