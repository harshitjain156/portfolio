import 'package:flutter/material.dart';
import 'package:portfolio/Home/components/carousel/carousel.dart';
import 'package:portfolio/Home/components/my_projects.dart';
import 'package:portfolio/card.dart';
import 'package:portfolio/constants.dart';

import 'Sidemenu/components/SideMenu.dart';
import 'responsive.dart';


class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  // final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        resizeToAvoidBottomInset: false,

        // We hide the appbar on desktop
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
        backgroundColor: bgColor,
        leading:
        Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(Icons.menu),
          ),
        ),
      ),
      drawer: SideMenu(),
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: double.maxFinite),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isDesktop(context))
                Expanded(
                  flex: 2,
                  child: SideMenu(),
                ),
              SizedBox(width: defaultPadding),
              Expanded(
                flex: 8,
                child: SingleChildScrollView(
                  padding: EdgeInsets.fromLTRB(00.0, 0.0, 10.0, 0.0),
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      MyProjects(),


                      // our footer
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );


  }
}

