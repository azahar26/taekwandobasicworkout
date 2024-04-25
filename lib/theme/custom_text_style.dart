import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get irishGrover {
    return copyWith(
      fontFamily: 'Irish Grover',
    );
  }

  TextStyle get jejuHallasan {
    return copyWith(
      fontFamily: 'JejuHallasan',
    );
  }

  TextStyle get itim {
    return copyWith(
      fontFamily: 'Itim',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Headline style
  static get headlineSmallIrishGrover =>
      theme.textTheme.headlineSmall!.irishGrover;
  static get headlineSmallJejuHallasan =>
      theme.textTheme.headlineSmall!.jejuHallasan;
// Title style
  static get titleLargeIrishGrover => theme.textTheme.titleLarge!.irishGrover;
}
