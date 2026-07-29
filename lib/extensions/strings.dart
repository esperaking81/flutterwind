import 'package:flutter/material.dart';

/// Extension on [String] to easily create a [Text] widget.
///
/// Example:
/// ```dart
/// "Hello world".text(color: Colors.red, fontSize: 18);
/// ```
///
/// All parameters are optional. If [style] is provided it is merged with the
/// supplied styling values.
extension StringX on String {
  // Widget title({double fontSize = 24}) {
  //   return text(
  //     style: GoogleFonts.chewy(fontSize: fontSize, color: AppColors.primary),
  //   );
  // }
  //
  // Widget subtitle({double? fontSize}) {
  //   return text(
  //     fontWeight: .w400,
  //     color: AppColors.primary.withValues(alpha: .7),
  //   );
  // }

  Widget text({
    String? fontFamily,
    Color? color,
    FontWeight? fontWeight,
    double? fontSize,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
    TextStyle? style,
  }) {
    

    return Text(
      this,
      style: style,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
    );
  }
}
