import 'package:flutter/material.dart';

class BoardBtn extends StatelessWidget {
  static const String routeName="board";
  String label;
  Function onClick;
  int index;

  BoardBtn(
      {required this.index,
      required this.label,
      required this.onClick,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ElevatedButton(
      onPressed: () {
        onClick(index);
      },
      child: Text(
        label,
        style: TextStyle(
          color: Colors.white,
          fontSize: 45,
          fontWeight: FontWeight.w100,
        ),
      ),
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green.shade300,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
    ));
  }
}
