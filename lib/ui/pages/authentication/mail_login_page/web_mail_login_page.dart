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
import 'package:isportal/ui/pages/authentication/widget/mail_login_widget.dart';
import 'package:isportal/utils/context_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WebMailLoginPage extends StatelessWidget {
  const WebMailLoginPage({super.key});

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
                                child: state.loginStatus.when(
                                  personaldetails: () =>
                                      const MailLoginWidget(),
                                  code: () => const CodeWidget(),
                                  login: () => const MailLoginWidget(),
                                  loading: () => const LoadingWidget(),
                                  complete: () => const MailLoginWidget(),
                                )),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: context.heightSize150,
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
