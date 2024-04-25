import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.8),
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: appTheme.whiteA700,
      );
// Gradient decorations
  static BoxDecoration get gradientErrorContainerToPrimary => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            theme.colorScheme.errorContainer,
            theme.colorScheme.primary.withOpacity(0.8)
          ],
        ),
      );
}

class BorderRadiusStyle {}
