import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/nav_items.dart';
import 'package:my_portfolio/constants/skill_items.dart';
import 'package:my_portfolio/constants/skill_items.dart';
import 'package:my_portfolio/styles/style.dart';
import 'package:my_portfolio/widgets/drawer_mobile.dart';
import 'package:my_portfolio/widgets/headerDesktop.dart';
import 'package:my_portfolio/widgets/headerMobile.dart';
import 'package:my_portfolio/widgets/mainDesktop.dart';
import 'package:my_portfolio/widgets/mainMobile.dart';
import 'package:my_portfolio/widgets/site_logo.dart';
import 'package:my_portfolio/widgets/skillsDesktop.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;


    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldKey,
          endDrawer: constraints.maxWidth >= 790? null :const DrawerMobile(),
          backgroundColor: CustomColor.scaffoldBg,
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              // Header
              if(constraints.maxWidth >= 790)
                const HeaderDesktop() 
              else HeaderMobile(
                onLogoTap: () {},
                onMenuTap: () {
                  scaffoldKey.currentState?.openEndDrawer();
                },
              ),

              if(constraints.maxWidth >= 790)
                const MainDesktop()
              else const MainMobile(),
              
              // if(constraints.maxWidth >= 790)
              //   const SkillsDesktop()
              Container(
                width: screenWidth,
                padding: const EdgeInsets.fromLTRB(25,20,25,60),
                color: CustomColor.primaryColor,
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
                    for(int i = 0; i < skillItems.length; i++) 
                      Container(
                        width: screenWidth/1.5,
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
                              fontSize: 20
                            ),
                          ),
                        )
                      ),
                      Container(
                                color: Colors.blue, // Color of the container
                                child: const SizedBox(
                                  width: 100,
                                  height: 100,
                                  // Your child widget here
                                ),
                              ),

                  ],
                ),
              )
              
              
            ],
          ),
        );
      }
    );
  }
}