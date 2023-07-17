import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:m2_lesson7_hw/model/brand_item_model.dart';
import 'package:m2_lesson7_hw/utils/app_colors.dart';
import 'package:m2_lesson7_hw/utils/app_icons.dart';
import 'package:m2_lesson7_hw/utils/app_string.dart';

class BrandItemsWidget extends StatefulWidget {
  final BrandItems items;
  const BrandItemsWidget({Key? key, required this.items}) : super(key: key);

  @override
  State<BrandItemsWidget> createState() => _BrandItemsWidgetState();
}

class _BrandItemsWidgetState extends State<BrandItemsWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        width: 115,
        height: 50,
        decoration: BoxDecoration(
            color: AppColors.C_F5F6FA,
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: AppColors.C_FEFEFE,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(widget.items.icons)
                ),
              ),
            ),
            Text(
              widget.items.name,
              style: TextStyle(
                  color: AppColors.C_1D1E20,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal),
            ),
          ],
        ),
      ),
    );
  }
}
