import 'package:flutter/material.dart';
import 'package:linkaja_clone_midtest/page/history.dart';
import 'package:linkaja_clone_midtest/page/home_page.dart';
import 'package:linkaja_clone_midtest/page/splash_screen.dart';
import 'package:linkaja_clone_midtest/page/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LinkAja',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/home': (context) => HomePage(),
        '/riwayat': (context) => HistoryPage(),
        '/profile': (context) => ProfilePage(),
      },
    );
  }
}
