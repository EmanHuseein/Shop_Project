import 'package:flutter/material.dart';
import 'package:untitled/views/home_screen.dart';

void main() {
  runApp(const ShopProject());
}
class ShopProject extends StatelessWidget {
  const ShopProject({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

