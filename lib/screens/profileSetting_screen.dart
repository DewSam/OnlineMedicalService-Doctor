import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlinemedicalservicedoctor/size_config.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'findingAdoctor_screen.dart';


class ProfileSettingScreen extends StatefulWidget {
  @override
  static String id = 'profileSetting_screen';
  _ProfileSettingScreenState createState() => _ProfileSettingScreenState();
}

class _ProfileSettingScreenState extends State<ProfileSettingScreen > {
  @override

  Drawer _buildDrawer(context)
  {
    Orientation orientation = MediaQuery
        .of(context)
        .orientation;
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
//         DrawerHeader(
//           child: Text('Drawer Header'),
//           decoration: BoxDecoration(
//             color: Colors.blue,
//           ),
//         ),
          DrawerHeader(
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              decoration: BoxDecoration(
                color: Colors.black,),
//        image: DecorationImage(
//        fit: BoxFit.fill,
//        image:  AssetImage('images/Smiley@3x.png'))),
              child: Stack(children: <Widget>[
                Positioned(
                    bottom: 12.0,
                    left: 16.0,
                    child: Column(
                      children: [
                      ],
                    )),
              ])),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: ListTile(
              title: Text('Home'),
              leading: Icon (Icons.home),
              onTap: () {
//                Navigator.pushAndRemoveUntil(
//                    context,
//                    MaterialPageRoute(
//                        builder: (context) => HomeScreen()
//                    ),
//                    ModalRoute.withName("home_screen")
//                );
              },
            ),
          ),
        ],
      ),
    );}


  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      //drawer: _buildDrawer(context),
      //appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          Stack(
            children: [Container(
              width: SizeConfig.blockSizeHorizontal*100,
              height: SizeConfig.blockSizeVertical*30 ,
              decoration: BoxDecoration(
                  color: Color(0xffF2F8FC),
                  borderRadius: BorderRadius.only(topRight:Radius.circular(20) , topLeft:  Radius.circular(20))
                // (Radius.circular(20.0)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text('APP NAME \nillustrations', style:TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: SizeConfig.blockSizeVertical*4),)),
              ),

            ),
              Positioned(
                left: SizeConfig.blockSizeHorizontal*18,
                top: SizeConfig.blockSizeVertical*12 ,
                child:  Container(
                    width: SizeConfig.blockSizeHorizontal*11,
                    height:SizeConfig.blockSizeHorizontal*11,
                    child: FittedBox(child: FaIcon (Icons.menu, color: Color(0xff64A820)), fit: BoxFit.fill,)
                ),


              )],
          ),

          SizedBox(height: SizeConfig.blockSizeVertical*5,),


          textFieldWidget('Full Name'),
          SizedBox(height: SizeConfig.blockSizeVertical*1),
          textFieldWidget('Email'),

          Row(

            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              SizedBox(width: SizeConfig.blockSizeHorizontal*8),

              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height :SizeConfig.blockSizeVertical*1.25
                  ),
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

                  SizedBox(height :SizeConfig.blockSizeVertical*1.25
                  ),

                  Padding(
                    padding:EdgeInsets.symmetric(horizontal:10.0),
                    child:Container(
                      height:1.0,
                      width:SizeConfig.blockSizeHorizontal*15,
                      color:Colors.grey,),),
                ],
              ),
              SizedBox(
                  width:SizeConfig.blockSizeHorizontal*2
              ),
              SizedBox(
                width: SizeConfig.blockSizeHorizontal*60,
                child: TextField(
                  textAlign: TextAlign.start,

                  decoration: InputDecoration(
                      //border: InputBorder.none,
                      hintText: 'Phond number'

                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: SizeConfig.blockSizeVertical*3),


          DetailsWidgetwithButton('Languages', 'btn1'),
          SizedBox(height: SizeConfig.blockSizeVertical*1),
          DetailsWidgetwithButton('Notifications','btn2'),
          SizedBox(height: SizeConfig.blockSizeVertical*1),
          DetailsWidgetwithButton('Terms and Conditions', 'btn3'),
          SizedBox(height: SizeConfig.blockSizeVertical*1),

          DetailsWidgetwithButton('Privacy Policy', 'btn4'),
          SizedBox(height: SizeConfig.blockSizeVertical*5),

          Center(
            child:Text('Logout', style: TextStyle(color: Color(0xffF7A700),
                fontWeight: FontWeight.bold, fontSize: SizeConfig.blockSizeVertical*3),)

          )







        ],


      ),
    );
  }
}



Widget textFieldWidget (String field)
{

  return Row(

    mainAxisAlignment: MainAxisAlignment.center,
    children: [

//      SizedBox(width: SizeConfig.blockSizeHorizontal*5),
//
//      Text(field, style:TextStyle(color: Colors.black, fontWeight: FontWeight.bold,
//          fontSize: SizeConfig.blockSizeVertical*2.5),),
//
//      SizedBox(
//          width:SizeConfig.blockSizeHorizontal*5
//      ),
      SizedBox(
        width: SizeConfig.blockSizeHorizontal*80,
        child: TextField(
          textAlign: TextAlign.start,

          decoration: InputDecoration(
           //   border: InputBorder.none,
              hintText: field

          ),
        ),
      ),
    ],
  );



}


Widget DetailsWidgetwithButton (String field, String tag)
{

  return Column(
    children: [
      Row(
        children: [
          SizedBox(width: SizeConfig.blockSizeHorizontal*10,),
          Text(field, style: TextStyle(fontSize: SizeConfig.blockSizeVertical*2.5),),
          Spacer(),
          SizedBox(
            width: SizeConfig.blockSizeHorizontal*8,
            height: SizeConfig.blockSizeHorizontal*8,
            child: FloatingActionButton(
              backgroundColor: Color(0xff333333),
              child: FaIcon (Icons.arrow_forward),
              heroTag: tag,
              onPressed: () {

              },
            ),
          ),
          SizedBox(width: SizeConfig.blockSizeHorizontal*10,),


        ],
      ),
      SizedBox(height: SizeConfig.blockSizeVertical*1),

      Padding(
        padding:EdgeInsets.symmetric(horizontal:10.0),
        child:Container(
          height:1.0,
          width:SizeConfig.blockSizeHorizontal*80,
          color:Colors.grey,),),

    ],
  );


}