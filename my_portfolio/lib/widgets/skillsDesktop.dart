import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/skill_items.dart';
import 'package:my_portfolio/styles/style.dart';

class SkillsDesktop extends StatelessWidget {
  const SkillsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Container(
                decoration: kBackgroundDecoration,
                width: screenWidth,
                padding: const EdgeInsets.fromLTRB(25,20,25,60),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    //title
                    const Text(
                      "My skills",
                      style: TextStyle(
                        fontSize:24,
                        fontWeight: FontWeight.bold,
                        color: CustomColor.textColor2,
                      ),
                    ),
                    //platforms and skills
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ConstrainedBox(
                          constraints: const BoxConstraints(
                            maxWidth: 800,
                          ),
                          child: Wrap(
                            spacing: 10,
                            runSpacing: 10,
                            runAlignment: WrapAlignment.center,
                            children: [
                              for(int i = 0; i < skillItems.length; i++)
                                Container(
                                  width: screenWidth*0.75 / 3 - 20,
                                  decoration: BoxDecoration(
                                    color: CustomColor.secondaryColor,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: ListTile(
                                    contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 20, 
                                      vertical: 10
                                    ),
                                    leading: Image.asset(skillItems[i]["img"], width: 25, height: 25),
                                    title: Text(
                                      skillItems[i]["title"], 
                                      style: const TextStyle(
                                        color: CustomColor.textColor2, 
                                        fontWeight: FontWeight.bold, 
                                        fontSize: 18
                                      ),
                                    ),
                                  )
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              );
  }
}