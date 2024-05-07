import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_portfolio/constants/colors.dart';

BoxDecoration kHeaderDecoration =  BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    CustomColor.secondaryColor,
                    CustomColor.primaryColor,
                  ],
                ),
                borderRadius: BorderRadius.circular(100),
              );

BoxDecoration kBackgroundDecoration = const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      CustomColor.scaffoldBg2, 
                      CustomColor.primaryColor
                    ],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
                );

LinearGradient kLightBackgroundGradient = const LinearGradient(
                    colors: [
                      CustomColor.primaryColor, 
                      CustomColor.secondaryColor
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight
                );

LinearGradient kDarkBackgroundGradient1 = const LinearGradient(
                    colors: [
                      CustomColor.scaffoldBg, 
                      CustomColor.scaffoldBg3
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomRight
                );

LinearGradient kDarkBackgroundGradient2 = const LinearGradient(
                    colors: [
                      CustomColor.scaffoldBg3, 
                      CustomColor.scaffoldBg
                    ],
                    begin: Alignment.topRight,
                    end: Alignment.bottomCenter
                );