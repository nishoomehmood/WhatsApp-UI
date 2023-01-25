import 'package:flutter/material.dart';
import 'HomePage.dart';

void main() {
  runApp(const WhatsAppUI());
}

class WhatsAppUI extends StatefulWidget {
  const WhatsAppUI({Key? key}) : super(key: key);

  @override
  State<WhatsAppUI> createState() => _WhatsAppUIState();
}

class _WhatsAppUIState extends State<WhatsAppUI> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      title: "WhatsApp",
      home: const HomePage(),
    );
  }
}
