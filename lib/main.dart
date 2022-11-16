// ignore: duplicate_ignore
// ignore_for_file: unused_import, duplicate_ignore

import 'package:ecommerce/pages/Home.dart';
// ignore: unused_import
import 'package:ecommerce/pages/login.dart';
import 'package:ecommerce/pages/register.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
