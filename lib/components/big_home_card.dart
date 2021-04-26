import 'package:flutter/material.dart';
import 'package:interior_design_clone/screens/product_list_screen.dart';

class BigHomeCard extends StatelessWidget {
  final String imageDirName;

  BigHomeCard({required this.imageDirName});
  
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () { 
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => ProductListScreen(),
        ));
      },
      child: Container(
        width: size.width ,
        height: 250,
        margin: EdgeInsets.symmetric(horizontal: 21),
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 60),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 8.0,
              offset: Offset(1.0, 10.0),
            )
          ],
          image: DecorationImage(
            image: AssetImage(imageDirName),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "The Classic", 
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 25,
                fontWeight: FontWeight.normal,
                color: theme.accentColor,
              ),
            ),
            SizedBox(height: 18),
            Text(
              "Classic appearance \nwith a splash of color", 
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: Color(0xFFC3C3C3),
              ),
            ),
            Spacer(),
            Icon(Icons.arrow_forward,),
          ],
        ),
      ),
    );
  }
}