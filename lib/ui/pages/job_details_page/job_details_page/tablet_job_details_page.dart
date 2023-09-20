import 'package:flutter/material.dart';

class TabletJobDetailsPage extends StatelessWidget {
  const TabletJobDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Text("Tablet"),
            )
          ],
        ),
      ),
    );
  }
}
