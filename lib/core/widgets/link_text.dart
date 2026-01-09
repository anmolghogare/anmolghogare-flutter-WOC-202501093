import 'package:flutter/material.dart';
import '../theme/colors.dart';

class LinkText extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const LinkText({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: const TextStyle(
          color: AppColors.secondaryText,
          fontSize: 14,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
