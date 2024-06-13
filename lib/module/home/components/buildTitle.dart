import 'package:flutter/material.dart';

Padding buildTitle(String content) {
  return Padding(padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
    child: Text(content, style: TextStyle(fontSize: 20, fontFamily: 'QuickSandSemiBold'),),
  );
}