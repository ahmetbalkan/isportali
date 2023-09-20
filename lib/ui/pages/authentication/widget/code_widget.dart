import 'package:isportal/blocs/auth_blocs/phone_login_auth_cubit/auth_cubit.dart';
import 'package:isportal/blocs/auth_blocs/phone_login_auth_cubit/auth_state.dart';
import 'package:isportal/public_widgets/buttons.dart';
import 'package:isportal/themes/constants/color_constants.dart';
import 'package:isportal/utils/context_extention.dart';
import 'package:isportal/utils/other_extention.dart';
import 'package:isportal/utils/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_pinput/reactive_pinput.dart';

class CodeWidget extends StatefulWidget {
  const CodeWidget({
    super.key,
  });

  @override
  State<CodeWidget> createState() => _CodeWidgetState();
}

late FormGroup form;
late MaskTextInputFormatter maskFormatter;

class _CodeWidgetState extends State<CodeWidget> {
  @override
  void initState() {
    form = FormGroup({
      'pin': FormControl<String>(
        validators: [Validators.required, Validators.minLength(4)],
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
                "Kodu Doğrula",
                style: Theme.of(context).textTheme.title5(context),
              ),
              SizedBox(
                height: context.screenHeight * 0.02,
              ),
              Text(
                "${state.countdown} saniye içerisinde telefonunuza gelen şifreyi girin.",
                style: Theme.of(context).textTheme.title5(context),
              ),
              SizedBox(
                height: context.screenHeight * 0.04,
              ),
              SizedBox(
                child: Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: context.screenHeight * 0.04,
                        ),
                        SizedBox(
                          width: double.maxFinite,
                          child: ReactivePinPut<String>(
                            formControlName: 'pin',
                            length: 4,
                            validationMessages: {
                              'required': (error) => 'Boş bırakılamaz',
                              'minLength': (error) =>
                                  'En az 4 haneli olmalı bırakılamaz',
                            },
                            defaultPinTheme: PinTheme(
                              width: 100,
                              height: 80,
                              textStyle: Theme.of(context)
                                  .textTheme
                                  .titlebig5(context),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: AppColors.primary),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: context.screenHeight * 0.04,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      child: MobileCustomButton(
                          text: "Gönder",
                          onPressed: () {
                            context
                                .read<AuthCubit>()
                                .authCode(form.formToString("pin"));
                          },
                          textStyle:
                              Theme.of(context).textTheme.title3(context)),
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
