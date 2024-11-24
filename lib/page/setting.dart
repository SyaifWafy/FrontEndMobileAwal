import 'package:flutter/material.dart';
import '../page/detail_setting.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SettingScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
    );
  }
}

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 232, 232, 232),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              StatusCard(
                icon: Icons.home_outlined,
                label: 'Kandang 1',
                information: 'Informasi',
              ),
              SizedBox(height: 10),
              StatusCard(
                icon: Icons.home_outlined,
                label: 'Kandang 2',
                information: 'Informasi',
              ),
              SizedBox(height: 10),
              StatusCard(
                icon: Icons.home_outlined,
                label: 'Kandang 3',
                information: 'Informasi',
              ),
              SizedBox(height: 10),
              StatusCard(
                icon: Icons.home_outlined,
                label: 'Kandang 4',
                information: 'Informasi',
              ),
              SizedBox(height: 10),
              StatusCard(
                icon: Icons.home_outlined,
                label: 'Kandang 5',
                information: 'Informasi',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StatusCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final String information;

  StatusCard({
    required this.icon,
    required this.label,
    required this.information,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: Color.fromARGB(255, 255, 255, 255),
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(icon, size: 55, color: Colors.black),
                          SizedBox(width: 10),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              label,
                              style: TextStyle(
                                fontSize: 30,
                                color: const Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      height: 45,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 8,
                      right: 30,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailSettingScreen(),
                            ),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 6,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                information,
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 8),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                                size: 18,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}