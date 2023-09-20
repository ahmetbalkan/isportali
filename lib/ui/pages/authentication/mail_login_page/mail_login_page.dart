import 'package:auto_route/auto_route.dart';
import 'package:isportal/blocs/auth_blocs/phone_login_auth_cubit/auth_cubit.dart';
import 'package:isportal/data/repositories/authentication_repository.dart';
import 'package:isportal/themes/constants/responsive_layout.dart';
import 'package:isportal/ui/pages/authentication/mail_login_page/mobile_mail_login_page.dart';
import 'package:isportal/ui/pages/authentication/mail_login_page/tablet_mail_login_page.dart';
import 'package:isportal/ui/pages/authentication/mail_login_page/web_mail_login_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class MailLoginPage extends StatefulWidget {
  const MailLoginPage({super.key});

  @override
  State<MailLoginPage> createState() => _MailLoginPageState();
}

class _MailLoginPageState extends State<MailLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => AuthCubit(authRepository: AuthRepository()),
        child: const ResponsiveLayout(
          mobileScaffold: MobileMailLoginPage(),
          tabletScaffold: TabletMailLoginPage(),
          webScaffold: WebMailLoginPage(),
        ),
      ),
    );
  }
}
