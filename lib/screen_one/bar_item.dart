import 'package:flutter/material.dart';

class BarItem extends StatelessWidget {
  String lable;
  bool isSelected;
   BarItem({super.key,required this.lable,required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 4),
      decoration: BoxDecoration(
          color: isSelected ?Colors.lightGreenAccent: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(25),
          ),
      child: Text(
       lable,
        style: TextStyle(
            color: isSelected ? Colors.white : Colors.grey,
            fontSize: 15),
      ),
    );
  }
}
