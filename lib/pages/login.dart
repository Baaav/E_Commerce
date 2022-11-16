// ignore_for_file: prefer_const_constructors

import 'package:ecommerce/shared/constant.dart';
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
              TextField(
                keyboardType: TextInputType.emailAddress,
                obscureText: false,
                decoration: bav.copyWith(
                  hintText: "Enter Your Email : ",
                ),
              ),
              const SizedBox(
                height: 33,
              ),
              TextField(
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: bav.copyWith(
                  hintText: "Enter Your Password : ",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
