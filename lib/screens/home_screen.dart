import 'package:flutter/material.dart';
import 'package:interior_design_clone/components/big_home_card.dart';
import 'package:interior_design_clone/components/category_tabs.dart';
import 'package:interior_design_clone/components/recommendation_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_basket),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: (){},
          )
        ],
      ),
      body: mainBody(context),
    );
  }
}

Widget mainBody(BuildContext context){
  List<String> _categories = ["Featured", "New", "Collections"];

  return SafeArea(
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          CategoryTabs(categories: _categories,),
          SizedBox(height: 36),
          BigHomeCard(imageDirName: 'images/hand-picks-1.jpg'),
          SizedBox(height: 44),
          carouselHeader("Best sellers"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                RecommendationCard(imageDirName: 'images/best-seller-1.jpg'),
                RecommendationCard(imageDirName: 'images/amos-chair.jpg'),
                RecommendationCard(imageDirName: 'images/kew-chair.jpg'),
              ],
            ),
          ),
          carouselHeader("Hand-picks"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                RecommendationCard(imageDirName: 'images/hand-picks-1.jpg'),
                RecommendationCard(imageDirName: 'images/hand-picks-2.jpg'),
                RecommendationCard(imageDirName: 'images/stool.jpg'),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget carouselHeader(String title) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 21.0),
    child: Row(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 21,
          ),
        ),
        Spacer(),
        Text(
          "View all",
          style: TextStyle(
            fontSize: 16,
            color: Color(0xFFE2CA90),
          ),
        ),
      ],
    ),
  );
}