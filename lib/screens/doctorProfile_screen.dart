import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlinemedicalservicedoctor/screens/history_screen.dart';
import 'package:onlinemedicalservicedoctor/screens/patientProfile_screen.dart';
import 'package:onlinemedicalservicedoctor/size_config.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import 'findingAdoctor_screen.dart';


class DoctorProfileScreen extends StatefulWidget {
  @override
  static String id = 'doctorProfile_screen';
  _DoctorProfileScreenState createState() => _DoctorProfileScreenState();
}

class _DoctorProfileScreenState extends State<DoctorProfileScreen > {
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
    return GestureDetector(
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HistoryScreen(),
            ));

      },
      child: Scaffold(
        //drawer: _buildDrawer(context),
        //appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            Container(
              width: SizeConfig.blockSizeHorizontal*100,
              height: SizeConfig.blockSizeVertical*30 ,
              decoration: BoxDecoration(
                  color: Color(0xffF2F8FC),
                  borderRadius: BorderRadius.only(topRight:Radius.circular(20) , topLeft:  Radius.circular(20))
                // (Radius.circular(20.0)),
              ),
              child: Padding(
                  padding:EdgeInsets.symmetric(vertical:20.0),
                child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.end,
                     children: [

                       CircleAvatar(
                         radius: 50,
                         backgroundImage: AssetImage('images/avatar-male-man-portrait.png'),
                       ),

                       SizedBox(width: SizeConfig.blockSizeHorizontal*5,),

                       Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                         children: [


                           Text('Dr. Ahmed Eltayb', style: TextStyle(fontSize: SizeConfig.blockSizeVertical*3, fontWeight: FontWeight.bold),),

                           SizedBox(height: SizeConfig.blockSizeVertical*1,),
                           Text('Khartoum, Sudan')











                         ],

                       )


                     ],

                   ),
              )),



            SizedBox(height: SizeConfig.blockSizeVertical*5),


            infoWidget('About', 'Text Text Text', Color(0xffFEF7FA)),


            SizedBox(height: SizeConfig.blockSizeVertical*2),


            infoWidget('Education', 'Text Text Text', Color(0xffFFF6EC)),


            SizedBox(height: SizeConfig.blockSizeVertical*2),


            infoWidget('Speciality', 'Text Text Text Text Text Text Text ', Color(0xffECF4FF))







          ],


        ),
      ),
    );
  }
}


Widget infoWidget(String title, String content, Color color ){

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: SizeConfig.blockSizeVertical*2.5),),

      SizedBox(height: SizeConfig.blockSizeVertical*2,),

  Stack(
    children: [
      Container(

      width: SizeConfig.blockSizeHorizontal*80,
      height: SizeConfig.blockSizeHorizontal*22,
      decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.all(Radius.circular(10) )
      ),

          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(content,style: TextStyle(color: Colors.black87, fontSize: SizeConfig.blockSizeVertical*1.5) ),
          )

      ),

      Positioned(
        right: 10.0,
        top: 10.0,
        child: FaIcon(Icons.edit, color: Color(0xffF7A700),),

      ),
    ],
  )






    ],



  );




}



