import 'package:flutter/material.dart';

class ElevatingButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback? onPressed;

  const ElevatingButton({
    Key? key,
    required this.text,
    required this.color,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: 53,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(23),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: 19, color: Colors.white),
        ),
      ),
    );
  }
}
