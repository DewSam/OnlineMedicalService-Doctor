import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlinemedicalservicedoctor/screens/waitingRoom_screen.dart';
import 'package:onlinemedicalservicedoctor/size_config.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'findingAdoctor_screen.dart';


class DashboardScreen extends StatefulWidget {
  @override
  static String id = 'dashboard_screen';
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen > {
  @override

  Drawer _buildDrawer(context)
  {
    Orientation orientation = MediaQuery
        .of(context)
        .orientation;
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
//         DrawerHeader(
//           child: Text('Drawer Header'),
//           decoration: BoxDecoration(
//             color: Colors.blue,
//           ),
//         ),
          DrawerHeader(
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              decoration: BoxDecoration(
                color: Colors.black,),
//        image: DecorationImage(
//        fit: BoxFit.fill,
//        image:  AssetImage('images/Smiley@3x.png'))),
              child: Stack(children: <Widget>[
                Positioned(
                    bottom: 12.0,
                    left: 16.0,
                    child: Column(
                      children: [
                      ],
                    )),
              ])),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: ListTile(
              title: Text('Home'),
              leading: Icon (Icons.home),
              onTap: () {
//                Navigator.pushAndRemoveUntil(
//                    context,
//                    MaterialPageRoute(
//                        builder: (context) => HomeScreen()
//                    ),
//                    ModalRoute.withName("home_screen")
//                );
              },
            ),
          ),
        ],
      ),
    );}


  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      //drawer: _buildDrawer(context),
      //appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          Stack(
            children: [Container(
              width: SizeConfig.blockSizeHorizontal*100,
              height: SizeConfig.blockSizeVertical*35 ,
              decoration: BoxDecoration(
                color: Color(0xffF2F8FC),
                borderRadius: BorderRadius.only(topRight:Radius.circular(20) , topLeft:  Radius.circular(20))
                 // (Radius.circular(20.0)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text('APP NAME \nillustrations', style:TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: SizeConfig.blockSizeVertical*4),)),
              ),

            ),
              Positioned(
              left: SizeConfig.blockSizeHorizontal*18,
              top: SizeConfig.blockSizeVertical*12 ,
              child:  Container(
                width: SizeConfig.blockSizeHorizontal*11,
                height:SizeConfig.blockSizeHorizontal*11,
                  child: FittedBox(child: FaIcon (Icons.menu, color: Color(0xff64A820)), fit: BoxFit.fill,)
              ),


            )],
          ),

          SizedBox(height: SizeConfig.blockSizeVertical*5,),

          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Align(alignment: Alignment.centerLeft,child: Text('Hello, Dr. Ahmed!', style:TextStyle(color: Colors.black ,fontSize: SizeConfig.blockSizeVertical*3))),
          ),

          SizedBox(height: SizeConfig.blockSizeVertical*10),

          FloatingActionButton(
            backgroundColor: Color(0xff333333),
            child: FaIcon (Icons.arrow_forward),
            onPressed: () {

              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WaitingRoomScreen(),
                  ));
            },

          ),

          SizedBox(height: SizeConfig.blockSizeVertical*5,),
          Center(
            child: Text('Give consultations now', style:TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: SizeConfig.blockSizeVertical*3)),

          ),

          SizedBox(height: SizeConfig.blockSizeVertical*10,),












        ],


      ),
    );
  }
}
