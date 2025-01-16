import 'package:flutter/material.dart';
import 'package:site/view/pages/initial_page.dart';

void main() {
  runApp(const GiftxApp());
}

class GiftxApp extends StatelessWidget {
  const GiftxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Giftx',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const InitialPage()
    );
  }
}
