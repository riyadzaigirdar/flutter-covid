import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants.dart';

class HomeMiddleContainer extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 20.0),
      color: kBackgroundColor,
      width: double.infinity,
      height: screenSize.height * 0.21,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Preventions", 
            style: TextStyle(
              fontSize: 23.0, 
              fontWeight: FontWeight.bold
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SvgPicture.asset("assets/icons/hand_wash.svg"),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 7.0),
                      child: Text("Wash Hand")
                    )
                  ],
                ),
                Column(
                  children: [
                    SvgPicture.asset("assets/icons/use_mask.svg"),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 7.0),
                      child: Text("Use Mask")
                      )
                  ],
                ),
                Column(
                  children: [
                    SvgPicture.asset("assets/icons/Clean_Disinfect.svg"),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 7.0),
                      child: Text("Clean Disinfect")
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

