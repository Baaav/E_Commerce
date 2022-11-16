// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class mytextfield extends StatelessWidget {
  final bool ispassword;
  final String hinttext;
  final TextInputType TextInputTypevar;

  mytextfield({
    super.key,
    required this.TextInputTypevar,
    required this.ispassword,
    required this.hinttext,
  });
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputTypevar,
      obscureText: ispassword,
      decoration: InputDecoration(
        hintText: hinttext,
        enabledBorder: OutlineInputBorder(
          borderSide: Divider.createBorderSide(context),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        //fillColor: Colors.red ,
        filled: true,
        contentPadding: const EdgeInsets.all(8),
      ),
    );
  }
}
