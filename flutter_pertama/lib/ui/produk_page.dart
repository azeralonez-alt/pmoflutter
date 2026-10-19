import 'package:flutter/material.dart';
import 'package:flutter_pertama/ui/produk_detail.dart';
import 'package:flutter_pertama/ui/produk_form1.dart';

class Produk_Page extends StatefulWidget {
  const Produk_Page({Key? key}) : super(key: key);

  @override
  _ProdukPageState createState() => _ProdukPageState();
}

class _ProdukPageState extends State<Produk_Page> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Produk'),
        actions: [
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: () async {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProductForm1()),
              );
            },
          ),
        ],
      ),
      body: ListView(
        children: const [
          ItemProduk(kodeProduk: "001", namaProduk: "Kulkas", harga: 2500000),
          ItemProduk(kodeProduk: "002", namaProduk: "TV", harga: 5000000),
          ItemProduk(
            kodeProduk: "003",
            namaProduk: "Mesin Cuci",
            harga: 1500000,
          ),
        ],
      ),
    );
  }
}

class ItemProduk extends StatelessWidget {
  final String? kodeProduk;
  final String? namaProduk;
  final int? harga;

  const ItemProduk({Key? key, this.kodeProduk, this.namaProduk, this.harga})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      child: Card(
        child: ListTile(
          title: Text(namaProduk.toString()),
          subtitle: Text(harga.toString()),
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Produk_Detail(
              kodeProduk: kodeProduk,
              namaProduk: namaProduk,
              harga: harga,
            ),
          ),
        );
      },
    );
  }
}
