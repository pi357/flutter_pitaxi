import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:latlong2/latlong.dart';

class coursedebut extends StatefulWidget {
  const coursedebut({Key? key}) : super(key: key);

  @override
  State<coursedebut> createState() => _coursedebutState();
}

class _coursedebutState extends State<coursedebut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: Icon(
              Icons.menu,
              size: 60,
              color: Colors.black,
            ),
          ),
        ),
        title: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage("assets/images/pi_background.jpg"),
                  fit: BoxFit.fill)),
        ),
        centerTitle: true,
        actions: [
          Icon(
            Icons.person_pin,
            size: 60,
            color: Colors.black,
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Profile"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.maps_ugc),
                    title: Text("Trips"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.report),
                    title: Text("Report"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.money_rounded),
                    title: Text("Earning"),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Checking Out",
                    style: TextStyle(fontSize: 22),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.logout)
                ],
              ),
            )
          ],
        ),
      ),
      body: FlutterMap(
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
          MarkerLayer(
            markers: [
              Marker(
                point: LatLng(5.341789, -4.003140),
                width: 80,
                height: 80,
                builder: (context) => Image.asset('assets/images/marker.png'),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showModal(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void _showModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return CustomModal();
      },
    );
  }
}

class CustomModal extends StatelessWidget {
  CustomModal();

  @override
  Widget build(BuildContext context) {
    double width1 = MediaQuery.of(context).size.width * 1;
    double width2 = MediaQuery.of(context).size.width * 0.4;

    return SingleChildScrollView(
       
        child: Container(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      "Yango",
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 35),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            child: Row(
                          children: [
                            Icon(
                              Icons.lock_clock,
                              size: 45,
                            ),
                            Text(
                              "4min",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        )),
                        Container(
                            child: Row(
                          children: [
                            Icon(
                              Icons.person,
                              size: 45,
                            ),
                            Text(
                              "4",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        )),
                        Container(
                            child: Row(
                          children: [
                            Icon(
                              Icons.flag,
                              size: 45,
                            ),
                            Text(
                              "18:18",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ))
                      ],
                    ),
                  ),
                  Container(
                      // margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          child: Row(
                        children: [
                          // Icon(Icons.lock_clock, size: 45,),
                          Text(
                            "Commencer",
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      )),
                      Container(
                          
                          margin: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 60),
                          child: Text(
                            "4000FCFA",
                            style: TextStyle(
                              color:Colors.red,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          )),

                          
                    ],
                  ))
                  ,
                  SizedBox(height: 30,),
                          Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                Icon(Icons.person_pin,color: Colors.lightBlueAccent,),
                                SizedBox(width: 20,),
                                Text(
                            "Airport Abidjan",
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),)
                               ],
                              ),
                          ),

                   SizedBox(height: 30,),
                          Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                Icon(Icons.person_pin,color: Colors.lightBlueAccent,),
                                SizedBox(width: 10,),
                                Text(
                            "Plateau Abidjan",
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),)
                               ],
                              ),
                          ),
                      
                      SizedBox(height: 30,),
                      Center(
  
                        child: Container(
                          height: 70,
                          child: Image.asset('assets/images/drap2.png'),
                        ) ,
                      )
                ],
              ),
              width: width1,
            ),
            
          ],
        ))

        );
  }
}
