import 'package:auto_route/auto_route.dart';
import 'package:isportal/themes/constants/responsive_layout.dart';
import 'package:isportal/ui/pages/homepage/mobile_homepage.dart';
import 'package:isportal/ui/pages/homepage/tablet_homepage.dart';
import 'package:isportal/ui/pages/homepage/web_homepage.dart';

import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayout(
        mobileScaffold: MobileHomePage(),
        tabletScaffold: TabletHomePage(),
        webScaffold: WebHomePage(),
      ),
    );
  }
}
