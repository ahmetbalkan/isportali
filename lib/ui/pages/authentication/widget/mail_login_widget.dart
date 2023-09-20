import 'package:auto_route/auto_route.dart';
import 'package:isportal/blocs/auth_blocs/phone_login_auth_cubit/auth_cubit.dart';
import 'package:isportal/blocs/auth_blocs/phone_login_auth_cubit/auth_state.dart';
import 'package:isportal/navigation/router.dart';
import 'package:isportal/public_widgets/buttons.dart';
import 'package:isportal/themes/constants/color_constants.dart';
import 'package:isportal/themes/constants/padding_constants.dart';
import 'package:isportal/utils/context_extention.dart';
import 'package:isportal/utils/other_extention.dart';
import 'package:isportal/utils/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:reactive_forms/reactive_forms.dart';

class MailLoginWidget extends StatefulWidget {
  const MailLoginWidget({super.key});

  @override
  State<MailLoginWidget> createState() => _MailLoginWidgetState();
}

late FormGroup form;
late MaskTextInputFormatter maskFormatter;
late ValueNotifier<bool> passwordVisibleNotifier;

class _MailLoginWidgetState extends State<MailLoginWidget> {
  @override
  void initState() {
    passwordVisibleNotifier = ValueNotifier(true);
    form = FormGroup({
      'mail': FormControl<String>(
        value: "rasbabaxd1@gmail.com",
        validators: [
          Validators.required,
          Validators.email,
        ],
      ),
      'password': FormControl<String>(
        value: "Maal011797",
        validators: [
          Validators.required,
        ],
      ),
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return ReactiveForm(
          formGroup: form,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: context.screenHeight * 0.1,
              ),
              Text(
                "Mail ile Giriş Yap",
                style: Theme.of(context).textTheme.title5(context),
              ),
              SizedBox(
                height: context.screenHeight * 0.02,
              ),
              Text(
                "Lütfen e-mail adresinizi ve şifrenizi giriniz.",
                style: Theme.of(context).textTheme.title3(context),
              ),
              SizedBox(
                height: context.screenHeight * 0.04,
              ),
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReactiveTextField(
                      maxLines: 1,
                      validationMessages: {
                        'required': (error) => 'Boş bırakılamaz',
                        'email': (error) => 'Bu bir e-mail adresş değil.'
                      },
                      style: Theme.of(context).textTheme.title4(context),
                      formControlName: 'mail',
                      decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 25.0),
                        labelText: 'Lütfen email adresinizi yazınız.',
                        hintText: " mail@giriniz.com",
                        labelStyle: Theme.of(context).textTheme.title4(context),
                        hintStyle: Theme.of(context).textTheme.title4(context),
                        enabled: true,
                        prefixIcon: Padding(
                            padding: AppPaddings.allSmall(),
                            child: const Icon(FontAwesomeIcons.at)),
                        prefixStyle:
                            Theme.of(context).textTheme.title4(context),
                        border: const OutlineInputBorder(),
                        focusedBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(color: AppColors.primary, width: 2.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: context.heightSize20,
                    ),
                    ReactiveTextField(
                      maxLines: 1,
                      validationMessages: {
                        'required': (error) => 'Boş bırakılamaz',
                      },
                      style: Theme.of(context).textTheme.title4(context),
                      formControlName: 'password',
                      obscureText: passwordVisibleNotifier.value,
                      decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 25.0),
                        labelText: 'Lütfen şifrenizi yazınız.',
                        hintText: "Şifre",
                        labelStyle: Theme.of(context).textTheme.title4(context),
                        hintStyle: Theme.of(context).textTheme.title4(context),
                        enabled: true,
                        prefixIcon: Padding(
                            padding: AppPaddings.allSmall(),
                            child: const Icon(FontAwesomeIcons.key)),
                        prefixStyle:
                            Theme.of(context).textTheme.title4(context),
                        border: const OutlineInputBorder(),
                        focusedBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(color: AppColors.primary, width: 2.0),
                        ),
                        suffixIcon: ValueListenableBuilder<bool>(
                          valueListenable: passwordVisibleNotifier,
                          builder: (context, value, child) {
                            return IconButton(
                              icon: Icon(
                                value ? Icons.visibility : Icons.visibility_off,
                              ),
                              onPressed: () {
                                passwordVisibleNotifier.value = !value;
                              },
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: context.heightSize10,
                    ),
                    Text(
                      state.errorMessage,
                      style: Theme.of(context)
                          .textTheme
                          .title1(context)
                          .copyWith(color: Colors.red),
                    ),
                    SizedBox(
                      height: context.heightSize10,
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      child: MobileCustomButton(
                        text: "Giriş Yap",
                        onPressed: () async {
                          context.read<AuthCubit>().mailLogin(
                              form.formToString("mail"),
                              form.formToString("password"));
                        },
                        textStyle: Theme.of(context).textTheme.title2(context),
                      ),
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
                        text: "Telefon ile Giriş Yap",
                        onPressed: () async {
                          context.router.replace(const PhoneLoginRoute());
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
      },
    );
  }
}
