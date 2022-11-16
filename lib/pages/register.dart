// ignore_for_file: prefer_const_constructors

import 'package:ecommerce/pages/login.dart';
import 'package:ecommerce/shared/colors.dart';
import 'package:ecommerce/shared/constant.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(33.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 64,
                  ),
                  TextField(
                    keyboardType: TextInputType.text,
                    obscureText: false,
                    decoration: bav.copyWith(
                      hintText: "Enter Your user name : ",
                    ),
                  ),
                  const SizedBox(
                    height: 33,
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
                  const SizedBox(
                    height: 33,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    // ignore: sort_child_properties_last
                    child: Text(
                      "Register",
                      style: TextStyle(fontSize: 19),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(BtnGreen),
                        padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)))),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text("Do not Have An Account?",
                        style: TextStyle(fontSize: 20)),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const login()));
                        },
                        child: Text('sign in',
                            style: TextStyle(color: Colors.black)))
                  ])
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
