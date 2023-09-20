import 'package:auto_route/auto_route.dart';
import 'package:isportal/blocs/auth_blocs/phone_login_auth_cubit/auth_cubit.dart';
import 'package:isportal/blocs/auth_blocs/phone_login_auth_cubit/auth_state.dart';
import 'package:isportal/navigation/router.dart';
import 'package:isportal/public_widgets/appbar/appbar.dart';
import 'package:isportal/public_widgets/appbar/mobile_drawer.dart';
import 'package:isportal/themes/constants/images_constants.dart';
import 'package:isportal/themes/constants/padding_constants.dart';
import 'package:isportal/ui/pages/authentication/widget/mail_login_widget.dart';
import 'package:isportal/utils/context_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:reactive_forms/reactive_forms.dart';

class MobileMailLoginPage extends StatefulWidget {
  const MobileMailLoginPage({super.key});

  @override
  State<MobileMailLoginPage> createState() => _MobileMailLoginPageState();
}

late FormGroup form;
late MaskTextInputFormatter maskFormatter;
late ValueNotifier<bool> passwordVisibleNotifier;

class _MobileMailLoginPageState extends State<MobileMailLoginPage> {
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
                  Padding(
                    padding: AppPaddings.leftRightMedium(),
                    child: const MailLoginWidget(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
