import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/sns_link.dart';
import 'package:my_portfolio/widgets/custom_text_field.dart';
import 'package:url_launcher/url_launcher.dart';

class ContractSection extends StatelessWidget {
  const ContractSection({super.key});
  

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      width: screenWidth,
      padding: const EdgeInsets.fromLTRB(25,20,25,50),
      color: CustomColor.scaffoldBg3,
      child: Column(
        children: [
          const Text(
            "Get in touch", 
            style: TextStyle(
              color: CustomColor.primaryColor, 
              fontSize: 30, 
              fontWeight: 
              FontWeight.bold
            ),
          ),
          const SizedBox(height: 50),
          // //footer
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700,
            ),
            child: LayoutBuilder(builder:(context, constraints) {
                return constraints.maxWidth >= 590? buildnameEmailFieldDesktop() : buildnameEmailFieldMobile();
              } 
            ),
          ),
          const SizedBox(height: 15),
          Container(
            constraints: const BoxConstraints(
              maxWidth: 700,
            ),
            child: const CustomTextField(
              hintText: "Your message",
              maxLines: 20,
            ),
          ),

          const SizedBox(height: 20),
          // send button
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700,
            ),
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(CustomColor.scaffoldBg),

                padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 30, vertical: 15)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              child: const Text(
                "Get in touch",
                style: TextStyle(
                  color: CustomColor.white,
                  // fontSize: 30,
                  height: 1.5,
                )
              ),
            ),
          ),
          const SizedBox(height: 30), 
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 400,
            ),
            child: const Divider(
              color: CustomColor.primaryColor,
            ),
          ),  
          const SizedBox(height: 15), 
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              InkWell(
                onTap: () async {
                  String url = SnSLinks.github; // Replace "" with your GitHub URL
                  if (await canLaunchUrl(Uri.parse(url))) {
                    await launchUrl(Uri.parse(url));
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: Image.asset("assets/github.png", width: 28,),
              ),
              InkWell(
                onTap: () async {
                  String url = SnSLinks.linkedin; // Replace "" with your GitHub URL
                  if (await canLaunchUrl(Uri.parse(url))) {
                    await launchUrl(Uri.parse(url));
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: SvgPicture.asset("assets/linkedin.svg", width: 28,),
              ),
              InkWell(
                onTap: () async {
                  String url = SnSLinks.instagram; // Replace "" with your GitHub URL
                  if (await canLaunchUrl(Uri.parse(url))) {
                    await launchUrl(Uri.parse(url));
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: SvgPicture.asset("assets/instagram.svg", width: 28,),
              ),
              InkWell(
                onTap: () async {
                  String url = SnSLinks.facebook; // Replace "" with your GitHub URL
                  if (await canLaunchUrl(Uri.parse(url))) {
                    await launchUrl(Uri.parse(url));
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: SvgPicture.asset("assets/facebook.svg", width: 28,),
              ),
            ],
          )
        ],
      ),

    );
  }

  Row buildnameEmailFieldDesktop() {
    return const Row(
      children: [
        Flexible(
          child: CustomTextField(
            hintText: "Your name",
          ),
        ),
        SizedBox(width: 10),
        Flexible(
          child: CustomTextField(
            hintText: "Your email",
          ),
        ),
      ],
    );
  }

  Column buildnameEmailFieldMobile() {
    return const Column(
                    children: [
                        CustomTextField(
                          hintText: "Your name",
                        ),
                        SizedBox(height: 15),
                        CustomTextField(
                          hintText: "Your email",
                        ),
                    ],
                  );
  }
}