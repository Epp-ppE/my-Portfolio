import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/styles/style.dart';
import 'package:my_portfolio/utils/project_utiils.dart';
// import 'dart:js' as js;
import 'package:url_launcher/url_launcher.dart';

class ProjectCardWidget extends StatelessWidget {
  const ProjectCardWidget({
    super.key,
    required this.project,
  });
  final ProjectUtils project;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 320,
      width: 280,
      decoration: BoxDecoration(
        color: CustomColor.primaryColor,
        gradient: kLightBackgroundGradient,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            project.image, 
            height: 140,
            width: 280,
            fit: BoxFit.cover,
            ),
            //project title
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
              child: Text(
                project.title,
                style: const TextStyle(
                  fontWeight: FontWeight.w900,
                  color: CustomColor.textColor2,
                ),
              ),
            ),
            //subtitle
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
              child: Text(
                project.subtitle,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  color: CustomColor.textColor1,
                  fontSize: 10
                ),
              ),
            ),
            //footer
            const Spacer(),
            Container(
              color: CustomColor.textColor3,
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              child: Row(
                children: [
                  const Text(
                    "Link",
                    style: TextStyle(
                      color: CustomColor.textColor2,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Spacer(),
                  if (project.url != null)
                    Padding(
                      padding: const EdgeInsets.only(left: 6),
                      child: InkWell(
                        onTap: () async {
                          String url = project.url!;
                          if (await canLaunchUrl(Uri.parse(url))) {
                            await launchUrl(Uri.parse(url));
                          } else {
                            throw 'Could not launch ${project.url}';
                          }
                        },
                        child: Image.asset(
                          'assets/website.png', 
                          height: 17,
                          width: 17,
                        ),
                      )
                    ),
                  if (project.githubUrl != null)
                    Padding(
                      padding: const EdgeInsets.only(left: 6),
                      child: InkWell(
                        onTap: () async {
                          String url = project.githubUrl!;
                          if (await canLaunchUrl(Uri.parse(url))) {
                            await launchUrl(Uri.parse(url));
                          } else {
                            throw 'Could not launch ${project.githubUrl}';
                          }
                        },
                        child: Image.asset(
                          'assets/github.png', 
                          height: 17,
                          width: 17,
                        ),
                      )
                    ),
                ],
              ),
            )
        ],
      ),
    );
  }
}