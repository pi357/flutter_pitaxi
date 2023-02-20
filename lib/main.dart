import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_pitaxi/src/features/arrived_waiting/pages/arrived_waiting_page.dart';
import 'package:flutter_pitaxi/src/features/home/home.dart';
import 'package:flutter_pitaxi/src/features/splash/pages/pages.dart';
import 'package:flutter_pitaxi/src/features/the_way/pages/on_the_way_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
  ]).then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: SplashPage(),//HomePage(),
      home: SplashPage(),
    );
  }
}
