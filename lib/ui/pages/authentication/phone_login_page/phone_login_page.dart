import 'package:auto_route/auto_route.dart';
import 'package:isportal/themes/constants/responsive_layout.dart';
import 'package:isportal/ui/pages/authentication/phone_login_page/mobile_phone_login_page.dart';
import 'package:isportal/ui/pages/authentication/phone_login_page/tablet_phone_login_page.dart';
import 'package:isportal/ui/pages/authentication/phone_login_page/web_phone_login_page.dart';

import 'package:flutter/material.dart';

@RoutePage()
class PhoneLoginPage extends StatefulWidget {
  const PhoneLoginPage({super.key});

  @override
  State<PhoneLoginPage> createState() => _PhoneLoginPageState();
}

class _PhoneLoginPageState extends State<PhoneLoginPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayout(
        mobileScaffold: MobilePhoneLoginPage(),
        tabletScaffold: TabletPhoneLoginPage(),
        webScaffold: WebPhoneLoginPage(),
      ),
    );
  }
}
