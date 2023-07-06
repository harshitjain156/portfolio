import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import '../../responsive.dart';
import '../../models/Project.dart';
import 'package:url_launcher/url_launcher.dart';


class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          SizedBox(height: 5,),
          Text('Skills:  '+project.skills!,style: TextStyle(fontStyle: FontStyle.italic,color: Colors.white70),
            maxLines: Responsive.isMobileLarge(context) ? 1 : 2,
          ),
          SizedBox(height: 9,),
          Text(
            project.description!,
            maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          ),
          Spacer(),
          TextButton(
            onPressed: () {
              _launchURL(project.link!);
            },
            child: Text(
              "Github Link >>",
              style: TextStyle(color: primaryColor),
            ),
          ),
        ],
      ),
    );
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }


}
