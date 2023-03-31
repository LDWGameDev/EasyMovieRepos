import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_movie/config/global_config.dart';
import 'package:easy_movie/models/test_models.dart';
import 'package:flutter/material.dart';

class PlayingMoviesSlider extends StatelessWidget {
  const PlayingMoviesSlider({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: movies
          .map((e) => Builder(builder: (context) {
                return Stack(
                  children: [
                    Container(
                      width: size.width,
                      padding:
                          const EdgeInsets.only(left: 10, bottom: 24),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(e.imagePath),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              AppColors.gradientBlack1Start,
                              AppColors.gradientBlack1End,
                            ]),
                      ),
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        child: Text(
                          e.name,
                          style: AppTextStyles.heading18,
                        ),
                      ),
                    ),
                  ],
                );
              }))
          .toList(),
      options: CarouselOptions(autoPlay: true, enlargeCenterPage: true),
    );
  }
}