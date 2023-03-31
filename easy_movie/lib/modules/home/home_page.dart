import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_movie/config/global_config.dart';
import 'package:easy_movie/models/test_models.dart';
import 'package:easy_movie/modules/home/components/category_bar.dart';
import 'package:easy_movie/modules/home/components/current_playing.dart';
import 'package:easy_movie/modules/home/components/search_bar.dart';
import 'package:easy_movie/modules/home/components/upcoming.dart';
import 'package:flutter/material.dart';

import 'components/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Home page header
            HomePageHeader(size: size),
            // Home page search bar
            Search(size: size),
            // Home page category bar
            const CategoryBar(),

            BuildTitle("Current Playing"),
            // Current playing movies
            PlayingMoviesSlider(size: size),
            BuildTitle("Coming Soon"),

            const UpComing(),
          ],
        ),
      ),
    );
  }

  Padding BuildTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: Row(
        children: [
          Text(
            title,
            style: AppTextStyles.heading20,
          ),
        ],
      ),
    );
  }
}


