import 'package:flutter/material.dart';
import 'package:kuis_praktikum_mobile/pages/login.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  final int _selIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Color> c = [Colors.blue, Colors.red, Colors.purple];
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Text("H"),
                ),
              ),
              SizedBox(height: 8),
              Text(
                "Hera",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                "Saya bersumpah mengerjakan kuis ini dengan jujur dan tidak melakukan kecurangan apapun itu",
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      minimumSize: Size(40, 45),
                    ),
                    child: SizedBox(height: 8, width: 8),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      minimumSize: Size(40, 45),
                    ),
                    child: SizedBox(height: 8, width: 8),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      foregroundColor: Colors.white,
                      minimumSize: Size(40, 45),
                    ),
                    child: SizedBox(height: 8, width: 8),
                  ),
                ],
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                    (route) => false,
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  minimumSize: Size(200, 45),
                ),
                child: Text('Logout'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
