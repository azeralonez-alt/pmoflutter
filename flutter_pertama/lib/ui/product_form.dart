import 'package:flutter/material.dart';

class ProductForm extends StatefulWidget {
  const ProductForm({Key? key}) : super(key: key);

  @override
  _ProductFormState createState() => _ProductFormState();
}

class _ProductFormState extends State<ProductForm> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Form Produk')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(labelText: "Kode Produk"),
            ),
            TextField(
              decoration: const InputDecoration(labelText: "Nama Produk"),
            ),
            TextField(decoration: const InputDecoration(labelText: "Harga")),
            ElevatedButton(onPressed: () {}, child: const Text('Simpan')),
          ],
        ),
      ),
    );
  }
}
