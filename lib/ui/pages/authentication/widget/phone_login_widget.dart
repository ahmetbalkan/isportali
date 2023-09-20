import 'package:auto_route/auto_route.dart';
import 'package:isportal/blocs/auth_blocs/phone_login_auth_cubit/auth_cubit.dart';
import 'package:isportal/navigation/router.dart';
import 'package:isportal/public_widgets/buttons.dart';
import 'package:isportal/themes/constants/color_constants.dart';
import 'package:isportal/utils/context_extention.dart';
import 'package:isportal/utils/other_extention.dart';
import 'package:isportal/utils/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:reactive_forms/reactive_forms.dart';

class PhoneLoginWidget extends StatefulWidget {
  const PhoneLoginWidget({
    super.key,
  });

  @override
  State<PhoneLoginWidget> createState() => _PhoneLoginWidgetState();
}

late FormGroup form, form2;
late MaskTextInputFormatter maskFormatter;

class _PhoneLoginWidgetState extends State<PhoneLoginWidget> {
  @override
  void initState() {
    maskFormatter = MaskTextInputFormatter(
        mask: '(###) ###-##-##',
        filter: {"#": RegExp(r'[0-9]')},
        type: MaskAutoCompletionType.lazy);
    form = FormGroup({
      'phone': FormControl<String>(
        value: "5344907022",
        validators: [
          Validators.required,
          Validators.pattern(r'(^(?:[+0]9)?[0-9]{10,12}$)'),
        ],
      ),
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveForm(
      formGroup: form,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: context.screenHeight * 0.1,
          ),
          Text("Telefon Numarası ile Giriş Yap",
              style: Theme.of(context).textTheme.title5(context)),
          SizedBox(
            height: context.screenHeight * 0.02,
          ),
          Text(
            "Giriş yapmanız için size bir sms göndereceğiz.",
            style: Theme.of(context).textTheme.title3(context),
          ),
          SizedBox(
            height: context.screenHeight * 0.02,
          ),
          Text(
            "Lütfen telefon numaranızı ekleyin.",
            style: Theme.of(context).textTheme.title3(context),
          ),
          SizedBox(
            height: context.screenHeight * 0.04,
          ),
          SizedBox(
            child: Column(
              children: [
                ReactiveTextField(
                  maxLines: 1,
                  maxLength: 10,
                  validationMessages: {
                    'required': (error) => 'Boş bırakılamaz',
                    'pattern': (error) => 'Bu bir telefon numarası değil.'
                  },
                  style: Theme.of(context).textTheme.title4(context),
                  formControlName: 'phone',
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
                    prefixStyle: Theme.of(context).textTheme.title4(context),
                    border: const OutlineInputBorder(),
                    focusedBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(color: AppColors.primary, width: 2.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: context.screenHeight * 0.04,
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: MobileCustomButton(
                      text: "Gönder",
                      onPressed: () async {
                        context
                            .read<AuthCubit>()
                            .phoneSend(form.toPhoneNumberWithPrefix('phone'));
                      },
                      textStyle: Theme.of(context).textTheme.title2(context)),
                ),
                SizedBox(
                  height: context.heightSize10,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "ya da",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.title1(context),
                  ),
                ),
                SizedBox(
                  height: context.heightSize10,
                ),
                SizedBox(
                  height: 60,
                  width: double.maxFinite,
                  child: CustomOutlinedButton(
                    text: "Mail ile Giriş Yap",
                    onPressed: () async {
                      context.router.replace(const MailLoginRoute());
                    },
                    textStyle: Theme.of(context).textTheme.title2(context),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
