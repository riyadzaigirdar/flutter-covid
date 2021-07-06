import 'package:covid/screens/detail/components/detaillowercontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import './components/detailuppercontainer.dart';
import '../../constants.dart';
import '../../main.dart';

class Detail extends StatelessWidget {
  final int id;

  Detail(this.id);

  // Navigator.pop(context)
  @override
  Widget build(BuildContext context) {
    print(id);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75.0,
        backgroundColor: kTextLightColor.withOpacity(0.1),
        elevation: 0.0,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: SvgPicture.asset("assets/icons/menu.svg"),
              iconSize: 40.0,
              color: kPrimaryColor,
              onPressed: (){
                Navigator.pushReplacementNamed(context, HomeRoute);
              }
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
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: kTextLightColor.withOpacity(0.1),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            DetailUpperContainer(),
            DetailLowerContainer()
          ],
        ),
      ),
    );
  }
}


