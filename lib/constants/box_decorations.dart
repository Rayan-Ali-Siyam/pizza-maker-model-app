import 'package:flutter/material.dart';

class AppBoxDecorations {
  static const BoxDecoration card = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.all(Radius.circular(10)),
    boxShadow: [
      BoxShadow(
        color: Colors.black12,
        blurRadius: 5,
        spreadRadius: 2,
      ),
    ],
  );
}
