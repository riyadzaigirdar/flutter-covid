import 'package:flutter/material.dart';
import '../../../models/homedata.dart';
import '../../../constants.dart';
import 'card.dart';

class HomeUpperContainer extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: kTextLightColor.withOpacity(0.1),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40.0),
          bottomRight: Radius.circular(40.0)
        )
      ),
      height: screenSize.height * 0.34,
      child: Center(
        child: Wrap(
          children: getHomeData.map((item) => (
            GridCard(info: item)
          )).toList(),
        ),
      ),
    );
  }
}




// GridView.builder(
//         physics: NeverScrollableScrollPhysics(),
//         itemCount: getHomeData.length,
//         shrinkWrap: true,
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           crossAxisSpacing: 5.0,
//           mainAxisSpacing: 5.0,
//           childAspectRatio: 1
//         ),
//         itemBuilder: (context, index) => Card(
//           info: getHomeData[index],
//         ),
//       )