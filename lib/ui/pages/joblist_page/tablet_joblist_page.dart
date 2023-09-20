import 'package:flutter/material.dart';

class TabletJobListPage extends StatelessWidget {
  const TabletJobListPage({super.key});

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
