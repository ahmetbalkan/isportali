import 'package:isportal/blocs/auth_blocs/phone_login_auth_cubit/auth_cubit.dart';
import 'package:isportal/public_widgets/buttons.dart';
import 'package:isportal/themes/constants/color_constants.dart';
import 'package:isportal/utils/context_extention.dart';
import 'package:isportal/utils/other_extention.dart';
import 'package:isportal/utils/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../themes/constants/textstyle_constants.dart';

class PersonalDetailsWidget extends StatefulWidget {
  const PersonalDetailsWidget({
    super.key,
  });

  @override
  State<PersonalDetailsWidget> createState() => _PersonalDetailsWidgetState();
}

late FormGroup form2;

class _PersonalDetailsWidgetState extends State<PersonalDetailsWidget> {
  @override
  void initState() {
    form2 = FormGroup({
      'phonedisable': FormControl<String>(
        value: context.read<AuthCubit>().state.phone == ""
            ? "5344907022"
            : context.read<AuthCubit>().state.phone,
        disabled: true,
      ),
      'firstname': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
      'lastname': FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveForm(
      formGroup: form2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: context.screenHeight * 0.1,
          ),
          Text(
            "Kaydı tamamlamak için bilgilerinize ihtiyacımız var.",
            style: AppTextSyles.RedHatDisplayBold(
                fontWeight: FontWeight.bold,
                fontSize: context.screenWidth * 0.012),
          ),
          SizedBox(
            height: context.heightSize20,
          ),
          SizedBox(
            width: context.screenWidth * 0.25,
            child: Column(
              children: [
                ReactiveTextField(
                  maxLines: 1,
                  maxLength: 10,
                  style: Theme.of(context).textTheme.title4(context),
                  formControlName: 'phonedisable',
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 25.0),
                    labelText: 'Lütfen telefon numaranızı yazınız.',
                    hintText: " (551) 111-11-11",
                    labelStyle: Theme.of(context).textTheme.title4(context),
                    hintStyle: Theme.of(context).textTheme.title4(context),
                    enabled: true,
                    prefixIcon: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(FontAwesomeIcons.phone)),
                    prefixText: "+90 ",
                    prefixStyle: Theme.of(context)
                        .textTheme
                        .title4(context)
                        .copyWith(color: Colors.grey.shade400),
                    border: const OutlineInputBorder(),
                    focusedBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(color: AppColors.primary, width: 2.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: context.heightSize10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ReactiveTextField(
                        maxLines: 1,
                        validationMessages: {
                          'required': (error) => 'Boş bırakılamaz',
                        },
                        style: Theme.of(context).textTheme.title4(context),
                        formControlName: 'firstname',
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 25.0),
                          labelText: 'Ad',
                          hintText: "Ad",
                          labelStyle:
                              Theme.of(context).textTheme.title4(context),
                          hintStyle:
                              Theme.of(context).textTheme.title4(context),
                          enabled: true,
                          prefixIcon: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(FontAwesomeIcons.phone)),
                          border: const OutlineInputBorder(),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                                color: AppColors.primary, width: 2.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: context.witdhSize10,
                    ),
                    Expanded(
                      child: ReactiveTextField(
                        maxLines: 1,
                        validationMessages: {
                          'required': (error) => 'Boş bırakılamaz',
                        },
                        style: Theme.of(context).textTheme.title4(context),
                        formControlName: 'lastname',
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 25.0),
                          labelText: 'Soyad',
                          hintText: "Soyad",
                          labelStyle:
                              Theme.of(context).textTheme.title4(context),
                          hintStyle:
                              Theme.of(context).textTheme.title4(context),
                          enabled: true,
                          prefixIcon: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(FontAwesomeIcons.phone)),
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
                  height: context.heightSize20,
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: CustomButton(
                      text: "Kayıdı Tamamla",
                      onPressed: () async {
                        form2.markAllAsTouched();
                        if (form2.valid) {
                          context.read<AuthCubit>().savePersonalData(
                                form2.formToString("firstname"),
                                form2.formToString("lastname"),
                              );
                        }
                      },
                      fontSize: context.title2),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
