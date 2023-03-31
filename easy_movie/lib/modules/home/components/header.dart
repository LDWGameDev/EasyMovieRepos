// Home page header
import 'package:easy_movie/config/global_config.dart';
import 'package:flutter/material.dart';

class HomePageHeader extends StatelessWidget {
  const HomePageHeader({
    super.key,
    required this.size,
  });
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 64, left: 24, right: 24),
      child: SizedBox(
        height: size.height / 10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Find Your Best\nMovie",
              style: AppTextStyles.heading24,
            ),
            const CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(ImagePaths.defaultUserProfileIcon),
            )
          ],
        ),
      ),
    );
  }
}
