import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlinemedicalservicedoctor/screens/paymentPending_screen.dart';
import 'package:onlinemedicalservicedoctor/size_config.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:qr_flutter/qr_flutter.dart';

import 'paymentSuccess_screen.dart';


class ScanScreen extends StatefulWidget {
  @override
  static String id = 'Scan_screen';
  _ScanScreenState createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen > with SingleTickerProviderStateMixin{
  @override



  @override
  initState() {

    Future.delayed(const Duration(seconds: 2), (){
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PaymentPendingScreen(),
          ));
    });




    super.initState();

  }




  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text('Scan to proceed', style:TextStyle(color: Colors.black87,fontSize: SizeConfig.blockSizeVertical*3),),
          SizedBox(height:SizeConfig.blockSizeVertical*5 ),

          Center(
            child: QrImage(
              data: 'This is a simple QR code',
              version: QrVersions.auto,
              size: 200,
              gapless: false,
            ),
          )

        ],


      ),
    );
  }
}
