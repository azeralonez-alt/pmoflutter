import 'package:flutter/material.dart';

class Produk_Detail extends StatefulWidget {
  final String? kodeProduk;
  final String? namaProduk;
  final int? harga;

  const Produk_Detail({Key? key, this.namaProduk, this.kodeProduk, this.harga})
    : super(key: key);

  @override
  _ProdukDetailState createState() => _ProdukDetailState();
}

class _ProdukDetailState extends State<Produk_Detail> {
  @override
  Widget build(BuildContext context) {
    // TODO: Implement build
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Produk')),
      body: Column(
        children: [
          Text('Kode Produk: ' + widget.kodeProduk.toString()),
          Text('Nama Produk: ${widget.namaProduk}'),
          Text('Harga: ${widget.harga}'),
        ],
      ),
    );
  }
}
