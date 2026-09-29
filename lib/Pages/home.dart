import 'package:flutter/material.dart';
import 'package:kuis_praktikum_mobile/Pages/detail.dart';

import 'login.dart';
import '../Models/car.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.brown,
        foregroundColor: Colors.white,
        title: Text("Hai, Hera"),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    backgroundColor: const Color(0xFFF5F5F5),
                    title: const Text(
                      "Konfirmasi",
                      style: TextStyle(
                        color: Colors.brown,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    content: Text("Apakah kamu yakin akan logout"),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.brown,
                          foregroundColor: Colors.white,
                        ),
                        child: Text("Batal"),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);

                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
                          );
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.brown,
                          foregroundColor: Colors.white,
                        ),
                        child: Text("Logout"),
                      ),
                    ],
                  );
                },
              );
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: cars.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(car: cars[index]),
                  ),
                );
              },
              title: Text(cars[index].name),
              subtitle: Text("${cars[index].year}"),
              leading: Image.network(
                cars[index].imageUrl,
                width: 50,
                height: 50,
              ),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey),
            );
          },
        ),
      ),
    );
  }
}
