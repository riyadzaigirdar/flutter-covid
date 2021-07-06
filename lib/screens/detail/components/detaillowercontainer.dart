import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants.dart';

class DetailLowerContainer extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.30,
      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.all(
          Radius.circular(20.0)
        )
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Global Map",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
                IconButton(icon: Icon(Icons.menu), onPressed: (){})
              ],
            ),
            Container(
              height: size.height * 0.21,
              width: double.infinity,
              child: SvgPicture.asset(
                "assets/icons/map.svg",
                )
            )
          ],
        ),
      ),
    );
  }
}