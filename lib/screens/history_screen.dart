import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlinemedicalservicedoctor/screens/calling_screen.dart';
import 'package:onlinemedicalservicedoctor/screens/scan_screen.dart';
import 'package:onlinemedicalservicedoctor/screens/visitSummary_screen.dart';
import 'package:onlinemedicalservicedoctor/size_config.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';


class HistoryScreen extends StatefulWidget {
  @override
  static String id = 'uploads_screen';
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen > with SingleTickerProviderStateMixin{
  @override



  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => VisitSummaryScreen(),
            ));

      },
      child: Scaffold(
        //drawer: _buildDrawer(context),
        //appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            SizedBox(height:SizeConfig.blockSizeVertical*10),
            Center(child: Text("History" ,textAlign: TextAlign.center, style: TextStyle( color: Colors.black, fontSize: SizeConfig.blockSizeVertical*4),)),

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



                          //SizedBox(height:SizeConfig.blockSizeVertical*5),

                          TestResultWidget('Patient Name'),

                          SizedBox(height:SizeConfig.blockSizeVertical*3 ),

                          TestResultWidget('Patient Name'),

                          SizedBox(height:SizeConfig.blockSizeVertical*3),

                          TestResultWidget('Patient Name'),



                          SizedBox(height:SizeConfig.blockSizeVertical*10),





                          Column(
                            children: [



                            //  SizedBox(height:SizeConfig.blockSizeVertical*10 ),

                              FloatingActionButton(
                                backgroundColor: Color(0xff333333),
                                child: FaIcon (Icons.arrow_forward),
                                onPressed: () {

                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => CallingScreen(),
                                      ));
                                },

                              ),

                              SizedBox(height:SizeConfig.blockSizeVertical*5 ),

                              Center(
                                child: Text('Give consultation now', textAlign: TextAlign.center, style: TextStyle( fontWeight: FontWeight.bold, color: Colors.black87, fontSize: SizeConfig.blockSizeVertical*3),),

                              )

                            ],


                          )

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
          child: Center(child: Text('View Visit Summary', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),

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
