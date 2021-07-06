import 'package:covid/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeLowerContainer extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      height: screenSize.height * 0.216,
      child: Stack(
        children: [
          Positioned(
            top: 15,
            left: 20,
            child: Container(
              width: screenSize.width * 0.9,
              height: screenSize.height * 0.150,
              decoration: BoxDecoration(
                color: kPrimaryColor.withOpacity(0.7),
                borderRadius: BorderRadius.all(Radius.circular(20.0))
              ),
              child: Stack(
                children: [
                  Row(
                  children: [
                    SizedBox(
                      width: 200.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:20.0),
                          child: Text(
                            "Dial 999 for", 
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold
                              ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:3.0, bottom: 10.0),
                          child: Text(
                            "Medical Help!", 
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        Text(
                          "If any symtomps appear", 
                          style: TextStyle(color: Colors.white.withOpacity(0.4)),
                        )
                      ],
                    )
                  ],
                ),
                Positioned(
                  top: 5,
                  right: 5,
                  child: SvgPicture.asset("assets/icons/virus.svg", color: Colors.white,)
                )
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 30,
            child: SvgPicture.asset("assets/icons/nurse.svg")
          ),
          
        ],
      ),
    );
  }
}