import 'package:flutter/material.dart';

class TabletCvPage extends StatelessWidget {
  const TabletCvPage({super.key});

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
