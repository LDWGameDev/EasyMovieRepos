import 'package:easy_movie/config/global_config.dart';
import 'package:easy_movie/models/test_models.dart';
import 'package:flutter/material.dart';

class UpComing extends StatefulWidget {
  const UpComing({
    super.key,
  });

  @override
  State<UpComing> createState() => _UpComingState();
}

class _UpComingState extends State<UpComing> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: genres.length,
          itemBuilder: (context, index) {
            return Container(
              color: AppColors.darkGrey,
              margin: const EdgeInsets.only(left: 12),
              alignment: Alignment.center,
              width: 120,
              child: const Text("Upcoming"),
            );
          }),
    );
  }
}
