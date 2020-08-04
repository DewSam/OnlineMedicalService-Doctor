import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlinemedicalservicedoctor/screens/doctorProfile_screen.dart';
import 'package:onlinemedicalservicedoctor/screens/history_screen.dart';
import 'package:onlinemedicalservicedoctor/size_config.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import 'findingAdoctor_screen.dart';


class PatientProfileScreen extends StatefulWidget {
  @override
  static String id = 'doctorProfile_screen';
  _PatientProfileScreenState createState() => _PatientProfileScreenState();
}

class _PatientProfileScreenState extends State<PatientProfileScreen > {

  int flag = 0;
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
              builder: (context) => DoctorProfileScreen(),
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


                          Text('Person Name', style: TextStyle(fontSize: SizeConfig.blockSizeVertical*3, fontWeight: FontWeight.bold),),

                          SizedBox(height: SizeConfig.blockSizeVertical*1,),


                          Center(
                              child: Text('Khartoum, Sudan')
                              ),











                        ],

                      )


                    ],

                  ),
                )),

            SizedBox(height: SizeConfig.blockSizeVertical*5),

            Container(
                width: SizeConfig.blockSizeHorizontal*80,
                height: SizeConfig.blockSizeVertical*10 ,
                decoration: BoxDecoration(
                    color: Color(0xffF2F8FC),
                    borderRadius: BorderRadius.all(Radius.circular(20))
                  // (Radius.circular(20.0)),
                ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){

                      setState(() {
                        flag = 0;
                      });

                    },
                    child: Container(
                      width: SizeConfig.blockSizeHorizontal*35,
                      height: SizeConfig.blockSizeVertical*6 ,
                      decoration: BoxDecoration(
                          color: flag ==0? Color(0xff64A820): Color(0xffF2F8FC),
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        // (Radius.circular(20.0)),
                      ),
                      child: Center(child: Text('Profile',
                        style: TextStyle(color: flag==0? Colors.white: Colors.black87,fontWeight: FontWeight.bold, fontSize: SizeConfig.blockSizeVertical*3),)),
                    ),
                  ),

                  SizedBox(width: SizeConfig.blockSizeHorizontal*2,),

                  GestureDetector(
                    onTap: (){

                      setState(() {
                        flag = 1;
                      });

                    },
                    child: Container(
                      width: SizeConfig.blockSizeHorizontal*35,
                      height: SizeConfig.blockSizeVertical*6 ,
                      decoration: BoxDecoration(
                          color: flag ==1? Color(0xff64A820): Color(0xffF2F8FC),
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        // (Radius.circular(20.0)),
                      ),
                      child: Center(child: Text('Info',style: TextStyle(color: flag==1? Colors.white: Colors.black87,fontWeight: FontWeight.bold, fontSize: SizeConfig.blockSizeVertical*3),)),
                    ),
                  )



                ],

              )





            ),

            flag==0? Column (
              children: [
              SizedBox(height: SizeConfig.blockSizeVertical * 3),

              infoWidget('Gender', 'Male', Color(0xffFDE8F1)),
              SizedBox(height: SizeConfig.blockSizeVertical * 3),

              infoWidget('Age', '22 years', Color(0xffFFE4C9)),
              SizedBox(height: SizeConfig.blockSizeVertical * 3),

              infoWidget('Education', 'University', Color(0xffCADFFF)),
              SizedBox(height: SizeConfig.blockSizeVertical * 3),

              infoWidget('Occupation', 'Engineer', Color(0xffD8D5EF)),]

      ) : Column(
              children: [
              SizedBox(height: SizeConfig.blockSizeVertical * 2),

              infoWidget('Social Status', 'Single', Color(0xffFDE8F1)),
              SizedBox(height: SizeConfig.blockSizeVertical * 2),

              infoWidget('Smoking', 'No', Color(0xffFFE4C9)),
              SizedBox(height: SizeConfig.blockSizeVertical * 2),

              infoWidget('Weight', '50 Kg', Color(0xffCADFFF)),
              SizedBox(height: SizeConfig.blockSizeVertical * 2),

              infoWidget('Height','150 cm', Color(0xffD8D5EF)),

                SizedBox(height: SizeConfig.blockSizeVertical * 2),

                infoWidget('Blood Type','A+', Color(0xffBDD9E6)),
                SizedBox(height: SizeConfig.blockSizeVertical * 2),


                infoWidget('Alcohol','No', Color(0xffC9E1B1)),







              ])




          ],


        ),
      ),
    );
  }
}


Widget infoWidget(String first, String second, Color color ){

  return Row(
      mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(width: SizeConfig.blockSizeHorizontal*10,),

      Text(first, style: TextStyle( fontSize: SizeConfig.blockSizeVertical*2.5),),

      //SizedBox(width: SizeConfig.blockSizeHorizontal*10,),
      Spacer(),

      Container(

          width: SizeConfig.blockSizeHorizontal*40,
          height: SizeConfig.blockSizeHorizontal*10,
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.all(Radius.circular(10) )
          ),

          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Text(second,style: TextStyle(color: Colors.black87, fontSize: SizeConfig.blockSizeVertical*2.2) )),
          )

      )

      ,SizedBox(width: SizeConfig.blockSizeHorizontal*10,),





    ],



  );




}


