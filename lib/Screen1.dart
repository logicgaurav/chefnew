import 'package:chefbox/navigationDrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'package:carousel_pro/carousel_pro.dart';

import 'listdata.dart';

final List<String> imgList = [
  'images/bara.png',
  'images/burger.png',
  
];

class MainScreen extends StatefulWidget {
  final String title;
  MainScreen({Key? key, required this.title}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  User user =  User("name","firstname","adress","username");

  @override
  Widget build(BuildContext context) {

    var layout = Container(
      height: 350,
      width: 100,
      child: Stack(

        children: [
          /*Container(
            margin: EdgeInsets.only(top: 3.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back, color: Colors.black,),),
                IconButton(onPressed: (){}, icon: const Icon(Icons.search, color: Colors.black,),),
              ],
            ),
          ),*/
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius:   const BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0),
                  bottomLeft: Radius.circular(80),
                  bottomRight: Radius.circular(0),

                ),
                child: Container(
                  height: 40.h,
                  width: 100.w,

                  child: Carousel(
                    boxFit: BoxFit.cover,
                    autoplay: true,
                    animationCurve: Curves.fastOutSlowIn,
                    animationDuration: const Duration(milliseconds: 1000),
                    dotSize: 6.0,
                    borderRadius: true,
                    dotIncreasedColor: const Color(0xFFFF335C),
                    dotBgColor: Colors.transparent,
                    dotPosition: DotPosition.topRight,
                    dotVerticalPadding: 10.0,
                    showIndicator: true,
                    indicatorBgPadding: 7.0,
                    images: const [
                      AssetImage('images/bara.png',),
                      AssetImage('images/Group 1343.png'),
                      // ExactAssetImage("assets/images/LaunchImage.jpg"),
                    ],
                  ),

                ),
              ),
            ],
          ),
        ],
      ),);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 253, 235, 241),
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            // Status bar color
            statusBarColor: Color(0xFFFFA500),
            statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
            statusBarBrightness: Brightness.light, // For iOS (dark icons)
          ),
          title: const Text('Chef4you'),
        ),
        drawer: NavigationDrawer(user:user),
      body: MyHomePage(layout)
    );
  }
}

class User {
  User(String s, String t, String u, String v);
}
