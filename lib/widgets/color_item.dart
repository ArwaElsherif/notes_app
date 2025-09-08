// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isSelected, required this.color});
  final bool isSelected;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ?  CircleAvatar(
          radius: 38,
          backgroundColor: Colors.white,
          child: CircleAvatar(radius: 36, backgroundColor: color),
        )
        :  CircleAvatar(radius: 38, backgroundColor: color);
  }
}
