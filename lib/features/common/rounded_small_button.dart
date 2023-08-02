import 'package:flutter/material.dart';

import '../../theme/pallete.dart';

class RoundedSmallButton extends StatelessWidget {
  final VoidCallback onTap;
  final String label;
  final Color backgroundColor;
  final Color textColor;

  const RoundedSmallButton({
    super.key,
    required this.onTap,
    required this.label,
    this.backgroundColor = Pallete.primaryColor,
    this.textColor = Pallete.backgroundColor,
    required Alignment allignment,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Chip(
        label: Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        backgroundColor: Pallete.primaryColor[20],
        labelPadding: const EdgeInsets.symmetric(
          horizontal: 100,
          vertical: 5,
        ),
      ),
    );
  }
}
