import 'package:auto_route/auto_route.dart';
import 'package:isportal/blocs/auth_blocs/phone_login_auth_cubit/auth_cubit.dart';
import 'package:isportal/blocs/auth_blocs/phone_login_auth_cubit/auth_state.dart';
import 'package:isportal/navigation/router.dart';
import 'package:isportal/public_widgets/appbar/appbar.dart';
import 'package:isportal/public_widgets/appbar/mobile_drawer.dart';
import 'package:isportal/themes/constants/images_constants.dart';
import 'package:isportal/themes/constants/padding_constants.dart';
import 'package:isportal/ui/pages/authentication/widget/code_widget.dart';
import 'package:isportal/ui/pages/authentication/widget/loading_widget.dart';
import 'package:isportal/ui/pages/authentication/widget/personal_widget.dart';
import 'package:isportal/ui/pages/authentication/widget/phone_login_widget.dart';
import 'package:isportal/utils/context_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MobilePhoneLoginPage extends StatelessWidget {
  const MobilePhoneLoginPage({super.key});

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
      child: SafeArea(
        child: Scaffold(
          drawer: const MobileDrawer(),
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(context.screenHeight * .08),
              child: const MobileAppbarWidget()),
          body: SingleChildScrollView(
            child: SizedBox(
              height: context.screenHeight,
              child: Padding(
                padding: AppPaddings.leftRightMedium(),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      child: Image.asset(
                        ImageConstants.instance.homepage_slide,
                        width: context.screenWidth,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    BlocBuilder<AuthCubit, AuthState>(
                      builder: (context, state) {
                        return SizedBox(
                          child: state.loginStatus.when(
                            login: () => const PhoneLoginWidget(),
                            code: () => const CodeWidget(),
                            personaldetails: () =>
                                const PersonalDetailsWidget(),
                            loading: () => const LoadingWidget(),
                            complete: () => const PhoneLoginWidget(),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
