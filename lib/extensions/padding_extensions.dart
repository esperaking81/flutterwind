import 'package:flutter/material.dart';

/// Extension on [Widget] to easily add padding.
///
/// Tailwind‑style shorthands are provided for quick use.
///
/// Example:
/// ```dart
/// const Text('Hello').p(8); // all sides
/// const Text('Hello').px(8); // horizontal
/// const Text('Hello').py(12); // vertical
/// const Text('Hello').pt(4); // top
/// const Text('Hello').pb(4); // bottom
/// const Text('Hello').pl(6); // left
/// const Text('Hello').pr(6); // right
/// ```
extension PaddingX on Widget {
  /// Wrap the widget with [Padding] using the supplied [EdgeInsets].
  Widget padded(EdgeInsets insets) => Padding(padding: insets, child: this);

  /// Tailwind‑style shorthand for padding all sides.
  Widget p(double value) => padded(EdgeInsets.all(value));

  /// Tailwind‑style shorthand for horizontal padding.
  Widget px(double value) => padded(EdgeInsets.symmetric(horizontal: value));

  /// Tailwind‑style shorthand for vertical padding.
  Widget py(double value) => padded(EdgeInsets.symmetric(vertical: value));

  /// Tailwind‑style shorthand for top padding.
  Widget pt(double value) => padded(EdgeInsets.only(top: value));

  /// Tailwind‑style shorthand for bottom padding.
  Widget pb(double value) => padded(EdgeInsets.only(bottom: value));

  /// Tailwind‑style shorthand for left padding.
  Widget pl(double value) => padded(EdgeInsets.only(left: value));

  /// Tailwind‑style shorthand for right padding.
  Widget pr(double value) => padded(EdgeInsets.only(right: value));
}
