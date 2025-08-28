
import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: const Color.fromARGB(58, 41, 40, 40),
          borderRadius: BorderRadius.circular(12),
        ),
      child: Icon(Icons.search, size: 34));
  }
}
