import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/styles/style.dart';
import 'package:my_portfolio/widgets/site_logo.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, this.onLogoTap, this.onMenuTap});
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
            decoration: kHeaderDecoration,
            height: 50,
            width: double.maxFinite,
            margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
            child: Row(
              children: [
                SiteLogo(
                  onTap: onLogoTap,
                ),
                const Spacer(),
                IconButton(
                  onPressed: onMenuTap, 
                  icon: const Icon(Icons.menu), 
                  color: CustomColor.scaffoldBg, 
                  iconSize: 30, 
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                ),
                const SizedBox(width: 15),
              ]
            ),
          );
  }
}