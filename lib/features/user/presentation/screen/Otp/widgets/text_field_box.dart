import 'package:bienvenue_consumer_app_flutter/shared/widgets/text_field.dart';
import 'package:bienvenue_consumer_app_flutter/shared/widgets/text_field_container.dart';
import 'package:flutter/material.dart';

class TextFieldBox extends StatelessWidget {
  final bool autofocus;
  final Function onChange;
  final TextEditingController? controller;

  const TextFieldBox({
    super.key,
    this.autofocus = false,
    required this.onChange,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      width: 55,
      child: MyTextField(
        controller: controller,
        hintText: '',
        autofocus: autofocus,
        length: 1,
        onChange: onChange,
        required: false,
        textCenter: true,
        keyboardType: TextInputType.number,
      ),
    );
  }
}
