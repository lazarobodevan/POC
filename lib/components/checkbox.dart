import 'package:flutter/material.dart';
import 'package:poc/theme/theme.dart';

class CustomCheckbox extends StatefulWidget {
  final String value;
  final String name;
  final Function onChange;
  bool? isChecked;

  CustomCheckbox(
      {super.key,
      this.isChecked,
      required this.value,
      required this.name,
      required this.onChange}) {
    isChecked = isChecked ?? false;
  }

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  void _onChange() {
    setState(() {
      widget.isChecked = !widget.isChecked!;
      widget.onChange(widget.value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onChange,
      child: Row(
        children: [
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                border: Border.all(color: ThemeColors.secondaryBlack),
                color: widget.isChecked == true
                    ? ThemeColors.primary2
                    : Colors.transparent),
          ),
          const SizedBox(
            width: 4,
          ),
          Text(
            widget.name,
            style: const TextStyle(fontSize: 16),
          )
        ],
      ),
    );
  }
}
