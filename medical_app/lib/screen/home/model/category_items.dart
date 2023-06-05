class CategoryItems {
  String imageUrlCategoryItem;
  String textUrlCategoryItems;

  CategoryItems(
      {required this.imageUrlCategoryItem, required this.textUrlCategoryItems});
}

List<CategoryItems> categoryItems = [
  CategoryItems(
    imageUrlCategoryItem: "assets/svg/find.svg",
    textUrlCategoryItems: "Find Doctor",
  ),
  CategoryItems(
    imageUrlCategoryItem: "assets/svg/hospital.svg",
    textUrlCategoryItems: "Hospital",
  ),
  CategoryItems(
    imageUrlCategoryItem: "assets/svg/covid.svg",
    textUrlCategoryItems: "Covid-19",
  ),
  CategoryItems(
    imageUrlCategoryItem: "assets/svg/ambulance.svg",
    textUrlCategoryItems: "Ambulance",
  ),
];
