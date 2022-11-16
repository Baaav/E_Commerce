// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// ignore: implementation_imports, unnecessary_import
import 'package:flutter/src/widgets/framework.dart';

// ignore: camel_case_types
class mytextfield extends StatelessWidget {
  final bool ispassword;
  final String hinttext;
  // ignore: non_constant_identifier_names
  final TextInputType TextInputTypevar;

  // ignore: prefer_const_constructors_in_immutables
  mytextfield({
    super.key,
    // ignore: non_constant_identifier_names
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
