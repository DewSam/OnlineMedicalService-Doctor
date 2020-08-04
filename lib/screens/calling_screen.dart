import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlinemedicalservicedoctor/screens/doctorProfile_screen.dart';
import 'package:onlinemedicalservicedoctor/screens/history_screen.dart';
import 'package:onlinemedicalservicedoctor/screens/patientProfile_screen.dart';
import 'package:onlinemedicalservicedoctor/screens/profileSetting_screen.dart';
import 'package:onlinemedicalservicedoctor/screens/scan_screen.dart';
import 'package:onlinemedicalservicedoctor/size_config.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:/medical_online_service/lib/screens/visitSummary_screen.dart';

import 'uploads_screen.dart';


class CallingScreen extends StatefulWidget {
  @override
  static String id = 'findingADoctor_screen';
  _CallingScreenState createState() => _CallingScreenState();
}

class _CallingScreenState extends State<CallingScreen > with SingleTickerProviderStateMixin{
  @override



  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      //drawer: _buildDrawer(context),
      //appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          SizedBox(height:SizeConfig.blockSizeVertical*20 ),
          Center(child: Text("Patient Name" ,textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: SizeConfig.blockSizeVertical*4),)),
          SizedBox(height:SizeConfig.blockSizeVertical*5 ),

          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage('images/avatar-male-man-portrait.png'),
          ),


          SizedBox(height:SizeConfig.blockSizeVertical*10),


         // SizedBox(height:SizeConfig.blockSizeVertical*5 ),
          
          Row(
            children: [
              Spacer(),
              GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UploadsScreen(),
                        ));

                  },
                  child: button_widget(FaIcon(Icons.wifi, color: Colors.white,), Color(0xff677C74),'Speaker'))

              ,Spacer(),
              button_widget(FaIcon(Icons.arrow_upward,  color: Colors.white), Color(0xff212121), 'Upload File'),
              Spacer(),

              button_widget(FaIcon(Icons.volume_mute,  color: Colors.white), Color(0xff677C74), 'Mute'),

              Spacer()



            ],
            
          ),

          SizedBox (height: SizeConfig.blockSizeVertical*5),

          button_widget(FaIcon(Icons.call_end,  color: Colors.white), Color(0xffFF0000), ''),



        ],


      ),
    );
  }
}


Widget button_widget(FaIcon icon , Color color, String buttonText) {
  
  return  Column(
    children: [
      Container(

        width: SizeConfig.blockSizeHorizontal*18,
        height: SizeConfig.blockSizeHorizontal*18 ,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(40) )
        ),

        child:    Center(child: icon ),


        //FittedBox(fit:BoxFit.fitWidth, child: Center(child: icon )),


      ),

      SizedBox(height: SizeConfig.blockSizeVertical*3,),
      Text(buttonText)
    ],
  );
  
  
  
}
