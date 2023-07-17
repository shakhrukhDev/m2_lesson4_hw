import 'package:m2_lesson7_hw/utils/app_images.dart';

class HomeItems {
  String image;
  String firm;
  String coast;
  bool isLike;

  HomeItems(
      {required this.image,
      required this.firm,
      required this.coast,
      required this.isLike});

  static List<HomeItems> homeItems = [
    HomeItems(
        image: AppImages.nikeBrand_1,
        firm: "Nike Sportswear Club \nFleece",
        coast: "99\$",
        isLike: false),
    HomeItems(
        image: AppImages.nikeBrand_2,
        firm: "Trail Running Jacket Nike \nWindrunner",
        coast: "80\$",
        isLike: false),
    HomeItems(
        image: AppImages.nikeBrand_3,
        firm: "Training Top \nNike Sport Clash",
        coast: "100\$",
        isLike: false),
    HomeItems(
        image: AppImages.nikeBrand_4,
        firm: "Trail Running Jacket Nike \nWindrunner",
        coast: "70\$",
        isLike: false),
    HomeItems(
        image: AppImages.nikeBrand_5,
        firm: "Training Top \nNike Sport Clash",
        coast: "90\$",
        isLike: false),
    HomeItems(
        image: AppImages.nikeBrand_6,
        firm: "Trail Running Jacket Nike \nWindrunner",
        coast: "85\$",
        isLike: false),
  ];
}
