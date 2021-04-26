import 'package:flutter/material.dart';

class RecommendationCard extends StatelessWidget {
  final String imageDirName;

  RecommendationCard({required this.imageDirName});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 27,
        left: 14,
        bottom: 29,
      ),
      width: 154,
      height: 154,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4.0,
            offset: Offset(0.0, 1.0),
          )
        ],
        image: DecorationImage(
          image: AssetImage(imageDirName),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
