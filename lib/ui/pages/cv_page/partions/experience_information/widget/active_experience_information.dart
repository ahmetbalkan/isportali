import 'package:isportal/blocs/cv_page_cubit/cv_page_cubit.dart';
import 'package:isportal/public_widgets/buttons.dart';
import 'package:isportal/themes/constants/color_constants.dart';
import 'package:isportal/themes/constants/decoration_constant.dart';
import 'package:isportal/themes/constants/padding_constants.dart';
import 'package:isportal/utils/context_extention.dart';
import 'package:isportal/utils/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:reactive_flutter_typeahead/reactive_flutter_typeahead.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ActiveExperienceInformationWidget extends StatefulWidget {
  const ActiveExperienceInformationWidget({super.key});

  @override
  State<ActiveExperienceInformationWidget> createState() =>
      _ActiveExperienceInformationWidgetState();
}

Uint8List? bytesFromPicker;
var birthDateMaskFormatter = MaskTextInputFormatter(
    mask: '##/##/####', filter: {"#": RegExp(r'[0-9]')});
var phoneMaskFormatter = MaskTextInputFormatter(
    mask: '(###) ### ## ##', filter: {"#": RegExp(r'[0-9]')});

class _ActiveExperienceInformationWidgetState
    extends State<ActiveExperienceInformationWidget> {
  late FormGroup form;
  @override
  void initState() {
    form = FormGroup({
      'companyname': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'positionname': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'jobstartmonth': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'jobstartyear': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'jobendmonth': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'jobendyear': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'companysector': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'companyworkspace': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'companyhowtowork': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'companypositionlevel': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'country': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'city': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'description': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
    });
    super.initState();
  }

  // Dışarıdan gelen veriler
  List<String> dropdownItems1 = ['Item1', 'Item2', 'Item3'];
  List<String> dropdownItems2 = ['ItemA', 'ItemB', 'ItemC'];

  final List<String> allCities = [
    'Ankara',
    'İstanbul',
    'İzmir',
    'Antalya',
    'Adana',
    'Bursa',
    'Gaziantep',
    'Konya',
    'Çanakkale',
    'Trabzon'
  ];

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
              "İş Deneyimleri",
              style: Theme.of(context).textTheme.titlebig1(context),
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
                          child: ReactiveTypeAhead<String, String>(
                        formControlName: 'companyname',
                        suggestionsCallback: (pattern) async {
                          return allCities
                              .where((city) => city
                                  .toLowerCase()
                                  .startsWith(pattern.toLowerCase()))
                              .take(5)
                              .toList();
                        },
                        itemBuilder: (context, suggestion) {
                          return ListTile(
                            title: Text(
                              suggestion,
                              style:
                                  Theme.of(context).textTheme.title1(context),
                            ),
                          );
                        },
                        textFieldConfiguration: TextFieldConfiguration(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: context.witdhSize10,
                                horizontal: context.heightSize10),
                            errorStyle: const TextStyle(height: 0),
                            labelText: "Firma Adı",
                            labelStyle:
                                Theme.of(context).textTheme.title1(context),
                            enabled: true,
                            border: const OutlineInputBorder(),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.primary, width: 2.0),
                            ),
                          ),
                        ),
                        stringify: (value) => value.toString(),
                        noItemsFoundBuilder: (context) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Nesne bulunamadı',
                            style:
                                Theme.of(context).textTheme.paragraph3(context),
                          ),
                        ),
                      )),
                      SizedBox(
                        width: context.witdhSize05,
                      ),
                      Expanded(
                          child: ReactiveTypeAhead<String, String>(
                        formControlName: 'positionname',
                        suggestionsCallback: (pattern) async {
                          return allCities
                              .where((city) => city
                                  .toLowerCase()
                                  .startsWith(pattern.toLowerCase()))
                              .take(5)
                              .toList();
                        },
                        itemBuilder: (context, suggestion) {
                          return ListTile(
                            title: Text(
                              suggestion,
                              style:
                                  Theme.of(context).textTheme.title1(context),
                            ),
                          );
                        },
                        textFieldConfiguration: TextFieldConfiguration(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: context.witdhSize10,
                                horizontal: context.heightSize10),
                            errorStyle: const TextStyle(height: 0),
                            labelText: "Pozisyon Adı",
                            labelStyle:
                                Theme.of(context).textTheme.title1(context),
                            enabled: true,
                            border: const OutlineInputBorder(),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.primary, width: 2.0),
                            ),
                          ),
                        ),
                        stringify: (value) => value.toString(),
                        noItemsFoundBuilder: (context) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Nesne bulunamadı',
                            style:
                                Theme.of(context).textTheme.paragraph3(context),
                          ),
                        ),
                      )),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "İşe Başlama Tarihi",
                              style:
                                  Theme.of(context).textTheme.title1(context),
                            ),
                            SizedBox(
                              height: context.heightSize10,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: ReactiveDropdownField<String>(
                                    formControlName: 'jobstartmonth',
                                    style: Theme.of(context)
                                        .textTheme
                                        .title1(context),
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: context.witdhSize10,
                                          horizontal: context.heightSize10),
                                      errorStyle: const TextStyle(height: 0),
                                      hintText: " Ay",
                                      hintStyle: Theme.of(context)
                                          .textTheme
                                          .title1(context),
                                      enabled: true,
                                      border: const OutlineInputBorder(),
                                      focusedBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: AppColors.primary,
                                            width: 2.0),
                                      ),
                                    ),
                                    items: dropdownItems2
                                        .map((item) => DropdownMenuItem(
                                              value: item,
                                              child: Text(item),
                                            ))
                                        .toList(),
                                  ),
                                ),
                                SizedBox(
                                  width: context.witdhSize05,
                                ),
                                Expanded(
                                  child: ReactiveDropdownField<String>(
                                    formControlName: 'jobstartyear',
                                    style: Theme.of(context)
                                        .textTheme
                                        .title1(context),
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: context.witdhSize10,
                                          horizontal: context.heightSize10),
                                      errorStyle: const TextStyle(height: 0),
                                      hintText: "Yıl",
                                      hintStyle: Theme.of(context)
                                          .textTheme
                                          .title1(context),
                                      enabled: true,
                                      border: const OutlineInputBorder(),
                                      focusedBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: AppColors.primary,
                                            width: 2.0),
                                      ),
                                    ),
                                    items: dropdownItems2
                                        .map((item) => DropdownMenuItem(
                                              value: item,
                                              child: Text(item),
                                            ))
                                        .toList(),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: context.witdhSize05,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "İşten Ayrılma Tarihi",
                              style:
                                  Theme.of(context).textTheme.title1(context),
                            ),
                            SizedBox(
                              height: context.heightSize10,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: ReactiveDropdownField<String>(
                                    formControlName: 'jobstartmonth',
                                    style: Theme.of(context)
                                        .textTheme
                                        .title1(context),
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: context.witdhSize10,
                                          horizontal: context.heightSize10),
                                      errorStyle: const TextStyle(height: 0),
                                      hintText: " Ay",
                                      hintStyle: Theme.of(context)
                                          .textTheme
                                          .title1(context),
                                      enabled: true,
                                      border: const OutlineInputBorder(),
                                      focusedBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: AppColors.primary,
                                            width: 2.0),
                                      ),
                                    ),
                                    items: dropdownItems2
                                        .map((item) => DropdownMenuItem(
                                              value: item,
                                              child: Text(item),
                                            ))
                                        .toList(),
                                  ),
                                ),
                                SizedBox(
                                  width: context.witdhSize05,
                                ),
                                Expanded(
                                  child: ReactiveDropdownField<String>(
                                    formControlName: 'jobstartyear',
                                    style: Theme.of(context)
                                        .textTheme
                                        .title1(context),
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: context.witdhSize10,
                                          horizontal: context.heightSize10),
                                      errorStyle: const TextStyle(height: 0),
                                      hintText: "Yıl",
                                      hintStyle: Theme.of(context)
                                          .textTheme
                                          .title1(context),
                                      enabled: true,
                                      border: const OutlineInputBorder(),
                                      focusedBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: AppColors.primary,
                                            width: 2.0),
                                      ),
                                    ),
                                    items: dropdownItems2
                                        .map((item) => DropdownMenuItem(
                                              value: item,
                                              child: Text(item),
                                            ))
                                        .toList(),
                                  ),
                                ),
                              ],
                            ),
                          ],
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
                          child: ReactiveTypeAhead<String, String>(
                        formControlName: 'companysector',
                        suggestionsCallback: (pattern) async {
                          return allCities
                              .where((city) => city
                                  .toLowerCase()
                                  .startsWith(pattern.toLowerCase()))
                              .take(5)
                              .toList();
                        },
                        itemBuilder: (context, suggestion) {
                          return ListTile(
                            title: Text(
                              suggestion,
                              style:
                                  Theme.of(context).textTheme.title1(context),
                            ),
                          );
                        },
                        textFieldConfiguration: TextFieldConfiguration(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: context.witdhSize10,
                                horizontal: context.heightSize10),
                            errorStyle: const TextStyle(height: 0),
                            labelText: "Firma Sektörü",
                            labelStyle:
                                Theme.of(context).textTheme.title1(context),
                            enabled: true,
                            border: const OutlineInputBorder(),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.primary, width: 2.0),
                            ),
                          ),
                        ),
                        stringify: (value) => value.toString(),
                        noItemsFoundBuilder: (context) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Nesne bulunamadı',
                            style:
                                Theme.of(context).textTheme.paragraph3(context),
                          ),
                        ),
                      )),
                      SizedBox(
                        width: context.witdhSize05,
                      ),
                      Expanded(
                          child: ReactiveTypeAhead<String, String>(
                        formControlName: 'companyworkspace',
                        suggestionsCallback: (pattern) async {
                          return allCities
                              .where((city) => city
                                  .toLowerCase()
                                  .startsWith(pattern.toLowerCase()))
                              .take(5)
                              .toList();
                        },
                        itemBuilder: (context, suggestion) {
                          return ListTile(
                            title: Text(
                              suggestion,
                              style:
                                  Theme.of(context).textTheme.title1(context),
                            ),
                          );
                        },
                        textFieldConfiguration: TextFieldConfiguration(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: context.witdhSize10,
                                horizontal: context.heightSize10),
                            errorStyle: const TextStyle(height: 0),
                            labelText: "İş Alanı",
                            labelStyle:
                                Theme.of(context).textTheme.title1(context),
                            enabled: true,
                            border: const OutlineInputBorder(),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.primary, width: 2.0),
                            ),
                          ),
                        ),
                        stringify: (value) => value.toString(),
                        noItemsFoundBuilder: (context) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Nesne bulunamadı',
                            style:
                                Theme.of(context).textTheme.paragraph3(context),
                          ),
                        ),
                      )),
                    ],
                  ),
                  SizedBox(
                    height: context.heightSize30,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: ReactiveTypeAhead<String, String>(
                        formControlName: 'companyhowtowork',
                        suggestionsCallback: (pattern) async {
                          return allCities
                              .where((city) => city
                                  .toLowerCase()
                                  .startsWith(pattern.toLowerCase()))
                              .take(5)
                              .toList();
                        },
                        itemBuilder: (context, suggestion) {
                          return ListTile(
                            title: Text(
                              suggestion,
                              style:
                                  Theme.of(context).textTheme.title1(context),
                            ),
                          );
                        },
                        textFieldConfiguration: TextFieldConfiguration(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: context.witdhSize10,
                                horizontal: context.heightSize10),
                            errorStyle: const TextStyle(height: 0),
                            labelText: "Çalışma Şekli",
                            labelStyle:
                                Theme.of(context).textTheme.title1(context),
                            enabled: true,
                            border: const OutlineInputBorder(),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.primary, width: 2.0),
                            ),
                          ),
                        ),
                        stringify: (value) => value.toString(),
                        noItemsFoundBuilder: (context) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Nesne bulunamadı',
                            style:
                                Theme.of(context).textTheme.paragraph3(context),
                          ),
                        ),
                      )),
                      SizedBox(
                        width: context.witdhSize05,
                      ),
                      Expanded(
                          child: ReactiveTypeAhead<String, String>(
                        formControlName: 'companypositionlevel',
                        suggestionsCallback: (pattern) async {
                          return allCities
                              .where((city) => city
                                  .toLowerCase()
                                  .startsWith(pattern.toLowerCase()))
                              .take(5)
                              .toList();
                        },
                        itemBuilder: (context, suggestion) {
                          return ListTile(
                            title: Text(
                              suggestion,
                              style:
                                  Theme.of(context).textTheme.title1(context),
                            ),
                          );
                        },
                        textFieldConfiguration: TextFieldConfiguration(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: context.witdhSize10,
                                horizontal: context.heightSize10),
                            errorStyle: const TextStyle(height: 0),
                            labelText: "Pozisyon Seviyesi",
                            labelStyle:
                                Theme.of(context).textTheme.title1(context),
                            enabled: true,
                            border: const OutlineInputBorder(),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.primary, width: 2.0),
                            ),
                          ),
                        ),
                        stringify: (value) => value.toString(),
                        noItemsFoundBuilder: (context) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Nesne bulunamadı',
                            style:
                                Theme.of(context).textTheme.paragraph3(context),
                          ),
                        ),
                      )),
                    ],
                  ),
                  SizedBox(
                    height: context.heightSize30,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: ReactiveTypeAhead<String, String>(
                        formControlName: 'country',
                        suggestionsCallback: (pattern) async {
                          return allCities
                              .where((city) => city
                                  .toLowerCase()
                                  .startsWith(pattern.toLowerCase()))
                              .take(5)
                              .toList();
                        },
                        itemBuilder: (context, suggestion) {
                          return ListTile(
                            title: Text(
                              suggestion,
                              style:
                                  Theme.of(context).textTheme.title1(context),
                            ),
                          );
                        },
                        textFieldConfiguration: TextFieldConfiguration(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: context.witdhSize10,
                                horizontal: context.heightSize10),
                            errorStyle: const TextStyle(height: 0),
                            labelText: "Ülke / Bölge",
                            labelStyle:
                                Theme.of(context).textTheme.title1(context),
                            enabled: true,
                            border: const OutlineInputBorder(),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.primary, width: 2.0),
                            ),
                          ),
                        ),
                        stringify: (value) => value.toString(),
                        noItemsFoundBuilder: (context) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Nesne bulunamadı',
                            style:
                                Theme.of(context).textTheme.paragraph3(context),
                          ),
                        ),
                      )),
                      SizedBox(
                        width: context.witdhSize05,
                      ),
                      Expanded(
                          child: ReactiveTypeAhead<String, String>(
                        formControlName: 'city',
                        suggestionsCallback: (pattern) async {
                          return allCities
                              .where((city) => city
                                  .toLowerCase()
                                  .startsWith(pattern.toLowerCase()))
                              .take(5)
                              .toList();
                        },
                        itemBuilder: (context, suggestion) {
                          return ListTile(
                            title: Text(
                              suggestion,
                              style:
                                  Theme.of(context).textTheme.title1(context),
                            ),
                          );
                        },
                        textFieldConfiguration: TextFieldConfiguration(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: context.witdhSize10,
                                horizontal: context.heightSize10),
                            errorStyle: const TextStyle(height: 0),
                            labelText: "Şehir",
                            labelStyle:
                                Theme.of(context).textTheme.title1(context),
                            enabled: true,
                            border: const OutlineInputBorder(),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.primary, width: 2.0),
                            ),
                          ),
                        ),
                        stringify: (value) => value.toString(),
                        noItemsFoundBuilder: (context) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Nesne bulunamadı',
                            style:
                                Theme.of(context).textTheme.paragraph3(context),
                          ),
                        ),
                      )),
                    ],
                  ),
                  SizedBox(
                    height: context.heightSize30,
                  ),
                  ReactiveTextField<String>(
                    formControlName: 'description',
                    style: Theme.of(context).textTheme.title1(context),
                    decoration: InputDecoration(
                      enabled: true,
                      labelText: 'Açıklama',
                      labelStyle: Theme.of(context)
                          .textTheme
                          .title1(context)
                          .copyWith(),
                      hintStyle: Theme.of(context).textTheme.title1(context),
                      suffixStyle: Theme.of(context)
                          .textTheme
                          .title1(context)
                          .copyWith(color: AppColors.primary),
                      border: const OutlineInputBorder(),
                      focusedBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(color: AppColors.primary, width: 2.0),
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
                              context.read<CvPageCubit>().editCvPagermation();
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
                            onPressed: () {},
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
  }
}
