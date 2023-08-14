import 'package:flutter/material.dart';
import 'package:poc/theme/theme.dart';

class ColorPicker extends StatefulWidget {
  final List<Color> colors;
  const ColorPicker({super.key, required this.colors});

  @override
  State<ColorPicker> createState() => _ColorPickerState();
}

class _ColorPickerState extends State<ColorPicker> {
  var selectedColor = 0;
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: widget.colors.asMap().entries.map((color) {
        return Padding(
          padding: const EdgeInsets.only(right: 8),
          child: InkWell(
            borderRadius: BorderRadius.circular(50),
            onTap: (){
              setState(() {
                selectedColor = color.key;
              });
            },
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: selectedColor == color.key ? color.value : color.value.withOpacity(0.5),
                border: selectedColor == color.key ? Border.all(color: ThemeColors.primary2, width: 3):null
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
