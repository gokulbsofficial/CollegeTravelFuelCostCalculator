import 'package:flutter/material.dart';

class BoxIconWidget extends StatelessWidget {
  final String icon;
  final String label;

  const BoxIconWidget({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade500,
            offset: const Offset(4, 4),
            blurRadius: 15,
            spreadRadius: 1,
          ),
          const BoxShadow(
            color: Colors.white,
            offset: Offset(-4, -4),
            blurRadius: 15,
            spreadRadius: 1,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Column(
          children: [
            Image.asset(
              icon,
              width: 30,
              height: 30,
              semanticLabel: label,
            ),
            Text(
              label,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.normal,
              ),
            )
          ],
        ),
      ),
    );
  }
}
