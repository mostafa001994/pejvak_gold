import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../theme/theme_provider.dart';

class ThemeSwitcherButton extends StatelessWidget {
  const ThemeSwitcherButton({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDark = themeProvider.isDarkMode;

    return IconButton(
      onPressed: () {
        themeProvider.toggleTheme();
      },
      icon: Icon(
        isDark ? Icons.wb_sunny : Icons.nightlight_round,
        color: isDark ? Colors.white : const Color(0xFF2d0408),
      ),
      tooltip: 'تغییر تم',
    );
  }
}
