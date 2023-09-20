/*import 'package:flutter/material.dart';
import 'package:html/parser.dart';

class HtmlListWidget extends StatefulWidget {
  final String htmlContent;

  const HtmlListWidget({super.key, required this.htmlContent});

  @override
  _HtmlListWidgetState createState() => _HtmlListWidgetState();
}

class _HtmlListWidgetState extends State<HtmlListWidget> {
  List<String> items = [];

  @override
  void initState() {
    super.initState();
    items = widget.htmlContent.htmlToList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            '${index + 1}. ${items[index]}',
            style: const TextStyle(fontSize: 16),
          ),
        );
      },
    );
  }
}

extension HtmlToList on String {
  List<String> htmlToList() {
    var document = parse(this);
    var listItems = document.querySelectorAll('li');
    return listItems.map((item) => item.text).toList();
  }
}
*/