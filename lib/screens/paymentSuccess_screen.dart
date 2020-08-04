import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlinemedicalservicedoctor/screens/calling_screen.dart';
import 'package:onlinemedicalservicedoctor/screens/scan_screen.dart';
import 'package:onlinemedicalservicedoctor/size_config.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';


class PaymentSuccessScreen extends StatefulWidget {
  @override
  static String id = 'PaymentSuccess_screen';
  _PaymentSuccessScreenState createState() => _PaymentSuccessScreenState();
}

class _PaymentSuccessScreenState extends State<PaymentSuccessScreen > with SingleTickerProviderStateMixin{
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
          Center(child: Text("Payment Successful" ,textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: SizeConfig.blockSizeVertical*4),)),
          SizedBox(height:SizeConfig.blockSizeVertical*5 ),

      Container(

        width: SizeConfig.blockSizeHorizontal*20,
        height: SizeConfig.blockSizeHorizontal*20 ,
        decoration: BoxDecoration(
            color: Color(0xff64A820),
            borderRadius: BorderRadius.all(Radius.circular(40) )
        ),

           child: FittedBox(fit:BoxFit.fill , child: Center(child: FaIcon(Icons.check, color: Colors.white,))),


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



                        SizedBox(height:SizeConfig.blockSizeVertical*10 ),

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
                          child: Text('Speak to a doctor now', textAlign: TextAlign.center, style: TextStyle( fontWeight: FontWeight.bold, color: Colors.black87, fontSize: SizeConfig.blockSizeVertical*4),),

                        )

                      ],


                    )


                )

            ),
          )
        ],


      ),
    );
  }
}
