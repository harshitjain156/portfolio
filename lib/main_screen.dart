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
          constraints: BoxConstraints(maxWidth: maxWidth),
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
                flex: 7,
                child: SingleChildScrollView(
                  padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                  child: Column(
                    children: [
                      SizedBox(height: 30,),
                      Container(
                        child: ResponsiveCarousel(
                          images: [
                            'https://static.vecteezy.com/system/resources/previews/006/430/145/original/technology-background-concept-circuit-board-electronic-system-futuristic-hi-tech-light-on-dark-blue-free-vector.jpg',
                            'https://png.pngtree.com/thumb_back/fh260/background/20201028/pngtree-abstract-technology-background-technical-electric-image_443494.jpg',

                            // Add more image URLs as needed
                          ],
                        ),
                      ),
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

