import 'package:flutter/material.dart';

class ThemeToggleButton extends StatelessWidget {
  final bool isDarkMode;
  final VoidCallback onToggle;

  const ThemeToggleButton({
    Key? key,
    required this.isDarkMode,
    required this.onToggle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onToggle,
      style: TextButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: Colors.grey,
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      ),
      child: Text(
        isDarkMode ? 'Light' : 'Dark',
      ),
    );
  }
}
