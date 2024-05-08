import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/nav_items.dart';
import 'package:my_portfolio/styles/style.dart';
import 'package:my_portfolio/widgets/site_logo.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key, required this.onNavMenuTap});
  final Function(int) onNavMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
            decoration: kHeaderDecoration,
            
            height: 60,
            width: double.maxFinite,
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              children: [
                // text: Phupa Denphatcharangkul color: textColor1
                SiteLogo(
                  onTap: () {},
                ),
                
                const Spacer(),
                for (int i = 0; i < navTitles.length; i++)
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: TextButton(
                    onPressed: () {
                      onNavMenuTap(i);
                    },
                    child: Text(
                      navTitles[i],
                      style: const TextStyle(
                      color: CustomColor.textColor1,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          );
  }
}