import 'package:flutter/material.dart';
import 'package:notes_app/widgets/color_item.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex = 0;
  List<Color> colors = [
    Colors.red,
    Colors.blue,
    Colors.yellow,
    Colors.brown,
    Colors.teal,
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38*3,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child:  GestureDetector(
            onTap: (){
              currentIndex=index;
              setState(() {
                
              });
            },
            child: ColorItem(
              color: colors[index],
              isSelected: currentIndex==index,
            ),
          ),
        );
      }),
    );
  }
}