import 'package:flutter/cupertino.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/styles/style.dart';
import 'package:my_portfolio/utils/project_utiils.dart';
import 'package:my_portfolio/widgets/project_card.dart';

class TeamProjectSection extends StatelessWidget {
  const TeamProjectSection({super.key});
  

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
                width: screenWidth,
                padding: const EdgeInsets.fromLTRB(25,20,25,60),
                decoration: BoxDecoration(
                  gradient: kDarkBackgroundGradient1,
                ),
                child: Column(
                  children: [
                    //work project title
                    const Text(
                      "Team Projects",
                      style: TextStyle(
                        fontSize:24,
                        fontWeight: FontWeight.bold,
                        color: CustomColor.primaryColor,
                      ),
                    ),
                    //work projects card
                    const SizedBox(height: 20,),
                    Wrap(
                      spacing: 25,
                      runSpacing: 25,
                      children: [
                        for(int i=0; i<teamProjectUtils.length; i++)
                          ProjectCardWidget(project: teamProjectUtils[i]),
                      ],
                    ),
                  ]
                )
              );
  }
}