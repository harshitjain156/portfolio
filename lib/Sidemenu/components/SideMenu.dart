import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants.dart';
import 'area_info_text.dart';
import 'my_info.dart';

class SideMenu extends StatelessWidget {

  const SideMenu({Key? key}) : super(key: key);



  @override

  Widget build(BuildContext context) {

    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
           MyInfo(),


            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    Divider(),
                    SizedBox(height: defaultPadding/2,),

                    TextButton(
                      onPressed: () {

                      },
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "DOWNLOAD CV",
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
                              ),
                            ),
                            SizedBox(width: defaultPadding / 2),
                            SvgPicture.asset("assets/icons/download.svg")
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: defaultPadding/2,),
                    Divider(),
                    SizedBox(height: defaultPadding,),
                    AreaInfoText(
                      title: "Residence",
                      text: "Sikanddrabad",
                    ),
                    AreaInfoText(
                      title: "District",
                      text: "Bulandshahar",
                    ),
                    AreaInfoText(
                      title: "Age",
                      text: "21",
                    ),
                    // Skills(),
                    SizedBox(height: defaultPadding),
                    // Coding(),
                    // Knowledges(),
                    Divider(),
                    SizedBox(height: defaultPadding / 2),

                    Container(
                      margin: EdgeInsets.only(top: defaultPadding),
                      color: Color(0xFF24242E),
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(
                            onPressed: () {_launchURL('https://www.linkedin.com/in/harshitjain-work/');},
                            icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                          ),
                          IconButton(
                            onPressed: () {
                              _launchURL('https://github.com/harshitjain156');
                            },
                            icon: SvgPicture.asset("assets/icons/github.svg"),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset("assets/icons/twitter.svg"),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
  void _launchPDF(String pdfUrl) async {
    if (await canLaunch(pdfUrl)) {
      await launch(pdfUrl);
    } else {
      throw 'Could not launch $pdfUrl';
    }
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

}


