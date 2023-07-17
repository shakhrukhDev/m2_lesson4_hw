import 'package:m2_lesson7_hw/utils/app_icons.dart';
import 'package:m2_lesson7_hw/utils/app_string.dart';

class BrandItems{
  String icons;
  String name;

  BrandItems({required this.icons,
      required this.name});

  static List<BrandItems> brandItems = [
    BrandItems(icons: AppIcons.adidasIcon, name: AppString.adidas),
    BrandItems(icons: AppIcons.nikeIcon, name: AppString.nike),
    BrandItems(icons: AppIcons.filaIcon, name: AppString.fila),
    BrandItems(icons: AppIcons.pumaIcon, name: AppString.puma),
  ];
}

