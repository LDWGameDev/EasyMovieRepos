import 'package:flutter/material.dart';

class AppColors{
  static const lightBlue = Color(0xFF48CAE7);
  static const blueMain = Color(0xFF3D58F8);
  static const blueIllustration = Color(0xFF2C4BA1);
  static const darkBlueIllustration = Color(0xFF1E3577);
  static const white = Color(0xFFFFFFFF);
  static const grey = Color(0xFFABADBD);
  static const greyBackground = Color(0xFF42476A);
  static const darkGrey = Color(0xFF42476A);
  static const darkBackground = Color(0xFF151D3B);
  static const darkerBackground = Color(0xFF0B0F2F);
  static const veryDark = Color(0xFF051138);
  static const red = Color(0xFFFD4C00);
  static const green = Color(0xFF3E9D9D);
  static const yellow = Color(0xFFFFAF34);

  static const gradientNonActive = Color.fromARGB(25, 72, 202, 231);
  static const mainColor = Color.fromARGB(255, 61, 88, 248);

  static const gradientBlack1Start = Color.fromARGB(0, 0, 0, 0);
  static const gradientBlack1End = Color.fromARGB(220, 0, 0, 0);
}

class AppTextStyles
{
  // Homepage header
  static TextStyle heading24 = const TextStyle(
    color:  AppColors.white, 
    fontFamily: "Montserrat", 
    fontSize: 24, 
    fontWeight: FontWeight.w300,
  );

  // Homage page status title
  static TextStyle heading20 = const TextStyle(
    color:  AppColors.white, 
    fontFamily: "Montserrat", 
    fontSize: 20, 
    fontWeight: FontWeight.w300,
  );

  static TextStyle heading18 = const TextStyle(
    color:  AppColors.white, 
    fontFamily: "Montserrat", 
    fontSize: 18, 
    fontWeight: FontWeight.w300,
  );

  // Homepage search hint text
  static TextStyle hint14 = const TextStyle(
    color:  Colors.white70, 
    // fontFamily: "Montserrat", 
    fontSize: 14, 
    fontWeight: FontWeight.normal,
  );

  // Homepage tab button text
  static TextStyle normal15 = const TextStyle(
    color:  Colors.white, 
    // fontFamily: "Montserrat", 
    fontSize: 15, 
    fontWeight: FontWeight.normal,
  );
}

class ImagePaths
{
  static const String defaultUserProfileIcon = "assets/images/default_user_profile_icon.png";
  static const String searchIcon = "assets/images/search_icon.png";
  static const String filterButton = "assets/images/filter_button.png";
}