import 'package:isportal/themes/constants/color_constants.dart';
import 'package:isportal/themes/constants/decoration_constant.dart';
import 'package:isportal/themes/constants/padding_constants.dart';
import 'package:isportal/utils/context_extention.dart';
import 'package:isportal/utils/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ActiveAddtionalInformationWidget extends StatefulWidget {
  const ActiveAddtionalInformationWidget({super.key});

  @override
  State<ActiveAddtionalInformationWidget> createState() =>
      _ActiveAddtionalInformationWidgetState();
}

Uint8List? bytesFromPicker;
var birthDateMaskFormatter = MaskTextInputFormatter(
    mask: '##/##/####', filter: {"#": RegExp(r'[0-9]')});
var phoneMaskFormatter = MaskTextInputFormatter(
    mask: '(###) ### ## ##', filter: {"#": RegExp(r'[0-9]')});

class _ActiveAddtionalInformationWidgetState
    extends State<ActiveAddtionalInformationWidget> {
  late FormGroup form;
  @override
  void initState() {
    form = FormGroup({
      'tccitizen': FormControl<bool>(value: false),
      'foreigner': FormControl<bool>(value: false),
      'website': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'twitter': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'securitynumber': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'cigarette': FormControl<bool>(value: false),
      'trip': FormControl<bool>(value: false),
      'workingovertime': FormControl<bool>(value: false),
      'nightshift': FormControl<bool>(value: false),
      'yabanciUyruk': FormControl<bool>(value: false),
      'radioSelection': FormControl<String>(),
    });
    super.initState();
  }

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
            Text(
              "Ek Bilgiler",
              style: Theme.of(context).textTheme.titlebig1(context),
            ),
            SizedBox(
              height: context.heightSize20,
            ),
            ReactiveForm(
              formGroup: form,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: DecorationConstants.blueBorderContainer,
                    height: 100,
                    width: double.infinity,
                    child: Row(children: [
                      Expanded(
                          flex: 1,
                          child: SvgPicture.asset(
                              "images/svg/personaldetails.svg")),
                      Expanded(
                          flex: 8,
                          child: Text(
                            "Aşağıdaki bilgiler yalnızca belirli pozisyonlar için işveren firmalar tarafından talep edlmektedir.",
                            style:
                                Theme.of(context).textTheme.paragraph2(context),
                          ))
                    ]),
                  ),
                  SizedBox(
                    height: context.heightSize20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ReactiveCheckboxListTile(
                          formControlName: 'tccitizen',
                          title: const Text('TC Vatandaşıyım'),
                          shape: const CircleBorder(),
                          controlAffinity: ListTileControlAffinity.leading,
                        ),
                      ),
                      Expanded(
                        child: ReactiveCheckboxListTile(
                          formControlName: 'foreigner',
                          title: const Text('Yabancı Uyrukluyum'),
                          shape: const CircleBorder(),
                          controlAffinity: ListTileControlAffinity.leading,
                        ),
                      ),
                      const Spacer()
                    ],
                  ),
                  SizedBox(
                    height: context.heightSize20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: ReactiveTextField<String>(
                        formControlName: 'website',
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: context.witdhSize10,
                              horizontal: context.heightSize10),
                          errorStyle: const TextStyle(height: 0),
                          labelText: "Website",
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
                      SizedBox(
                        width: context.witdhSize05,
                      ),
                      Expanded(
                          child: ReactiveTextField<String>(
                        formControlName: 'twitter',
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: context.witdhSize10,
                              horizontal: context.heightSize10),
                          errorStyle: const TextStyle(height: 0),
                          labelText: "Twitter",
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
                      SizedBox(
                        width: context.witdhSize05,
                      ),
                      Expanded(
                          child: ReactiveTextField<String>(
                        formControlName: 'securitynumber',
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: context.witdhSize10,
                              horizontal: context.heightSize10),
                          errorStyle: const TextStyle(height: 0),
                          labelText: "TC Kimlik No",
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
                    ],
                  ),
                  SizedBox(
                    height: context.heightSize30,
                  ),
                  Container(
                    decoration: DecorationConstants.blueBorderContainer,
                    height: 100,
                    width: double.infinity,
                    child: Row(children: [
                      Expanded(
                          flex: 1,
                          child: SvgPicture.asset(
                              "images/svg/personaldetails.svg")),
                      Expanded(
                          flex: 8,
                          child: Text(
                            "Aşağıdaki bilgiler yalnızca belirli pozisyonlar için işveren firmalar tarafından talep edlmektedir.",
                            style:
                                Theme.of(context).textTheme.paragraph2(context),
                          ))
                    ]),
                  ),
                  SizedBox(
                    height: context.heightSize30,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: ReactiveCheckboxListTile(
                          formControlName: 'cigarette',
                          title: const Text('Sigara Kullanıyorum'),
                          shape: const CircleBorder(),
                          controlAffinity: ListTileControlAffinity.leading,
                        ),
                      ),
                      Expanded(
                        child: ReactiveCheckboxListTile(
                          formControlName: 'trip',
                          title: const Text('Seyahat Engelim Var'),
                          shape: const CircleBorder(),
                          controlAffinity: ListTileControlAffinity.leading,
                        ),
                      ),
                      Expanded(
                        child: ReactiveCheckboxListTile(
                          formControlName: 'workingovertime',
                          title: const Text('Mesai Yapabilirim'),
                          shape: const CircleBorder(),
                          controlAffinity: ListTileControlAffinity.leading,
                        ),
                      ),
                      Expanded(
                        child: ReactiveCheckboxListTile(
                          formControlName: 'nightshift',
                          title: const Text('Gece Vardiyasında Çalışabilirim'),
                          shape: const CircleBorder(),
                          controlAffinity: ListTileControlAffinity.leading,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: context.heightSize30,
                  ),
                  Text(
                    "Ehliyet",
                    style: Theme.of(context).textTheme.title2(context),
                  ),
                  SizedBox(
                    height: context.heightSize10,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: ListTile(
                              title: const Text('A1'),
                              leading: ReactiveRadio<String>(
                                formControlName: 'radioSelection',
                                value: 'A1',
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListTile(
                              title: const Text('A2'),
                              leading: ReactiveRadio<String>(
                                formControlName: 'radioSelection',
                                value: 'A2',
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListTile(
                              title: const Text('B'),
                              leading: ReactiveRadio<String>(
                                formControlName: 'radioSelection',
                                value: 'B',
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListTile(
                              title: const Text('C'),
                              leading: ReactiveRadio<String>(
                                formControlName: 'radioSelection',
                                value: 'C',
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListTile(
                              title: const Text('DE'),
                              leading: ReactiveRadio<String>(
                                formControlName: 'radioSelection',
                                value: 'DE',
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListTile(
                              title: const Text('F'),
                              leading: ReactiveRadio<String>(
                                formControlName: 'radioSelection',
                                value: 'F',
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListTile(
                              title: const Text('H'),
                              leading: ReactiveRadio<String>(
                                formControlName: 'radioSelection',
                                value: 'H',
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListTile(
                              title: const Text('G'),
                              leading: ReactiveRadio<String>(
                                formControlName: 'radioSelection',
                                value: 'G',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: context.heightSize30,
                  ),
                  Text(
                    "SRC Belgesi",
                    style: Theme.of(context).textTheme.title2(context),
                  ),
                  SizedBox(
                    height: context.heightSize10,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: ListTile(
                              title: const Text('SRC 1'),
                              leading: ReactiveRadio<String>(
                                formControlName: 'radioSelection',
                                value: 'SRC1',
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListTile(
                              title: const Text('SRC 2'),
                              leading: ReactiveRadio<String>(
                                formControlName: 'radioSelection',
                                value: 'SRC2',
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListTile(
                              title: const Text('SRC 3'),
                              leading: ReactiveRadio<String>(
                                formControlName: 'radioSelection',
                                value: 'SRC 3',
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListTile(
                              title: const Text('SRC 4'),
                              leading: ReactiveRadio<String>(
                                formControlName: 'radioSelection',
                                value: 'SRC 4',
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListTile(
                              title: const Text('SRC 5'),
                              leading: ReactiveRadio<String>(
                                formControlName: 'radioSelection',
                                value: 'SRC 5',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
