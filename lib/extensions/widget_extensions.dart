import 'package:flutter/material.dart';

/// Extension on [Widget] to easily add tap/click behaviour.
///
/// Example:
/// ```dart
/// const Icon(Icons.add).onTap(() => print('tapped'));
/// ```
///
/// The extension uses an [InkWell] so it displays the Material ripple effect when
/// placed inside a Material widget. If you need a plain [GestureDetector], use
/// the [gestureDetector] helper.
extension WidgetX on Widget {
  /// Wraps the widget in an [InkWell] with the given [onTap] callback.
  ///
  /// Optional [borderRadius] and [splashColor] can be supplied to customise
  /// the ripple effect.
  Widget onTap(
    VoidCallback? onTap, {
    BorderRadius? borderRadius,
    Color? splashColor,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: borderRadius,
      splashColor: splashColor,
      child: this,
    );
  }

  /// Alias for [onTap] that matches the terminology used in many UI libraries.
  Widget onClick(VoidCallback? onClick) => onTap(onClick);

  /// Wraps the widget in a plain [GestureDetector].
  /// Useful when you don't want a ripple effect or are not inside a Material.
  Widget gestureDetector({
    VoidCallback? onTap,
    VoidCallback? onDoubleTap,
    VoidCallback? onLongPress,
  }) {
    return GestureDetector(
      onTap: onTap,
      onDoubleTap: onDoubleTap,
      onLongPress: onLongPress,
      child: this,
    );
  }

  /// Wraps the widget in an [Expanded] widget.
  /// Optional [flex] controls the flex factor.
  Widget expanded({int flex = 1}) => Expanded(
    flex: flex,
    child: this,
  );

  /// Wraps the widget in a [SizedBox] with width set to double.infinity.
  /// Useful for making a widget span the full width.
  Widget wFull() => SizedBox(
    width: double.infinity,
    child: this,
  );

  /// Wraps the widget in a [SizedBox] with height set to double.infinity.
  /// Useful for making a widget span the full height.
  Widget hFull() => SizedBox(
    height: double.infinity,
    child: this,
  );
}
