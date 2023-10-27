import 'package:flutter/material.dart';
import 'package:poc/theme/theme.dart';

class ColorPicker extends StatefulWidget {
  final List<Color> colors;
  final Function(Color) onColorChanged;
  Color selectedColor;

  ColorPicker(
      {super.key, required this.colors, required this.onColorChanged, required this.selectedColor});

  @override
  State<ColorPicker> createState() => _ColorPickerState();
}

class _ColorPickerState extends State<ColorPicker> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.onColorChanged;
  }

  void setSelectedColor(Color color) {
    setState(() {
      widget.selectedColor = color;
      widget.onColorChanged(color); // Chame a função de callback
    });

  }

  @override
  Widget build(BuildContext context) {
    //var selectedColor = widget.defaultSelected != null ? widget.colors.indexOf(widget.defaultSelected!) : 0;
    return ListView(
      scrollDirection: Axis.horizontal,
      children: widget.colors.asMap().entries.map((color) {
        return Padding(
          padding: const EdgeInsets.only(right: 8),
          child: InkWell(
            borderRadius: BorderRadius.circular(50),
            onTap: () {
              setState(() {
                widget.selectedColor = color.value;
                setSelectedColor(color.value);
              });
            },
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: widget.selectedColor == color.value
                      ? color.value
                      : color.value.withOpacity(0.5),
                  border: widget.selectedColor == color.value
                      ? Border.all(color: ThemeColors.primary2, width: 3)
                      : null),
            ),
          ),
        );
      }).toList(),
    );
  }
}
