import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: AspectRatio(aspectRatio: 1.23,
        child: Container(
          color: Color(0xFF242430),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Spacer(flex: 2,),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/images/profile_pic.png"),
                backgroundColor: Colors.white,
              ),
              Spacer(),
              Text("Harshit Jain",
                style: Theme.of(context).textTheme.subtitle2,),
              Text("App Developer & GDSC Core Member",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    height: 1.5
                ),),
              Spacer(flex: 1),
              Spacer(flex: 1,)

            ],
          ),
        ),),
    );
  }
}
