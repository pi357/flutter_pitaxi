import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:latlong2/latlong.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            FlutterMap(
              options: MapOptions(
                center: LatLng(5.341789, -4.003140),
                zoom: 18,
              ),
              nonRotatedChildren: [],
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  userAgentPackageName: 'com.example.app',
                ),
              ],
            ),
            Positioned(
              top: 8,
              left: 16,
              child: Icon(
                Icons.menu,
                size: 60,
              ),
            ),
            Positioned(
              top: 8,
              right: 16,
              child: Icon(
                Icons.person_pin,
                size: 60,
              ),
            ),
            /*Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding:  EdgeInsets.only(top: 8.0),
                child: CircleAvatar(
                  backgroundImage:AssetImage("assets/images/pi_background.jpg"),
                  radius: 30,
                ),
              ),
            )*/
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("assets/images/pi_background.jpg"),
                    fit: BoxFit.fill
                  )
                ),
                margin:  EdgeInsets.only(top: 8.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
