import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlinemedicalservicedoctor/size_config.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onlinemedicalservicedoctor/screens/signUp_screen.dart';
import 'package:onlinemedicalservicedoctor/screens/dashboard_screen.dart';


class LoginScreen extends StatefulWidget {
  @override
  static String id = 'login_screen';
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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

          SizedBox(height: SizeConfig.blockSizeVertical*5,),
        Row(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            SizedBox(width: SizeConfig.blockSizeHorizontal*5),

            Container(

                width: SizeConfig.blockSizeHorizontal*10,
                height: SizeConfig.blockSizeHorizontal*8 ,
                decoration: BoxDecoration(
                  color: Color(0xff64A820),
                 borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: Center(child: Text('+249', style:TextStyle(color: Colors.white, fontWeight: FontWeight.bold),))


              ,

            ),
            SizedBox(
              width:SizeConfig.blockSizeHorizontal*5
            ),
            SizedBox(
              width: SizeConfig.blockSizeHorizontal*35,
              child: TextField(
                textAlign: TextAlign.start,

                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Phond number'

                ),
              ),
            ),
          ],
        ),

          Padding(
            padding:EdgeInsets.symmetric(horizontal:10.0),
            child:Container(
              height:1.0,
              width:SizeConfig.blockSizeHorizontal*65,
              color:Colors.black,),),
          SizedBox(height: SizeConfig.blockSizeVertical*5,),


          Container(
          width: SizeConfig.blockSizeHorizontal*60,
          height: SizeConfig.blockSizeVertical*8,
          decoration: BoxDecoration(
            color: Color(0xffF2F8FC),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Facebook', style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold,fontSize: SizeConfig.blockSizeVertical*2.2),),
                Spacer(),
                Text( 'Or', style: TextStyle(fontWeight: FontWeight.bold, fontSize: SizeConfig.blockSizeVertical*2.2)),
                Spacer(),
                Text('Google',style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold,fontSize: SizeConfig.blockSizeVertical*2.2),),

              ],
            ),
          ),
        ),

        SizedBox(height:SizeConfig.blockSizeVertical*10,),

          Row(
            children: [
              Spacer(),
              Text('Login', style: TextStyle(fontWeight: FontWeight.bold, fontSize: SizeConfig.blockSizeVertical*4),),
              Spacer(),
              FloatingActionButton(
                backgroundColor: Color(0xff333333),
                child: FaIcon (Icons.arrow_forward),
                onPressed: () {

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
              width:SizeConfig.blockSizeHorizontal*65,
              color:Colors.black,),),

            SizedBox(height: SizeConfig.blockSizeVertical*3,),
          Row(
            children: [
              Spacer(),
              Text("Don't have an account?", style: TextStyle( fontSize: SizeConfig.blockSizeVertical*2, color: Colors.grey)),
              SizedBox(width: SizeConfig.blockSizeHorizontal*5,),

              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpScreen(),
                      ));

                },
                child: Text("Sign Up", style: TextStyle(fontWeight: FontWeight.bold,fontSize: SizeConfig.blockSizeVertical*2.2
                , decoration: TextDecoration.underline)),
              ),



              Spacer(),



            ],
          )
        ],


      ),
    );
  }
}
