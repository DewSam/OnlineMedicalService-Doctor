import 'package:flutter/material.dart';
import 'package:onlinemedicalservicedoctor/screens/home_screen.dart';
import 'package:onlinemedicalservicedoctor/size_config.dart';

void main() {
  runApp(OnlineMedicalService());
}

class OnlineMedicalService extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data:  MediaQueryData(),
      child: MaterialApp(
        home: HomeScreen(),
        theme: ThemeData.light()
//            .copyWith(
//            scaffoldBackgroundColor: Color(0xFF00000),
//            //Color(0xFFFFFFF)  ,
//            //primaryColor: Color(0xFF232107),
//            primaryIconTheme: IconThemeData(color: Color(0xFFFFEE35))),

//        initialRoute: HomeScreen.id,
//        routes: {
//          HomeScreen.id : (context) => HomeScreen(),
//          ArtistScreen.id : (context) => ArtistScreen(),
//          ChallengeScreen.id : (context) => ChallengeScreen(),
//          ResultScreen.id : (context) => ResultScreen(),
//         InterviewScreen.id : (context) => InterviewScreen(),
//
//        },

      ),
    );
  }
}
