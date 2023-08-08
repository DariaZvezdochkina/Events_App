import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  void requestFocus() {
    FocusScope.of(this).requestFocus(FocusNode());
  }
}
