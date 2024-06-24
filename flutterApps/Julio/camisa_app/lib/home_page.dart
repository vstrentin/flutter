import 'package:camisa_app/shirt_editor_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Selecione um modelo de camisa'),
      ),
      body: GridView.count(
        crossAxisCount: 1,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ShirtEditorPage(assetPath: 'assets/images/manga_curta.svg'),
                ),
              );
            },
            child: Image.asset('assets/images/manga_curta.svg'),
          ),
          // GestureDetector(
          //   onTap: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) => ShirtEditorPage(assetPath: 'assets/images/manga_curta.svg'),
          //       ),
          //     );
          //   },
          //   child: Image.asset('assets/images/manga_curta.svg'),
          // ),
        ],
      ),
    );
  }
}
