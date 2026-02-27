import 'package:flutter/material.dart';
import 'package:lyra/core/configs/theme/app_colors.dart';

class BasicButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String title;
  final double? width;
  final double? height;

  const BasicButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity, 
      height: height ?? 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            LyraColors.accentCyan,
            LyraColors.primary,
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: LyraColors.accentCyan.withOpacity(0.3),
            blurRadius: 15,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}