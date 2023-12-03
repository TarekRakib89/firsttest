import 'package:flutter/material.dart';

InputDecoration applyInputDecoration({String? text, IconData? iconData}) {
  return InputDecoration(
    border: const OutlineInputBorder(),
    enabledBorder: const OutlineInputBorder(borderSide: BorderSide.none),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide.none,
    ),
    prefixIcon: iconData != null
        ? Icon(
            iconData,
            size: 30,
            color: Colors.white,
          )
        : null,
    hintText: text ?? '',
    hintStyle: const TextStyle(
      color: Colors.black,
    ),
    contentPadding: const EdgeInsets.only(top: 10),
  );
}
