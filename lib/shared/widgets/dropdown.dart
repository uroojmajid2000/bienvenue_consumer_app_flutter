import 'package:flutter/material.dart';

class MyDropdown extends StatelessWidget {
  final List<String> items;
  final String? selected;
  final onChange;

  const MyDropdown({
    super.key,
    required this.items,
    required this.selected,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    InputBorder border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Color(0xFFB8B8B8),
      ),
    );

    return DropdownButtonFormField(
      decoration: InputDecoration(
        border: border,
        enabledBorder: border,
        focusedBorder: border,
      ),
      items: items
          .map(
            (item) => DropdownMenuItem<String>(
                value: item,
                child: Text(
                  item,
                )),
          )
          .toList(),
      value: selected,
      onChanged: onChange,
      style: TextStyle(
        color: const Color(0xFF111113).withOpacity(0.6),
        fontSize: 16,
      ),
    );
  }
}
