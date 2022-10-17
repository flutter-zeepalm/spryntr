// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:spryntr/data/assets_path.dart';

class Item {
  int id;
  int quanitiy;
  double prize;
  String imagepath;
  String name;
  Item({
    required this.id,
    required this.quanitiy,
    required this.prize,
    required this.imagepath,
    required this.name,
  });
}

List<Item> itemlist = [
  chcoProtienBrownie,
  chcoProtienBrownie,
  chcoProtienBrownie,
  chcoProtienBrownie,
  chcoProtienBrownie,
  chcoProtienBrownie,
  chcoProtienBrownie,
  chcoProtienBrownie,
  chcoProtienBrownie,
  chcoProtienBrownie,
  chcoProtienBrownie,
  chcoProtienBrownie,
  chcoProtienBrownie
];
List<Item> prizeitemlist = [];

Item bottle = Item(
  id: 1,
  name: 'Heinz Apple Cider\nVinegar',
  imagepath: CustomAssets.bottle,
  prize: 4000,
  quanitiy: 0,
);

Item chcoProtienBrownie = Item(
  id: 2,
  name: 'Chco Protien Brownie',
  imagepath: CustomAssets.protienbrownie,
  prize: 4000,
  quanitiy: 0,
);
