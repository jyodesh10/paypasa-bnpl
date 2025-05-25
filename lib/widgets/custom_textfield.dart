import 'package:flutter/material.dart';

import '../constants/color_constants.dart';
import '../constants/font_constants.dart';

class CustomTextfield extends StatefulWidget {
  const CustomTextfield({super.key, required this.hintText});
  final String hintText;

  @override
  State<CustomTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: TextField(
        // controller: searchCon,
        style: subtitleStyle.copyWith(color: black),
        cursorColor: brown,
        maxLines: 1,
        textAlignVertical: TextAlignVertical.center,
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.search,
        autofocus: true,
        // onSubmitted: (value) {
        //   searchProduct(value);
        // },
        // onChanged: (value) {
        //   searchProduct(value);
        // },
        decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: subtitleStyle.copyWith(
                color: textgrey),
            filled: true,
            isDense: true,
            fillColor: white,
            enabledBorder:
                OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(12)),
            focusedBorder:
                OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(12)),
            border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(12))),
      ),
    );
  }
}