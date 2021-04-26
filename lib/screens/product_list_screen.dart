import 'package:flutter/material.dart';
import 'package:interior_design_clone/components/category_tabs.dart';
import 'package:interior_design_clone/components/product_card.dart';
import 'package:interior_design_clone/data/product_item_list.dart';

class ProductListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> _categories = ["Chairs", "Tables", "Sofas", "Beds"];

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
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(height: 10),
            CategoryTabs(categories: _categories,),
            SizedBox(height: 36),
            pdtSubtitle(120),
            SizedBox(height: 21),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: GridView.builder(
                  itemCount: 6,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 15,
                    childAspectRatio: 0.7,
                  ),
                  itemBuilder: (context, index) => 
                    ProductCard(
                      imageDirName: tempProductList.productItems[index].imageDirName,
                      title: tempProductList.productItems[index].pdtName, 
                      description: tempProductList.productItems[index].description, 
                      price: tempProductList.productItems[index].pdtPrice,
                    ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget pdtSubtitle(int noOfPdts) {
  return Padding(
    padding: const EdgeInsets.only(left: 18, right: 48),
    child: Row(
      children: [
        Text(
          "$noOfPdts Products",
          style: TextStyle(
            fontSize: 14,
          ),
        ),
        Spacer(),
        Text(
          "Popular",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
        ),
      ],
    ),
  );
}

