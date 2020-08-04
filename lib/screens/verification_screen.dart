import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlinemedicalservicedoctor/size_config.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onlinemedicalservicedoctor/screens/dashboard_screen.dart';


class VerificationScreen extends StatefulWidget {
  @override
  static String id = 'verification_screen';
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen > {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [


          Container(
            width: SizeConfig.blockSizeHorizontal*30,
            height: SizeConfig.blockSizeHorizontal*30 ,
            decoration: BoxDecoration(
              color: Color(0xff64A820),
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
            child: Center( child: Text('LOGO', style:TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: SizeConfig.blockSizeVertical*3),) ),

          ),

          SizedBox(height: SizeConfig.blockSizeVertical*10,),

          Center(child: Text('Verification Code',
              style:TextStyle(color: Colors.black,fontSize: SizeConfig.blockSizeVertical*3))),
          Row(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SizedBox(width: SizeConfig.blockSizeHorizontal*5),

              SizedBox(
                width: SizeConfig.blockSizeHorizontal*10,
                child: TextField(
                  textAlign: TextAlign.start,

                  decoration: InputDecoration(
                    //  border: InputBorder.none,
                      hintText: ''

                  ),
                ),
              ),
           /*********************************************/
              SizedBox(
                  width:SizeConfig.blockSizeHorizontal*5
              ),
              /*********************************************/
              SizedBox(
                width: SizeConfig.blockSizeHorizontal*10,
                child: TextField(
                  textAlign: TextAlign.start,

                  decoration: InputDecoration(
                      //border: InputBorder.none,
                      hintText: ''

                  ),
                ),
              ),
              /*********************************************/
              SizedBox(
                  width:SizeConfig.blockSizeHorizontal*5
              ),
              /*********************************************/
              SizedBox(
                width: SizeConfig.blockSizeHorizontal*10,
                child: TextField(
                  textAlign: TextAlign.start,

                  decoration: InputDecoration(
                      //border: InputBorder.none,
                      hintText: ''

                  ),
                ),
              ),
              /*********************************************/
              SizedBox(
                  width:SizeConfig.blockSizeHorizontal*5
              ),
              /*********************************************/
              SizedBox(
                width: SizeConfig.blockSizeHorizontal*10,
                child: TextField(
                  textAlign: TextAlign.start,

                  decoration: InputDecoration(
                      //border: InputBorder.none,
                      hintText: ''

                  ),
                ),
              ),
            ],
          ),





          SizedBox(height:SizeConfig.blockSizeVertical*10,),

          Row(
            children: [
              Spacer(),
              Text('Verify', style: TextStyle(fontWeight: FontWeight.bold, fontSize: SizeConfig.blockSizeVertical*4),),
              Spacer(),
              FloatingActionButton(
                backgroundColor: Color(0xff333333),
                child: FaIcon (Icons.arrow_forward),
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DashboardScreen(),
                      ));


                },

              ),
              Spacer(),



            ],
          )
          ,
          SizedBox(height: SizeConfig.blockSizeVertical*10,),
          Padding(
            padding:EdgeInsets.symmetric(horizontal:10.0),
            child:Container(
              height:1.0,
              width:SizeConfig.blockSizeHorizontal*75,
              color:Colors.black,),),

          SizedBox(height: SizeConfig.blockSizeVertical*1,),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Resend Code', style: TextStyle(color: Color(0xffF7A700), fontWeight: FontWeight.bold,fontSize: SizeConfig.blockSizeVertical*2),),
                SizedBox(width: SizeConfig.blockSizeHorizontal*10,),
                Text('Change Number',style: TextStyle(color: Color(0xffF7A700), fontWeight: FontWeight.bold,fontSize: SizeConfig.blockSizeVertical*2),),

              ],
            ),
          ),

        ],


      ),
    );
  }
}
