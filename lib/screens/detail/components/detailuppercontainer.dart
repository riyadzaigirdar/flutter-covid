import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants.dart';

class DetailUpperContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
              height: size.height * 0.57,
              margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              decoration: BoxDecoration(
                color: kBackgroundColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0)
                )
              ),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
                color: Colors.transparent,
                child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "New Cases", 
                            style: TextStyle(fontSize: 20.0),
                          ),
                          IconButton(icon: Icon(Icons.menu), onPressed: (){})
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "547", 
                            style: TextStyle(fontSize: 70.0, color: kPrimaryColor),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0, right: 5.0),
                            child: Text(
                              "5.9%", 
                              style: TextStyle(
                                color: kPrimaryColor
                              ),
                            )
                          ),
                          SvgPicture.asset("assets/icons/increase.svg")
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "From Health Center",
                            style: TextStyle(
                              fontSize: 18.0,
                              color: kTextLightColor.withOpacity(0.9)
                              ),
                            )
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                        height: 200.0,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                            image: AssetImage("assets/images/chart.png"),
                            fit: BoxFit.cover
                          )
                        ), 
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 1.0),
                        color: Colors.transparent,
                        height: size.height * 0.1,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                  Text(
                                    "6.43%",
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: kPrimaryColor,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text("From last week")
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "9.43%",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: kPrimaryColor,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                Text("Recovery Date")
                              ],
                            )
                          ],
                        ),
                      ) 
                    ],
                  ),
                ),
            );
  }
}