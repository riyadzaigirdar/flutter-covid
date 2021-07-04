import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../models/homedata.dart';

class GridCard extends StatelessWidget{
  final HomeData info;
  const GridCard({
    Key key,
    @required this.info
  }): super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
            margin: const EdgeInsets.all(10.0),
            height: 120.0,
            width: 180.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10.0))
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                child: Row(
                  children: [
                    Icon(Icons.run_circle, size: 40.0, color: info.color,),
                    SizedBox(width: 5.0,),
                    Text(info.title, style: TextStyle(fontSize: 13.0),)
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("${info.number}", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
                        Text("People")
                      ],
                      ),
                  ),
                  Image.asset("assets/images/wave.png" ,width: 100.0,)
                ],
              )
            ],
          ),
    );
  }
}