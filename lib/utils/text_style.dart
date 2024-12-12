import 'package:flutter/material.dart';

class TextHelper {
  TextHelper._();
  static TextStyle size25(BuildContext context) => Theme.of(context).textTheme.displayLarge!;
  static TextStyle size24(BuildContext context) => Theme.of(context).textTheme.displayMedium!;
  static TextStyle size23(BuildContext context) => Theme.of(context).textTheme.displaySmall!;
  static TextStyle size22(BuildContext context) => Theme.of(context).textTheme.headlineLarge!;
  static TextStyle size21(BuildContext context) => Theme.of(context).textTheme.headlineMedium!;
  static TextStyle size18(BuildContext context) => Theme.of(context).textTheme.headlineSmall!;
  static TextStyle size16(BuildContext context) => Theme.of(context).textTheme.titleLarge!;
  static TextStyle size15(BuildContext context) => Theme.of(context).textTheme.titleMedium!;
  static TextStyle size14(BuildContext context) => Theme.of(context).textTheme.titleSmall!;
  static TextStyle size12(BuildContext context) => Theme.of(context).textTheme.bodyLarge!;
  static TextStyle size11(BuildContext context) => Theme.of(context).textTheme.bodyMedium!;
  static TextStyle size9(BuildContext context) => Theme.of(context).textTheme.bodySmall!;
  static TextStyle size7(BuildContext context) => Theme.of(context).textTheme.labelLarge!;
  static TextStyle size6(BuildContext context) => Theme.of(context).textTheme.labelMedium!;
  static TextStyle size5(BuildContext context) => Theme.of(context).textTheme.labelSmall!;
}
