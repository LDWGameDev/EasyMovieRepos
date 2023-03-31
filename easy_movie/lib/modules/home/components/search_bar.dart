import 'package:easy_movie/config/global_config.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
      child: SizedBox(
        height: size.height / 15,
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: size.height / 15,
                decoration: BoxDecoration(
                  color: AppColors.darkBackground,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    const Padding(
                        padding: EdgeInsets.only(left: 24, right: 10),
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                        )),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search movie or theater",
                          hintStyle: AppTextStyles.hint14,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: Image.asset(ImagePaths.filterButton),
            ),
          ],
        ),
      ),
    );
  }
}
