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
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:reactive_file_picker/reactive_file_picker.dart';
import 'package:reactive_flutter_typeahead/reactive_flutter_typeahead.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ActivePersonalInformationWidget extends StatefulWidget {
  const ActivePersonalInformationWidget({super.key});

  @override
  State<ActivePersonalInformationWidget> createState() =>
      _ActivePersonalInformationWidgetState();
}

Uint8List? bytesFromPicker;
var birthDateMaskFormatter = MaskTextInputFormatter(
    mask: '##/##/####', filter: {"#": RegExp(r'[0-9]')});
var phoneMaskFormatter = MaskTextInputFormatter(
    mask: '(###) ### ## ##', filter: {"#": RegExp(r'[0-9]')});

class _ActivePersonalInformationWidgetState
    extends State<ActivePersonalInformationWidget> {
  late FormGroup form;
  @override
  void initState() {
    form = FormGroup({
      'name': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'surname': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'email': FormControl<String>(
        validators: [Validators.required, Validators.email],
      ),
      'birthday': FormControl<DateTime>(
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
      'state': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'address': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'phone': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'disabled': FormControl<bool>(
        validators: [
          Validators.required,
        ],
      ),
      'gender': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'linkedin': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'instagram': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'twitter': FormControl<String>(
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
              "Kişisel Bilgiler ve Kısa Özgeçmiş",
              style: Theme.of(context).textTheme.titlebig1(context),
            ),
            SizedBox(
              height: context.heightSize40,
            ),
            SizedBox(
              height: context.heightSize10,
            ),
            Column(
              children: [
                InkWell(
                  onTap: () async {
                    FilePickerResult? result = await FilePicker.platform
                        .pickFiles(type: FileType.image);
                    if (result != null) {
                      bytesFromPicker = result.files.first.bytes;
                      String fileName = result.files.first.name;
                      setState(() {});
                    }
                  },
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: SvgPicture.asset(
                      "images/svg/selectimage.svg",
                      height: context.heightSize100,
                      width: context.witdhSize100,
                    ),
                  ),
                ),
                SizedBox(
                  height: context.heightSize10,
                ),
                Text(
                  "Özgeçmiş Fotoğrafı Ekle",
                  style: Theme.of(context)
                      .textTheme
                      .title5(context)
                      .copyWith(color: AppColors.primary),
                ),
              ],
            ),
            SizedBox(
              height: context.heightSize40,
            ),
            ReactiveForm(
              formGroup: form,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: ReactiveTextField(
                          maxLines: 1,
                          validationMessages: {
                            'required': (error) => 'Boş bırakılamaz',
                          },
                          style: Theme.of(context).textTheme.title2(context),
                          formControlName: 'name',
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: context.witdhSize10,
                                horizontal: context.heightSize10),
                            labelText: " Ad",
                            labelStyle:
                                Theme.of(context).textTheme.title2(context),
                            enabled: true,
                            border: const OutlineInputBorder(),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.primary, width: 2.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: context.witdhSize05,
                      ),
                      Expanded(
                        child: ReactiveTextField(
                          maxLines: 1,
                          validationMessages: {
                            'required': (error) => 'Boş bırakılamaz',
                          },
                          style: Theme.of(context).textTheme.title2(context),
                          formControlName: 'surname',
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: context.witdhSize10,
                                horizontal: context.heightSize10),
                            labelText: " Soyad",
                            labelStyle:
                                Theme.of(context).textTheme.title2(context),
                            enabled: true,
                            prefixStyle:
                                Theme.of(context).textTheme.title2(context),
                            border: const OutlineInputBorder(),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.primary, width: 2.0),
                            ),
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
                        child: ReactiveTextField(
                          maxLines: 1,
                          validationMessages: {
                            'required': (error) => 'Boş bırakılamaz',
                            'email': (error) => 'Bu bir e-mail adresi değil.'
                          },
                          style: Theme.of(context).textTheme.title2(context),
                          formControlName: 'email',
                          decoration: InputDecoration(
                            labelText: 'Mail Adresi',
                            labelStyle:
                                Theme.of(context).textTheme.title2(context),
                            enabled: true,
                            prefixIcon: Padding(
                                padding: AppPaddings.allSmall(),
                                child: const Icon(FontAwesomeIcons.at)),
                            prefixStyle:
                                Theme.of(context).textTheme.title2(context),
                            border: const OutlineInputBorder(),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.primary, width: 2.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: context.witdhSize05,
                      ),
                      Expanded(
                        child: ReactiveTextField(
                          maxLines: 1,
                          validationMessages: {
                            'required': (error) => 'Boş bırakılamaz',
                            'email': (error) => 'Bu bir e-mail adresi değil.'
                          },
                          style: Theme.of(context).textTheme.title2(context),
                          formControlName: 'phone',
                          inputFormatters: [phoneMaskFormatter],
                          decoration: InputDecoration(
                            hintText: '(###) ### ## ##',
                            hintStyle:
                                Theme.of(context).textTheme.title2(context),
                            enabled: true,
                            prefixIcon: Padding(
                                padding: AppPaddings.allSmall(),
                                child: Text(
                                  "+90",
                                  style: Theme.of(context)
                                      .textTheme
                                      .title2(context),
                                )),
                            border: const OutlineInputBorder(),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.primary, width: 2.0),
                            ),
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
                        child: ReactiveTextField(
                          maxLines: 1,
                          validationMessages: {
                            'required': (error) => 'Boş bırakılamaz',
                            'email': (error) => 'Bu bir e-mail adresş değil.'
                          },
                          style: Theme.of(context).textTheme.title2(context),
                          formControlName: 'birthday',
                          inputFormatters: [birthDateMaskFormatter],
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: context.witdhSize10,
                                horizontal: context.heightSize10),
                            errorStyle: const TextStyle(height: 0),
                            labelText: 'Doğum Tarihi',
                            hintText: "01/01/1990",
                            hintStyle:
                                Theme.of(context).textTheme.title2(context),
                            labelStyle:
                                Theme.of(context).textTheme.title2(context),
                            enabled: true,
                            border: const OutlineInputBorder(),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.primary, width: 2.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: context.witdhSize05,
                      ),
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
                            labelText: 'Ülke / Bölge',
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
                            labelText: 'Şehir',
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
                            labelText: 'İlçe',
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
                    formControlName: 'address',
                    style: Theme.of(context).textTheme.title2(context),
                    decoration: InputDecoration(
                      enabled: true,
                      labelText: 'Açık Adres (Opsiyonel)',
                      labelStyle: Theme.of(context)
                          .textTheme
                          .title2(context)
                          .copyWith(),
                      hintStyle: Theme.of(context).textTheme.title2(context),
                      suffixStyle: Theme.of(context)
                          .textTheme
                          .title2(context)
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
                      Expanded(
                          child: ReactiveTypeAhead<String, String>(
                        formControlName: 'gender',
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
                            labelText: 'Cinsiyet',
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
                          child: ReactiveTypeAhead<bool, String>(
                        formControlName: 'disabled',
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
                            labelText: 'Engelli Durumu',
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
                        child: ReactiveTextField(
                          maxLines: 1,
                          validationMessages: {
                            'required': (error) => 'Boş bırakılamaz',
                            'email': (error) => 'Bu bir e-mail adresş değil.'
                          },
                          style: Theme.of(context).textTheme.title2(context),
                          formControlName: 'linkedin',
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: context.witdhSize10,
                                horizontal: context.heightSize10),
                            labelText: 'Linkedin',
                            suffix: Padding(
                              padding: AppPaddings.rightMedium(),
                              child: const Text("Güncelle"),
                            ),
                            suffixStyle: Theme.of(context)
                                .textTheme
                                .title2(context)
                                .copyWith(color: AppColors.primary),
                            labelStyle:
                                Theme.of(context).textTheme.title2(context),
                            enabled: true,
                            border: const OutlineInputBorder(),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.primary, width: 2.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: context.witdhSize05,
                      ),
                      Expanded(
                        child: ReactiveTextField(
                          maxLines: 1,
                          validationMessages: {
                            'required': (error) => 'Boş bırakılamaz',
                            'email': (error) => 'Bu bir e-mail adresi değil.'
                          },
                          style: Theme.of(context).textTheme.title2(context),
                          formControlName: 'instagram',
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: context.witdhSize10,
                                horizontal: context.heightSize10),
                            labelText: 'Instagram',
                            suffix: Padding(
                              padding: AppPaddings.rightMedium(),
                              child: const Text("Güncelle"),
                            ),
                            suffixStyle: Theme.of(context)
                                .textTheme
                                .title2(context)
                                .copyWith(color: AppColors.primary),
                            labelStyle:
                                Theme.of(context).textTheme.title2(context),
                            enabled: true,
                            border: const OutlineInputBorder(),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.primary, width: 2.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: context.witdhSize05,
                      ),
                      Expanded(
                        child: ReactiveTextField(
                          maxLines: 1,
                          validationMessages: {
                            'required': (error) => 'Boş bırakılamaz',
                            'email': (error) => 'Bu bir e-mail adresş değil.'
                          },
                          style: Theme.of(context).textTheme.title2(context),
                          formControlName: 'twitter',
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: context.witdhSize10,
                                horizontal: context.heightSize10),
                            labelText: 'Twitter',
                            labelStyle:
                                Theme.of(context).textTheme.title2(context),
                            enabled: true,
                            border: const OutlineInputBorder(),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.primary, width: 2.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: context.heightSize30,
                  ),
                  ReactiveForm(
                    formGroup: form,
                    child: ReactiveTextField<String>(
                      formControlName: 'address',
                      style: Theme.of(context).textTheme.title2(context),
                      decoration: InputDecoration(
                        enabled: true,
                        labelText: 'Kısa Özgeçmiş (Opsiyonel)',
                        labelStyle: Theme.of(context).textTheme.title2(context),
                        hintStyle: Theme.of(context).textTheme.title2(context),
                        suffixStyle: Theme.of(context)
                            .textTheme
                            .title2(context)
                            .copyWith(color: AppColors.primary),
                        border: const OutlineInputBorder(),
                        focusedBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(color: AppColors.primary, width: 2.0),
                        ),
                      ),
                      maxLines: 4,
                    ),
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
