import 'package:flutter/material.dart';
import 'package:poc/theme/theme.dart';

class ColorPicker extends StatefulWidget {
  final List<Color> colors;
  final Color? defaultSelected;

  const ColorPicker(
      {super.key, required this.colors, this.defaultSelected});

  @override
  State<ColorPicker> createState() => _ColorPickerState();
}

class _ColorPickerState extends State<ColorPicker> {

  @override
  Widget build(BuildContext context) {
    var selectedColor = widget.defaultSelected != null ? widget.colors.indexOf(widget.defaultSelected!) : 0;
    return ListView(
      scrollDirection: Axis.horizontal,
      children: widget.colors.asMap().entries.map((color) {
        return Padding(
          padding: const EdgeInsets.only(right: 8),
          child: InkWell(
            borderRadius: BorderRadius.circular(50),
            onTap: () {
              setState(() {
                selectedColor = color.key;
              });
            },
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: selectedColor == color.key
                      ? color.value
                      : color.value.withOpacity(0.5),
                  border: selectedColor == color.key
                      ? Border.all(color: ThemeColors.primary2, width: 3)
                      : null),
            ),
          ),
        );
      }).toList(),
    );
  }
}
