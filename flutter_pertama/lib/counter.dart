import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int angka = 0;
  @override
  void initState() {
    super.initState();
    angka = 0;
  }

  void tambah() {
    setState(() {
      angka++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Penghitung')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nilai : $angka', style: const TextStyle(fontSize: 32)),
            ElevatedButton(onPressed: tambah, child: const Text('tambah')),
          ],
        ),
      ),
    );
  }
}
