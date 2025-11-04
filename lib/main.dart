import 'package:flutter/material.dart';
import 'vcard_screen.dart';

void main() => runApp(const VCardApp());

class VCardApp extends StatelessWidget {
  const VCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'V-Card Digital',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const VCardScreen(),
    );
  }
}