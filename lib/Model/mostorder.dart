// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:spryntr/data/assets_path.dart';

class MostOrder {
  int items;
  String imagepath;
  String name;
  MostOrder({
    required this.items,
    required this.imagepath,
    required this.name,
  });
}

List<MostOrder> mostorderlist = [knoorbeef, purplebottle, seasonbox];

MostOrder knoorbeef = MostOrder(
  name: 'Knorr Beef Seasoning Cubes Taste The Knorr Difference 50x8g',
  imagepath: CustomAssets.bottle,
  items: 200,
);

MostOrder purplebottle = MostOrder(
  name: 'Knorr Beef Seasoning Cubes Taste The Knorr Difference 50x8g',
  imagepath: CustomAssets.purplebottle,
  items: 120,
);

MostOrder seasonbox = MostOrder(
  name: 'Knorr Beef Seasoning Cubes Taste The Knorr Difference 50x8g',
  imagepath: CustomAssets.smallbox,
  items: 80,
);
