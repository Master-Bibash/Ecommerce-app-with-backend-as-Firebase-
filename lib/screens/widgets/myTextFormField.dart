// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class myTextFormField extends StatelessWidget {
  const myTextFormField({
    Key? key,
    required this.validator,
    required this.onChanged,
    required this.name,
    this.errorBorder,
    this.focusedErrorBorder,
    required this.controller,
  }) : super(key: key);

  final String? Function(String?)? validator;
  final String? Function(String?)? onChanged;
  final String name;
  final InputBorder? errorBorder;
  final InputBorder? focusedErrorBorder;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      keyboardType: TextInputType.emailAddress,
      validator: validator,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: name,
        hintStyle: TextStyle(color: Colors.black),
        errorBorder: errorBorder, // Use error-specific border
        focusedErrorBorder: focusedErrorBorder, // Use focused error-specific border
      ),
    );
  }
}
