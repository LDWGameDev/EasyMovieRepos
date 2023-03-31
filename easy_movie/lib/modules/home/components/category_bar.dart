import 'package:easy_movie/config/global_config.dart';
import 'package:easy_movie/models/test_models.dart';
import 'package:flutter/material.dart';

class CategoryBar extends StatefulWidget {
  const CategoryBar({
    super.key,
  });

  @override
  State<CategoryBar> createState() => _CategoryBarState();
}

class _CategoryBarState extends State<CategoryBar> {
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: genres.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedTab = index;
                });
              },
              child: Container(
                margin: const EdgeInsets.only(left: 16),
                alignment: Alignment.center,
                width: 90,
                decoration: selectedTab == index
                    ? BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.lightBlue,
                      )
                    : const BoxDecoration(color: Colors.transparent),
                child: Text(
                  genres[index].id,
                  style: AppTextStyles.normal15,
                ),
              ),
            );
          }),
    );
  }
}