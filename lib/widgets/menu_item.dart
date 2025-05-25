import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  const MenuItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade200, width: 1),
        ),
        // Highlight selected item
        color: isSelected ? Colors.blue.shade50 : Colors.transparent,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          hoverColor: Colors.grey.shade200,
          splashColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade200,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 12.0,
            ),
            child: Row(
              children: [
                Icon(
                  icon,
                  color: isSelected
                      ? Colors.blue.shade600
                      : Colors.grey.shade600,
                  size: 24,
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: isSelected
                          ? FontWeight.w600
                          : FontWeight.w500,
                      color: isSelected ? Colors.blue.shade800 : Colors.black,
                    ),
                  ),
                ),
                Icon(
                  Icons.chevron_right,
                  color: isSelected
                      ? Colors.blue.shade600
                      : Colors.grey.shade800,
                  size: 24,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
