import 'package:auto_route/auto_route.dart';
import 'package:isportal/themes/constants/responsive_layout.dart';
import 'package:isportal/ui/pages/cv_page/cv_page/mobile_cv_page.dart';
import 'package:isportal/ui/pages/cv_page/cv_page/web_cv_page.dart';

import 'package:flutter/material.dart';

@RoutePage()
class CvPage extends StatefulWidget {
  const CvPage({
    super.key,
  });

  @override
  State<CvPage> createState() => _CvPageState();
}

class _CvPageState extends State<CvPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayout(
        mobileScaffold: MobileCvPage(),
        tabletScaffold: WebCvPage(),
        webScaffold: WebCvPage(),
      ),
    );
  }
}
