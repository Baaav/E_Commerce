// ignore_for_file: unnecessary_string_escapes

class Itm {
  String imagePath;
  double price;
  String locate;

  Itm(
      {required this.imagePath,
      required this.price,
      this.locate = "main branch"});
}

final List<Itm> items = [
  Itm(price: 13.00, imagePath: "assets\images\1.jpg", locate: "bavly shoes"),
  Itm(price: 13.00, imagePath: "assets\images\2.jpg"),
  Itm(price: 13.00, imagePath: "assets\images\3.jpg"),
  Itm(price: 13.00, imagePath: "assets\images\4.jpg"),
  Itm(price: 13.00, imagePath: "assets\images\5.jpg"),
  Itm(price: 13.00, imagePath: "assets\images\6.jpg"),
  Itm(price: 13.00, imagePath: "assets\images\7.jpg"),
  Itm(price: 13.00, imagePath: "assets\images\8.jpg"),
];
