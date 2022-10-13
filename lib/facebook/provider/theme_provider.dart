import 'package:flutter/material.dart';

class Themeprovider extends ChangeNotifier {
  ThemeMode thememode =ThemeMode.dark;
  bool get isDarkMode=> thememode==ThemeMode.dark;
}

class Mythemes {
  static final darkTheme=ThemeData(
scaffoldBackgroundColor: Colors.grey.shade900,
colorScheme: ColorScheme.dark(),
  );

  static final lightTheme=ThemeData(
scaffoldBackgroundColor: Colors.white,
colorScheme: ColorScheme.light(),
  );
}