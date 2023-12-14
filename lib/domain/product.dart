// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: invalid_annotation_target

part of 'domain.dart';

@collection
class Product {
  Id id = Isar.autoIncrement;
  String name = '';
  String model = '';
  @enumerated
  Brand brand = Brand.chinese;
  int stock = 0;
  String image = '';
  bool editing = false;

  int colorIndex = 0;
  int price = 0;
  @ignore
  MaterialColor get materialColor {
    return Colors.primaries[colorIndex];
  }

  @ignore
  set materialColor(MaterialColor value) {
    colorIndex = Colors.primaries.indexOf(value);
  }

  @override
  String toString() {
    if (editing) {
      return 'Product ($id) \n[\nname: $name\nmodel: $model\nbrand: $brand\nstock: $stock\nediting: $editing\ncolorIndex: $colorIndex\nprice: $price)\n]';
    } else {
      return 'Product ($id)';
    }
  }
}
