import 'package:flutter/material.dart';
import '../page/dashboard.dart';
import '../page/profile.dart';
import '../page/profile_edit.dart'; 
import '../page/setting.dart';
import '../page/upload.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
  const PowerScreen({super.key});

  @override
  _PowerScreenState createState() => _PowerScreenState();
}

class _PowerScreenState extends State<PowerScreen> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    DashboardScreen(),
    UploadScreen(),
    SettingScreen(),
    ProfileScreen(),
    ProfileEditScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      //   title: Row(
      //     children: [
      //       Image.asset(
      //         'lib/assets/logo_IOTIK.png',
      //         height: 130,
      //         width: 130,
      //       ),
      //     ],
      //   ),
      // ),
      backgroundColor: const Color.fromARGB(255, 232, 232, 232),
      body: _screens[_currentIndex],
      bottomNavigationBar: SizedBox(
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
              icon: Icon(Icons.settings),
              label: 'Setting',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.perm_identity_outlined),
              label: 'Profile',
            ),
          ],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}