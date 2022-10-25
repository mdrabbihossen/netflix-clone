import 'package:flutter/material.dart';

class HomePageBannerCategory extends StatelessWidget {
  const HomePageBannerCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(height: 15),
          // homepage banner categories
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:  [
              categoryTitle(categoryTitle: 'Tv Shows'),
              categoryTitle(categoryTitle: 'Movies'),
              categoryTitle(categoryTitle: 'Categories'),
              Icon(
                Icons.keyboard_arrow_down,
                color: Colors.white,
                size: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget categoryTitle({required String categoryTitle}) => Text(
        categoryTitle,
        style: TextStyle(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
      );
}
