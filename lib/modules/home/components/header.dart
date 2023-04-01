import 'package:final_project/config/themes/app_text_styles.dart';
import 'package:final_project/constants/asset_path.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 64, left: 20, right: 20),
      child: SizedBox(
        height: size.height / 10,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          const Text(
            'Find your best\nMovie',
            style: AppTextStyles.heading32Bold,
          ),
          CircleAvatar(
            radius: size.height / 24,
            backgroundImage: const AssetImage(AssetPath.imageProfile),
          )
        ]),
      ),
    );
  }
}