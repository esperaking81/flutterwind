import 'package:flutter/material.dart';

extension BuildContextX on BuildContext {
  MediaQueryData get mq => MediaQuery.of(this);
}
