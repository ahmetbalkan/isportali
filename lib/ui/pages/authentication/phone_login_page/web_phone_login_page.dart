import 'package:auto_route/auto_route.dart';
import 'package:isportal/blocs/auth_blocs/phone_login_auth_cubit/auth_cubit.dart';
import 'package:isportal/blocs/auth_blocs/phone_login_auth_cubit/auth_state.dart';
import 'package:isportal/navigation/router.dart';
import 'package:isportal/public_widgets/appbar/appbar.dart';
import 'package:isportal/public_widgets/footer/footer.dart';
import 'package:isportal/themes/constants/color_constants.dart';
import 'package:isportal/themes/constants/images_constants.dart';
import 'package:isportal/themes/constants/padding_constants.dart';
import 'package:isportal/ui/pages/authentication/widget/code_widget.dart';
import 'package:isportal/ui/pages/authentication/widget/loading_widget.dart';
import 'package:isportal/ui/pages/authentication/widget/personal_widget.dart';
import 'package:isportal/ui/pages/authentication/widget/phone_login_widget.dart';
import 'package:isportal/utils/context_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:reactive_forms/reactive_forms.dart';

class WebPhoneLoginPage extends StatefulWidget {
  const WebPhoneLoginPage({super.key});

  @override
  State<WebPhoneLoginPage> createState() => _WebPhoneLoginPageState();
}

late FormGroup form, form2;
late MaskTextInputFormatter maskFormatter;

class _WebPhoneLoginPageState extends State<WebPhoneLoginPage> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state.loginStatus == const AuthStatus.complete()) {
          AutoRouter.of(context).pushAndPopUntil(
            const CvRoute(),
            predicate: (route) => false,
          );
        }
      },
      child: Scaffold(
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(context.screenHeight * .08),
              child: const AppBarWidget()),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      color: AppColors.white,
                      width: context.screenWidth,
                      height: context.screenHeight * 0.6,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Spacer(),
                          Expanded(
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Image.asset(
                                ImageConstants.instance.homepage_slide,
                                width: context.screenWidth,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    BlocBuilder<AuthCubit, AuthState>(
                      builder: (context, state) {
                        return Padding(
                          padding: AppPaddings.leftXXXLarge(),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                                width: context.screenWidth * 0.3,
                                height: context.screenHeight * 0.7,
                                child: state.loginStatus.when(
                                  login: () => const PhoneLoginWidget(),
                                  code: () => const CodeWidget(),
                                  personaldetails: () =>
                                      const PersonalDetailsWidget(),
                                  loading: () => const LoadingWidget(),
                                  complete: () => const PhoneLoginWidget(),
                                )),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(
                  width: context.screenWidth * .8,
                  child: const FooterWidget(),
                ),
              ],
            ),
          )),
    );
  }
}
