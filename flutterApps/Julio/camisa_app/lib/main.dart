import 'package:flutter/material.dart';
import 'home_page.dart';
import 'shirt_editor_page.dart';

void main() {
  runApp(CamisetaEditorApp());
}

class CamisetaEditorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Editor de Camisetas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
