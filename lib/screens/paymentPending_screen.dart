import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlinemedicalservicedoctor/screens/paymentSuccess_screen.dart';
import 'package:onlinemedicalservicedoctor/screens/scan_screen.dart';
import 'package:onlinemedicalservicedoctor/size_config.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';


class PaymentPendingScreen extends StatefulWidget {
  @override
  static String id = 'PaymentPending_screen';
  _PaymentPendingScreenState createState() => _PaymentPendingScreenState();
}

class _PaymentPendingScreenState extends State<PaymentPendingScreen > with SingleTickerProviderStateMixin{
  @override

  initState() {

    Future.delayed(const Duration(seconds: 2), (){
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PaymentSuccessScreen(),
          ));
    });




    super.initState();

  }


  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      //drawer: _buildDrawer(context),
      //appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          SizedBox(height:SizeConfig.blockSizeVertical*20 ),
          Center(child: Text("Payment Pending" ,textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: SizeConfig.blockSizeVertical*4),)),
          SizedBox(height:SizeConfig.blockSizeVertical*5 ),

          Container(
              width: SizeConfig.blockSizeHorizontal*12,
              height:SizeConfig.blockSizeHorizontal*12,
              child: FittedBox(child: CupertinoActivityIndicator())

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
                          backgroundColor: Colors.grey,
                          child: FaIcon (Icons.arrow_forward),
                          onPressed: () {

//                            Navigator.push(
//                                context,
//                                MaterialPageRoute(
//                                  builder: (context) => ScanScreen(),
//                                ));
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
