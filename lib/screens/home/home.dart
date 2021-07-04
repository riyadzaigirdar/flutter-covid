import 'package:covid/screens/home/components/homelowercontainer.dart';
import 'package:covid/screens/home/components/homemiddlecontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import './components/homeuppercontainer.dart';
import '../../constants.dart';

class Home extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        toolbarHeight: 75.0,
        backgroundColor: kTextLightColor.withOpacity(0.1),
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: SvgPicture.asset("assets/icons/menu.svg"),
              iconSize: 40.0,
              color: kPrimaryColor,
              onPressed: (){}
            ),
            IconButton(
              icon: SvgPicture.asset("assets/icons/search.svg"),
              // Icon(Icons.search)
              iconSize: 40.0,
              color: kPrimaryColor,
              onPressed: (){}
            )
          ],
          ),  
      ),
      body: ListView(
        children: [
          HomeUpperContainer(),
          HomeMiddleContainer(),
          HomeLowerContainer()
        ],
      ),
    );
  }
}


