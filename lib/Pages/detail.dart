import 'package:flutter/material.dart';

import '../Models/car.dart';

class DetailPage extends StatelessWidget {
  final Car car;

  const DetailPage({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(car.name)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            spacing: 12,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(car.imageUrl),
              Text(car.name),
              Text("Brand: ${car.brand}"),
              Text("Tahun keluaran: ${car.year}"),
              Text("Harga: Rp ${car.price}"),
              Text("Deskripsi:"),
              Text(car.description),
            ],
          ),
        ),
      ),
    );
  }
}
