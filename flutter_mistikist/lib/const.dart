import 'package:flutter_mistikist/models/mistik_model.dart';

class Mistik {
  static final mistik = <MistikModel>[
    MistikModel(
        image: "assets/mistik1.jpg",
        title: "Header",
        subtitle:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consequat imperdiet ligula, in dapibus mauris porttitor vitae. Donec enim sem, imperdiet eget malesuada eu, suscipit ac lectus. "),
    MistikModel(
        image: "assets/mistik2.jpeg",
        title: "Title",
        subtitle:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consequat imperdiet ligula, in dapibus mauris porttitor vitae. Donec enim sem, imperdiet eget malesuada eu, suscipit ac lectus. "),
    MistikModel(
        image: "assets/mistik3.jpg",
        title: "Title2",
        subtitle:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consequat imperdiet ligula, in dapibus mauris porttitor vitae. Donec enim sem, imperdiet eget malesuada eu, suscipit ac lectus. ")
  ];
}

class Categoryy {
  static final category = <CategoryModel>[
    CategoryModel(title: "Category 1", subtitle: "Category Detail"),
    CategoryModel(title: "Category 2", subtitle: "Category Detail"),
    CategoryModel(title: "Category 3", subtitle: "Category Detail"),
    CategoryModel(title: "Category 4", subtitle: "Category Detail"),
    CategoryModel(title: "Category 5", subtitle: "Category Detail"),
    CategoryModel(title: "Sleep", subtitle: "20 playlist"),
  ];
}
