import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlinemedicalservicedoctor/screens/patientProfile_screen.dart';
import 'package:onlinemedicalservicedoctor/screens/calling_screen.dart';
import 'package:onlinemedicalservicedoctor/screens/doctorProfile_screen.dart';
import 'package:onlinemedicalservicedoctor/screens/scan_screen.dart';
import 'package:onlinemedicalservicedoctor/size_config.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';


class UploadsScreen extends StatefulWidget {
  @override
  static String id = 'uploads_screen';
  _UploadsScreenState createState() => _UploadsScreenState();
}

class _UploadsScreenState extends State<UploadsScreen > with SingleTickerProviderStateMixin{
  @override



  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PatientProfileScreen(),
            ));

      },
      child: Scaffold(
        //drawer: _buildDrawer(context),
        //appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            SizedBox(height:SizeConfig.blockSizeVertical*7 ),
            Center(child: Text("Uploads" ,textAlign: TextAlign.center, style: TextStyle( color: Colors.black, fontSize: SizeConfig.blockSizeVertical*4),)),

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

                          TestResultWidget('Blood Test'),

                          SizedBox(height:SizeConfig.blockSizeVertical*3 ),

                          TestResultWidget('XR Chest'),

                          SizedBox(height:SizeConfig.blockSizeVertical*10),



                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text('Request test', textAlign: TextAlign.start, style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: SizeConfig.blockSizeVertical*2.5
                            ),),
                          ),

                          SizedBox(height:SizeConfig.blockSizeVertical*3),


                      Stack(
                        children: [ Container(
                          width: SizeConfig.blockSizeHorizontal*85,
                            height: SizeConfig.blockSizeVertical*30 ,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: TextField(
                              keyboardType: TextInputType.multiline,
                              maxLines: null,
                              decoration: InputDecoration(
                                  hintText: 'Enter test name',
                                border: InputBorder.none
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 15.0,
                          top: 15.0,
                          child: FaIcon(Icons.edit, color: Color(0xffF7A700),),

                        ),

                          Positioned(
                            bottom: 15.0,
                            child:  Padding(
                              padding:EdgeInsets.symmetric(horizontal:10.0),
                              child:Container(
                                height:3.0,
                                width:SizeConfig.blockSizeHorizontal*75,
                                color:Color(0xff64A820)),)
                          ),



                        ]
                      ),

                          SizedBox(height:SizeConfig.blockSizeVertical*5),








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
              Text('June',style: TextStyle(fontSize: SizeConfig.blockSizeVertical*1.5)),
              Text('01', style: TextStyle(fontWeight: FontWeight.bold, fontSize: SizeConfig.blockSizeVertical*1.5),),
              Text('2020', style: TextStyle(fontSize: SizeConfig.blockSizeVertical*1.5)),
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
           child: Center(child: Text('View Result', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),

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
