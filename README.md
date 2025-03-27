# Flutter Workshop

## Overview

This Flutter Workshop focuses on demonstrating how to:

1. **Design Constants**: Centralize all design elements such as colors, fonts, and sizes in a single file for easy management and future updates.
   
2. **Complex Animations**: Create complex animations using three core Flutter components:
    - `Transform`
    - `Stack`
    - `AnimationController`

Each of these components will be explored in depth, showing how to use them effectively to build smooth and interactive animations.

---

## Design Constants

In this workshop, we will use a single file to store all design-related constants, such as colors, text styles, and spacing. This makes it easy to update the design across the entire app.

### Example `design_constants.dart`:

```dart
  static const Color primaryColor = Color(0xFF6200EE);
  static const Color secondaryColor = Color(0xFF03DAC5);
  static const Color backgroundColor = Color(0xFFF5F5F5);
  
  static const TextStyle headingStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: primaryColor,
  );

  static const TextStyle bodyTextStyle = TextStyle(
    fontSize: 16,
    color: Colors.black,
  );

  static const double defaultPadding = 16.0;

