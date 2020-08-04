import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlinemedicalservicedoctor/screens/calling_screen.dart';
import 'package:onlinemedicalservicedoctor/screens/calling_screen.dart';
import 'package:onlinemedicalservicedoctor/screens/doctorProfile_screen.dart';
import 'package:onlinemedicalservicedoctor/screens/scan_screen.dart';
import 'package:onlinemedicalservicedoctor/size_config.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';


class WaitingRoomScreen extends StatefulWidget {
  @override
  static String id = 'waitingRoom_screen';
  _WaitingRoomScreenState createState() => _WaitingRoomScreenState();
}

class _WaitingRoomScreenState extends State<WaitingRoomScreen > with SingleTickerProviderStateMixin{
  @override



  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onTap: (){

        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CallingScreen(),
            ));

      },
      child: Scaffold(
        //drawer: _buildDrawer(context),
        //appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            SizedBox(height:SizeConfig.blockSizeVertical*7 ),
            Center(child: Text("Waiting Room" ,textAlign: TextAlign.center, style: TextStyle( color: Colors.black, fontSize: SizeConfig.blockSizeVertical*3),)),

            SizedBox(height:SizeConfig.blockSizeVertical*3 ),




            Expanded(
              child: Container(
                  width: SizeConfig.blockSizeHorizontal*100,
                  // height: SizeConfig.blockSizeVertical*35 ,
                  decoration: BoxDecoration(
                      color: Color(0xffF2F8FC),
                      borderRadius: BorderRadius.only(topRight:Radius.circular(40) , topLeft:  Radius.circular(20))
//                // (Radius.circular(20.0)),
                  ),

                  child: Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Column(
                        children: [



                          //SizedBox(height:SizeConfig.blockSizeVertical*5),

                          TestResultWidget('Patient Name', '04:15'),

                          SizedBox(height:SizeConfig.blockSizeVertical*5 ),

                          TestResultWidget('Patient Name', '04:20'),

                          SizedBox(height:SizeConfig.blockSizeVertical*5),

                          TestResultWidget('Patient Name', '04:30'),


                          SizedBox(height:SizeConfig.blockSizeVertical*5 ),



                        ],


                      )


                  )

              ),
            )
          ],


        ),
      ),
    );
  }
}


Widget TestResultWidget(String testName , String time) {

  return Container(
    child:Column(
      children: [

        Container(
            width: SizeConfig.blockSizeHorizontal*80,
            height:SizeConfig.blockSizeVertical*8,
            decoration: BoxDecoration(
                color: Colors.white,

                borderRadius: BorderRadius.all(Radius.circular(5) )
//                // (Radius.circular(20.0)),
            ),

            child: Row(
              children: [
                SizedBox(width: SizeConfig.blockSizeHorizontal*1 ),
                Container(
                  width: SizeConfig.blockSizeHorizontal*1,
                  height:SizeConfig.blockSizeVertical*6,

                  decoration: BoxDecoration(
                      color: Color(0xff64A820),
                      borderRadius: BorderRadius.only( bottomLeft: Radius.circular(5) , bottomRight: Radius.circular(5) , )
//                // (Radius.circular(20.0)),
                  ),),
                SizedBox(width: SizeConfig.blockSizeHorizontal*5 ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(time,style: TextStyle(fontSize: SizeConfig.blockSizeVertical*1.5)),
                    Text('PM', style: TextStyle(fontSize: SizeConfig.blockSizeVertical*1.5)),
                  ],
                ),

                SizedBox(width: SizeConfig.blockSizeHorizontal*5 ),


                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: SizeConfig.blockSizeHorizontal*4,
                      backgroundImage: AssetImage('images/avatar-male-man-portrait.png'),
                    ),
                  ],
                ),
                SizedBox(width: SizeConfig.blockSizeHorizontal*8),

                Text(testName, style: TextStyle(fontSize: SizeConfig.blockSizeVertical*2.2))



              ],
            )

        ),

        Container(
          width: SizeConfig.blockSizeHorizontal*75,
          height:SizeConfig.blockSizeVertical*4,
          child: Center(child: Text('Accept', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),

          decoration: BoxDecoration(
              color: Color(0xff64A820),
              borderRadius: BorderRadius.only( bottomLeft: Radius.circular(5) , bottomRight: Radius.circular(5) , )
//                // (Radius.circular(20.0)),
          ),
        ),



      ],

    ),


  );


}
