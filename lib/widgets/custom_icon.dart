import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icon, required this.function});
  final IconData icon;
  final VoidCallback function;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color.fromARGB(58, 41, 40, 40),
        borderRadius: BorderRadius.circular(12),
      ),
      child: IconButton(
        onPressed: function,
        icon: Icon(icon, color: Colors.white, size: 30),
      ),
    );
  }
}
