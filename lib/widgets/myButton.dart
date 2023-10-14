import 'package:flutter/material.dart';

class MyButoon
 extends StatelessWidget {
  MyButoon({
    Key? key,
    required this.onPressed,
    required this.name,
    this.color,
  }) : super(key: key);

  final Function() onPressed; // Fix the function signature here
  final String name;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        
      style: ElevatedButton.styleFrom(backgroundColor: color,
      shape: StadiumBorder()
      ),
      
        onPressed: onPressed, // Call the function using onPressed
        child: Text(name),
      ),
    );
  }
}
