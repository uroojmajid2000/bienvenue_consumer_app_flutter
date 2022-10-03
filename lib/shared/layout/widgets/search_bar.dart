import 'package:bienvenue_consumer_app_flutter/resources/constants.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  OutlineInputBorder border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(9.0),
    borderSide: const BorderSide(
      color: Colors.transparent,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 50.0,
      child: TextFormField(
        onChanged: (String value) {},
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search,
            color: kPrimaryColor,
          ),
          prefixIconColor: kPrimaryColor,
          contentPadding: const EdgeInsets.all(10.0),
          filled: true,
          fillColor: kPrimaryColor.shade50,
          hintText: "What do you want to eat?",
          hintStyle: const TextStyle(
            color: Colors.black,
            fontSize: 12,
          ),
          border: border,
          enabledBorder: border,
          disabledBorder: border,
          focusedBorder: border,
        ),
      ),
    );
  }
}
