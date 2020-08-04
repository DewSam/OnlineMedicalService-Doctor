import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlinemedicalservicedoctor/size_config.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onlinemedicalservicedoctor/screens/login_screen.dart';


class HomeScreen extends StatefulWidget {
  @override
  static String id = 'home_screen';
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Spacer(),
          Spacer(),

          Container(
            width: SizeConfig.blockSizeHorizontal*30,
            height: SizeConfig.blockSizeHorizontal*30 ,
            decoration: BoxDecoration(
              color: Color(0xff64A820),
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
            child: Center( child: Text('LOGO', style:TextStyle(fontSize: SizeConfig.blockSizeVertical*3 ,color: Colors.white, fontWeight: FontWeight.bold),) ),

          ),
          Spacer(),
          Container(
            width: SizeConfig.blockSizeHorizontal*30,
            height: SizeConfig.blockSizeHorizontal*30 ,
            child: FittedBox(
                fit: BoxFit.contain,
                child: Text('Hi !',textAlign: TextAlign.center ,style:TextStyle(color: Color(0xff64A820), fontWeight: FontWeight.bold,fontFamily:'Montserrat')))
          ),

          Container(
            width: SizeConfig.blockSizeHorizontal*60,
            height: SizeConfig.blockSizeHorizontal*20,
            child: Text('Give medical Consultations online in less than 5 minutes! ',textAlign: TextAlign.center ,
            style: TextStyle(fontSize: SizeConfig.blockSizeVertical*2.2),
            )
          ),
          Spacer(),
          Spacer(),
          Row(
            children: [
              Spacer(),
              Text('Get Started', style: TextStyle(
                  fontSize: SizeConfig.blockSizeVertical*3
                  ,fontWeight: FontWeight.bold),),
              Spacer(),
              FloatingActionButton(
                backgroundColor: Color(0xff333333),
                child: FaIcon (Icons.arrow_forward),
                onPressed: ()
                {

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ));
                },

              ),
              Spacer(),



            ],
          )
         ,     Spacer(),
        ],

      ),
    );
  }
}
