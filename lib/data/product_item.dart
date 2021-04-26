class ProductItemList {
  List<ProductItem> productItems; // A list of meal item from the class above

  ProductItemList({required this.productItems});
}

class ProductItem {
  final int id;
  final String imageDirName;
  final String pdtName;
  final String description;
  final int pdtPrice;

  ProductItem({
    required this.id,
    required this.imageDirName,
    required this.pdtName,
    required this.description,
    required this.pdtPrice,
  });
}