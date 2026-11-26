import 'package:flutter/material.dart';

class RoundedCheckBox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final String title;

  const RoundedCheckBox({
    super.key,
    required this.value,
    required this.onChanged,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    const activeColor = Color(0xFF4CAF6A);
    const inactiveBorder = Color(0xFFB8BCBA);

    return GestureDetector(
      onTap: () => onChanged(!value),
      child: Row(
        spacing: 12,
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 180),
            width: 26,
            height: 26,
            decoration: BoxDecoration(
              color: value ? activeColor : Colors.transparent,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: value ? activeColor : inactiveBorder,
                width: 1.6,
              ),
            ),
            child: value
                ? const Icon(Icons.check_rounded, size: 17, color: Colors.white)
                : null,
          ),
          Text(
            title,
            style: TextStyle(
              color: value ? Color(0xff53B175) : Color(0xff181725),
              fontSize: 16,
              fontWeight: FontWeight(400),
              height: 1,
            ),
          ),
        ],
      ),
    );
  }
}
