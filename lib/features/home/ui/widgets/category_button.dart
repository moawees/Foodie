import 'package:flutter/material.dart';
import 'package:foodie/core/utils/color_manager.dart';

class CategoryButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool selected;
  const CategoryButton(
      {required this.icon,
      required this.label,
      this.selected = false,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      decoration: BoxDecoration(
        color: selected ? ColorManager.primaryRed : const Color(0xFFF3F3F3),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Icon(icon, color: selected ? Colors.white : Colors.black54),
          const SizedBox(width: 8),
          Text(
            label,
            style: TextStyle(
              color: selected ? Colors.white : Colors.black54,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
