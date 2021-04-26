import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String imageDirName;
  final String title;
  final String description; 
  final int price;
  
  ProductCard({
    required this.imageDirName, 
    required this.title, 
    required this.description, 
    required this.price
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8.0,
            offset: Offset(1.0, 10.0),
          )
        ]
      ),
      child: Column(
        children: [
          Container(
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18.0), 
                topRight: Radius.circular(18.0)
              ),
              image: DecorationImage(
                image: AssetImage(imageDirName),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(19),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(18.0), 
                bottomRight: Radius.circular(18.0)
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                Text(
                  title, 
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold,),
                ),
                SizedBox(height: 11),
                Text(
                  description, 
                  style: TextStyle(fontSize: 12, color: Color(0xFF707070),),
                ),
                SizedBox(height: 15),
                Row(
                  children: <Widget> [
                    Text(
                      "\$$price", 
                      style: TextStyle(fontSize: 22,),
                    ),
                    Spacer(),
                    Icon(Icons.shopping_basket, color: Color(0xFF707070),),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}