// ignore_for_file: prefer_const_constructors

import 'package:ecommerce/shared/custom_textfield.dart';
import 'package:flutter/material.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(33.0),
          child: Column(
            children: [
              const SizedBox(
                height: 64,
              ),
              mytextfield(
                TextInputTypevar: TextInputType.emailAddress,
                ispassword: false,
                hinttext: "Enter Your Email : ",
              ),
              const SizedBox(
                height: 33,
              ),
              mytextfield(
                TextInputTypevar: TextInputType.text,
                ispassword: true,
                hinttext: "Enter Your Password : ",
              )
            ],
          ),
        ),
      ),
    );
  }
}
