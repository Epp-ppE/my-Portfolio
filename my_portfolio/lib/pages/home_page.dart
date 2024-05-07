import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/nav_items.dart';
import 'package:my_portfolio/constants/skill_items.dart';
import 'package:my_portfolio/constants/skill_items.dart';
import 'package:my_portfolio/styles/style.dart';
import 'package:my_portfolio/utils/project_utiils.dart';
import 'package:my_portfolio/widgets/drawer_mobile.dart';
import 'package:my_portfolio/widgets/headerDesktop.dart';
import 'package:my_portfolio/widgets/headerMobile.dart';
import 'package:my_portfolio/widgets/mainDesktop.dart';
import 'package:my_portfolio/widgets/mainMobile.dart';
import 'package:my_portfolio/widgets/project_card.dart';
import 'package:my_portfolio/widgets/singleproject_section.dart';
import 'package:my_portfolio/widgets/site_logo.dart';
import 'package:my_portfolio/widgets/skillsDesktop.dart';
import 'package:my_portfolio/widgets/skillsMobile.dart';
import 'package:my_portfolio/widgets/teamproject_section.dart';



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
              
              if(constraints.maxWidth >= 790)
                const SkillsDesktop()
              else const SkillsMobile(),
              
              // Single Projects
              const TeamProjectSection(),
              const SingleProjectSection(),
              
              const SizedBox(height: 30),
              Container(
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
                    //footer
                    Row(
                      children: [
                        Flexible(
                          child: 
                        ),
                      ],
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

