import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlinemedicalservicedoctor/screens/scan_screen.dart';
import 'package:onlinemedicalservicedoctor/size_config.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';


class DoctorScreen extends StatefulWidget {
  @override
  static String id = 'findingADoctor_screen';
  _DoctorScreenState createState() => _DoctorScreenState();
}

class _DoctorScreenState extends State<DoctorScreen > with SingleTickerProviderStateMixin{
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
          Center(child: Text("Dr. Ahmed Eltayb" ,textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: SizeConfig.blockSizeVertical*4),)),
          SizedBox(height:SizeConfig.blockSizeVertical*5 ),

          Center(child: Text("is available to speak to you",  textAlign: TextAlign.center, style: TextStyle(color: Colors.black87, fontSize: SizeConfig.blockSizeVertical*3),)),
          SizedBox(height:SizeConfig.blockSizeVertical*5 ),

          Container(

            width: SizeConfig.blockSizeHorizontal*70,
            height: SizeConfig.blockSizeVertical*7 ,
            decoration: BoxDecoration(
                color: Color(0xff64A820),
                borderRadius: BorderRadius.all(Radius.circular(20) )
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.center,
                  child: Text('View Details', style:TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: SizeConfig.blockSizeVertical*3),)),
            ),

          ),

          SizedBox(height:SizeConfig.blockSizeVertical*5 ),

         Expanded(
           child: Container(
              width: SizeConfig.blockSizeHorizontal*100,
             // height: SizeConfig.blockSizeVertical*35 ,
              decoration: BoxDecoration(
                  color: Color(0xffF2F8FC),
                  borderRadius: BorderRadius.only(topRight:Radius.circular(20) , topLeft:  Radius.circular(20))
//                // (Radius.circular(20.0)),
     ),

            child: Padding(
               padding: const EdgeInsets.all(40.0),
                child: Column(
                  children: [

                Container(

                width: SizeConfig.blockSizeHorizontal*70,
                  height: SizeConfig.blockSizeVertical*15 ,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20) )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text('Doctor fees', style:TextStyle(color: Colors.black87,fontSize: SizeConfig.blockSizeVertical*3),),
                      SizedBox(height:SizeConfig.blockSizeVertical*3 ),
                      Text('300 SDG', style:TextStyle(color:Color(0xff64A820), fontWeight: FontWeight.bold,fontSize: SizeConfig.blockSizeVertical*3),),



                  ],

                  ),),



                    SizedBox(height:SizeConfig.blockSizeVertical*5 ),

                    FloatingActionButton(
                      backgroundColor: Color(0xff333333),
                      child: FaIcon (Icons.arrow_forward),
                      onPressed: () {

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ScanScreen(),
                            ));
                      },

                    ),

                    SizedBox(height:SizeConfig.blockSizeVertical*5 ),

                    Center(
                      child: Text('Pay to proceed', textAlign: TextAlign.center, style: TextStyle( fontWeight: FontWeight.bold, color: Colors.black87, fontSize: SizeConfig.blockSizeVertical*4),),

                    )

                  ],


                )


         )

           ),
         )


//          Stack(
//            children: [Container(
//              width: SizeConfig.blockSizeHorizontal*100,
//              height: SizeConfig.blockSizeVertical*35 ,
//              decoration: BoxDecoration(
//                  color: Color(0xffF2F8FC),
//                  borderRadius: BorderRadius.only(topRight:Radius.circular(20) , topLeft:  Radius.circular(20))
//                // (Radius.circular(20.0)),
//              ),
//              child: Padding(
//                padding: const EdgeInsets.all(8.0),
//                child: Align(
//                    alignment: Alignment.bottomCenter,
//                    child: Text('APP NAME \nillustrations', style:TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: SizeConfig.blockSizeVertical*4),)),
//              ),
//
//            ),
//              Positioned(
//                left: SizeConfig.blockSizeHorizontal*18,
//                top: SizeConfig.blockSizeVertical*12 ,
//                child:  Container(
//                    width: SizeConfig.blockSizeHorizontal*11,
//                    height:SizeConfig.blockSizeHorizontal*11,
//                    child: FittedBox(child: FaIcon (Icons.menu, color: Color(0xff64A820)), fit: BoxFit.fill,)
//                ),
//
//
//              )],
//          ),

         // SizedBox(height: SizeConfig.blockSizeVertical*20,),

//          Container(
//              width: SizeConfig.blockSizeHorizontal*12,
//              height:SizeConfig.blockSizeHorizontal*12,
//              child: FittedBox(child: CupertinoActivityIndicator())
//
//          ),


//          SizedBox(height: SizeConfig.blockSizeVertical*5,),
//
//
//          Center(
//            child: Text('Finding you a doctor', textAlign: TextAlign.center, style: TextStyle(color: Colors.black87, fontSize: SizeConfig.blockSizeVertical*4),),
//
//          )





        ],


      ),
    );
  }
}
