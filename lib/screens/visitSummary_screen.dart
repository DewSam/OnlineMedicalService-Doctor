import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlinemedicalservicedoctor/screens/calling_screen.dart';
import 'package:onlinemedicalservicedoctor/screens/profileSetting_screen.dart';
import 'package:onlinemedicalservicedoctor/screens/scan_screen.dart';
import 'package:onlinemedicalservicedoctor/size_config.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';


class VisitSummaryScreen extends StatefulWidget {
  @override
  static String id = 'uploads_screen';
  _VisitSummaryScreenState createState() => _VisitSummaryScreenState();
}

class _VisitSummaryScreenState extends State<VisitSummaryScreen > with SingleTickerProviderStateMixin{
  @override



  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProfileSettingScreen(),
            ));

      },
      child: Scaffold(
        //drawer: _buildDrawer(context),
        //appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            SizedBox(height:SizeConfig.blockSizeVertical*10),
            Center(child: Text("Visit Summary" ,textAlign: TextAlign.center,
              style: TextStyle( color: Colors.black, fontSize: SizeConfig.blockSizeVertical*4),)),

            SizedBox(height:SizeConfig.blockSizeVertical*5),




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



                          SizedBox(height:SizeConfig.blockSizeVertical*5),

                          Row(
                            children: [
                              Text('19 June 2019', style:  TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: SizeConfig.blockSizeVertical*2.2)),
                              Spacer(),
                              Text('04:00 pm',style:  TextStyle(fontWeight: FontWeight.bold, fontSize: SizeConfig.blockSizeVertical*2.2),),
                            ],
                          ),
                          SizedBox(height:SizeConfig.blockSizeVertical*3),
                          Row(
                            children: [
                              Text('Voice Call', style:
                              TextStyle( fontSize: SizeConfig.blockSizeVertical*2.2),),

                              Spacer(),
                              Text('15 minutes', style:
                              TextStyle( fontSize: SizeConfig.blockSizeVertical*2.2),),
                            ],
                          ),


                          SizedBox(height:SizeConfig.blockSizeVertical*3 ),

                          TestResultWidget('Patient Name'),

                          SizedBox(height:SizeConfig.blockSizeVertical*5 ),



                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text('Required Tests', textAlign: TextAlign.start, style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: SizeConfig.blockSizeVertical*2.5
                            ),),
                          ),

                          SizedBox(height:SizeConfig.blockSizeVertical*10 ),


                       Text('You have not requested any test'),


                          SizedBox(height:SizeConfig.blockSizeVertical*10 ),


                          Container(
                        width: SizeConfig.blockSizeHorizontal*75,
                        height:SizeConfig.blockSizeVertical*6,
                        child: Center(child: Text('Send message', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),

                        decoration: BoxDecoration(
                            color: Color(0xff64A820),
                            borderRadius: BorderRadius.all(  Radius.circular(10) )
//                // (Radius.circular(20.0)),
                        ),
                      )




//
//                          Column(
//                            children: [
//
//                              Container(
//                                width: SizeConfig.blockSizeHorizontal*80,
//                                height:SizeConfig.blockSizeVertical*10,
//                                decoration: BoxDecoration(
//                                    color: Colors.white,
//
//                                    borderRadius: BorderRadius.all(Radius.circular(5) )
////                // (Radius.circular(20.0)),
//                                ),
//
//                              child: Center(child: Text('Blood Pressure', style:
//                              TextStyle( fontSize: SizeConfig.blockSizeVertical*2.5)))
//
//                              ),
//                              SizedBox (height: SizeConfig.blockSizeVertical*3),
//                              Container(
//                                  width: SizeConfig.blockSizeHorizontal*80,
//                                  height:SizeConfig.blockSizeVertical*10,
//                                  decoration: BoxDecoration(
//                                      color: Colors.white,
//
//                                      borderRadius: BorderRadius.all(Radius.circular(5) )
////                // (Radius.circular(20.0)),
//                                  ),
//
//                                  child: Center(child: Text('XR Chest', style:
//                                  TextStyle( fontSize: SizeConfig.blockSizeVertical*2.5)))
//
//                              ),
//
//
//                            ],
//
//
//                          )

                          ,SizedBox(height:SizeConfig.blockSizeVertical*5 ),



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


Widget TestResultWidget(String testName ) {

  return Container(
    child:Column(
      children: [

        Container(
            width: SizeConfig.blockSizeHorizontal*80,
            height:SizeConfig.blockSizeVertical*6,
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
                    CircleAvatar(
                      radius: SizeConfig.blockSizeHorizontal*4,
                      backgroundImage: AssetImage('images/avatar-male-man-portrait.png'),
                    ),
                  ],
                ),
                SizedBox(width: SizeConfig.blockSizeHorizontal*8),

                Text(testName, style: TextStyle(fontSize: SizeConfig.blockSizeVertical*2.2),)



              ],
            )

        ),

        Container(
          width: SizeConfig.blockSizeHorizontal*75,
          height:SizeConfig.blockSizeVertical*3,
          child: Center(child: Text('View Details', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),

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
