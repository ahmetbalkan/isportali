import 'package:auto_route/auto_route.dart';
import 'package:isportal/themes/constants/responsive_layout.dart';
import 'package:isportal/ui/pages/job_details_page/job_details_page/mobile_job_details_page.dart';
import 'package:isportal/ui/pages/job_details_page/job_details_page/tablet_job_details_page.dart';
import 'package:isportal/ui/pages/job_details_page/job_details_page/web_job_details_page.dart';
import 'package:flutter/material.dart';

@RoutePage()
class JobDetailsPage extends StatefulWidget {
  final String id;
  final String name;

  const JobDetailsPage({super.key, 
    @PathParam('id') required this.id,
    @PathParam('name') required this.name,
  });

  @override
  State<JobDetailsPage> createState() => _JobDetailsPageState();
}

class _JobDetailsPageState extends State<JobDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileScaffold: MobileJobDetailsPage(id: widget.id, name: widget.name),
        tabletScaffold: const TabletJobDetailsPage(),
        webScaffold: WebJobDetailsPage(id: widget.id, name: widget.name),
      ),
    );
  }
}
