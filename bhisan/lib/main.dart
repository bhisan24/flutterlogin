
import 'package:flutter/material.dart';
import 'package:bhisan/home.dart';
import 'package:bhisan/register.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'home',
    routes: {
      'home': (context) => Myhome(),
      'register': (context) => MyRegister()
      },
  ));
  }