import 'package:flutter/material.dart';
import 'package:tk_full_proje/tk.dart';
import 'ad_soyad.dart';
import 'girish_ele_sayfasi.dart';
import 'kod_alma_sayfasi.dart';
import 'login_parol.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        "/TK": (context) => TK(),
        "/SignUpPage": (context) => SignUpPage(),
        "/CodAlma":(context) => CodAlma(),
        "/Name":(context)=>Name(),
      },
    ),
  );
}
