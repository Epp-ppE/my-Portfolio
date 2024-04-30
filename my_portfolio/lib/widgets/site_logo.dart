import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key, this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
              onTap: () {},
              child: const Padding(
                padding: EdgeInsets.only(left: 20), // Example padding, adjust as needed
                child: Text(
                  "Phupa Denphatcharangkul",
                  style: TextStyle(
                    color: CustomColor.textColor2,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
          // decoration: TextDecoration.underline, 
                  ),
                ),
              ),
            );
  }
}