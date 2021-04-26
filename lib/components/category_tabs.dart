import 'package:flutter/material.dart';

class CategoryTabs extends StatefulWidget {
  final List<String> categories;

  CategoryTabs({required this.categories});

  @override
  _CategoryTabsState createState() => _CategoryTabsState();
}

class _CategoryTabsState extends State<CategoryTabs> {
  List<String> _categories = ["Featured", "New", "Collections"];
  int _selectedIndex = 0;

  @override
  void initState() {
    _categories = widget.categories;
    _selectedIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _categories.length,
        itemBuilder: (context, index) => buildCategory(index)),
    );
  }

  Widget buildCategory(int index){
    return GestureDetector(
      onTap: () => setState(() => _selectedIndex = index),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Text(
          _categories[index],
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: _selectedIndex == index ? Colors.black : Color(0xFFCFCFCF),
          ),
        )
      ),
    );
  }
}