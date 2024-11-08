import 'package:flutter/material.dart';
import '../page/dashboard.dart';
import '../page/battery.dart';
import '../page/setting.dart';
import '../page/upload.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PowerScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
    );
  }
}

class PowerScreen extends StatefulWidget {
  @override
  _PowerScreenState createState() => _PowerScreenState();
}

class _PowerScreenState extends State<PowerScreen> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    DashboardScreen(),
    UploadScreen(),
    BatteryScreen(),
    SettingScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: Row(
          children: [
            Image.asset(
              'lib/assets/logo_IOTIK.png',
              height: 130,
              width: 130,
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 232, 232, 232),
      body: _screens[_currentIndex],
      bottomNavigationBar: Container(
        height: 70,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.amber,
          unselectedItemColor: Colors.grey,
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.upload),
              label: 'Upload',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.battery_0_bar),
              label: 'Battery',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Setting',
            ),
          ],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
