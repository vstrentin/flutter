import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class ShirtEditorPage extends StatefulWidget {
  final String assetPath;

  ShirtEditorPage({required this.assetPath});

  @override
  _ShirtEditorPageState createState() => _ShirtEditorPageState();
}

class _ShirtEditorPageState extends State<ShirtEditorPage> {
  Color color1 = Colors.white;
  Color color2 = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Editor de Camisas'),
      ),
      body: Column(
        children: [
          Expanded(
            child: SvgPicture.asset(
              widget.assetPath,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ColorPickerButton(
                color: color1,
                onColorChanged: (newColor) {
                  setState(() {
                    color1 = newColor;
                  });
                },
              ),
              ColorPickerButton(
                color: color2,
                onColorChanged: (newColor) {
                  setState(() {
                    color2 = newColor;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ColorPickerButton extends StatelessWidget {
  final Color color;
  final ValueChanged<Color> onColorChanged;

  ColorPickerButton({required this.color, required this.onColorChanged});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            content: SingleChildScrollView(
              child: ColorPicker(
                pickerColor: color,
                onColorChanged: onColorChanged,
                pickerAreaHeightPercent: 0.8,
              ),
            ),
          ),
        );
      },
      style: ElevatedButton.styleFrom(backgroundColor: color),
      child: const Text('Selecione a cor'),
    );
  }
}
