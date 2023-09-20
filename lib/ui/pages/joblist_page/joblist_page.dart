import 'package:auto_route/auto_route.dart';
import 'package:isportal/themes/constants/responsive_layout.dart';
import 'package:isportal/ui/pages/joblist_page/mobile_joblist_page.dart';
import 'package:isportal/ui/pages/joblist_page/tablet_joblist_page.dart';
import 'package:isportal/ui/pages/joblist_page/web_joblist_page.dart';
import 'package:flutter/material.dart';

@RoutePage()
class JobListPage extends StatefulWidget {
  const JobListPage({super.key});

  @override
  State<JobListPage> createState() => _JobListPageState();
}

class _JobListPageState extends State<JobListPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayout(
        mobileScaffold: MobileJobListPage(),
        tabletScaffold: TabletJobListPage(),
        webScaffold: WebJobListPage(),
      ),
    );
  }
}
