// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class changeScreen extends StatelessWidget {
  const changeScreen({
    Key? key,
    required this.onTap,
    required this.name,
    required this.WhichPage,
  }) : super(key: key);

  final Function onTap;
  final String name;
  final String WhichPage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(name),
        TextButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => onTap(),
              ));
            },
            child: Text(
              WhichPage,
              style:
                  TextStyle(color: Colors.cyan, fontWeight: FontWeight.normal),
            ))
      ],
    );
  }
}
