// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:spryntr/data/assets_path.dart';

class Product {
  int id;
  String name;
  double prize;
  String imagepath;
  String quantity;
  Product({
    required this.id,
    required this.name,
    required this.prize,
    required this.imagepath,
    required this.quantity,
  });
}

List<Product> productlist = [
  cocacola,
  cocacola,
  cocacola,
  cocacola,
  cocacola,
];

Product cocacola = Product(
  id: 1,
  name: 'Coca Cola Original 35cl',
  imagepath: CustomAssets.cocacola,
  prize: 2000.00,
  quantity: '35cl',
);
