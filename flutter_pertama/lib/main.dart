import 'package:flutter/material.dart';
import 'package:flutter_pertama/ui/produk_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Aplikasi Flutter Pertama", home: Produk_Page());
  }
}
