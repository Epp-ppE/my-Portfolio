import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/nav_items.dart';
import 'package:my_portfolio/constants/skill_items.dart';
import 'package:my_portfolio/constants/skill_items.dart';
import 'package:my_portfolio/styles/style.dart';
import 'package:my_portfolio/utils/project_utiils.dart';
import 'package:my_portfolio/widgets/contract_section.dart';
import 'package:my_portfolio/widgets/custom_text_field.dart';
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
import 'package:url_launcher/url_launcher.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;


    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldKey,
          endDrawer: constraints.maxWidth >= 790? 
            null : 
            DrawerMobile(
              onNavItemTap: (int navIdex){
                  // call function
                  scrollToSection(navIdex);
              }
            ),
          backgroundColor: CustomColor.scaffoldBg,
          body: SingleChildScrollView(
            controller: scrollController,
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(key: navbarKeys[0]),
                // Header
                if(constraints.maxWidth >= 790)
                  HeaderDesktop(onNavMenuTap: (int navIndex){
                    // call function
                      scrollToSection(navIndex);
                    }
                  ) 
                else HeaderMobile(
                  onLogoTap: () {},
                  onMenuTap: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                ),
            
                if(constraints.maxWidth >= 790)
                  const MainDesktop()
                else const MainMobile(),
                
                Container(
                  key: navbarKeys[1],
                  child: constraints.maxWidth >= 790? const SkillsDesktop(): const SkillsMobile(),
                ),
                
                
                // Projects
                TeamProjectSection(key: navbarKeys[2]),
                const SingleProjectSection(),
                
                const SizedBox(height: 30),
                
                // Contact Section
                ContractSection(key: navbarKeys[3]),
                
              ],
            ),
          ),
        );
      }
    );
  }
  
  void scrollToSection(int navIndex){
    if (navIndex == 4){
      // open a blog page
      return;
    }

    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}

